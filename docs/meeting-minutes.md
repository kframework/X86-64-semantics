#### 2nd May 2016
---------------------
1. Fixed a issue with the previous implementation 
  - There is a difference in which gcc and clang generated there prologue and epilogue for each function.
    - clang generated binary	  
    ```llvm
    push   %rbp
    mov    %rsp,%rbp
    sub    $0x20,%rsp	// Allocation for local space
    ...
    add    $0x20,%rsp	// De-Allocation of local space
                          // At this point the rsp is pointing to the stack loc containing 
                          // previously pushed  rbp
    pop    %rbp		
    retq                  // pop the return address
    ```

    and corresponding mcsema generated llvm ir for last 2 instructions
    ```llvm
    %254 = load i64* %RSP_val
    %268 = inttoptr i64 %254 to i64*, !mcsema_real_eip !12  ;popq	%rbp
    %269 = load i64* %268, !mcsema_real_eip !12             ;popq	%rbp
    store i64 %269, i64* %RBP_val, !mcsema_real_eip !12     ;popq	%rbp
    %270 = add i64 %254, 16, !mcsema_real_eip !13           ;retq
    store i64 %270, i64* %RSP_val, !mcsema_real_eip !11     ;retq
    ```
    - gcc generated binary	  
    ```llvm
    push   %rbp
    mov    %rsp,%rbp
    sub    $0x20,%rsp	// Allocation for local space
    ...
    leaveq                // %rsp = %rbp; pop %rbp 
    retq                  // pop the return address
    ```
    and corresponding mcsema generated llvm ir for last 2 instructions
    ```
    %248 = load i64* %RBP_val, !mcsema_real_eip !10           ;leave
    store i64 %248, i64* %RSP_val, !mcsema_real_eip !10       ;leave
    %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10    ;leave
    %250 = load i64* %249, !mcsema_real_eip !10               ;leave
    store i64 %250, i64* %RBP_val, !mcsema_real_eip !10       ;leave
    %251 = add i64 %248, 16, !mcsema_real_eip !11             ;retq
    store i64 %251, i64* %RSP_val, !mcsema_real_eip !11       ;retq
    ```
  - The issue (explained next) is with the gcc generated binary and related to leave instrcution. 
  - In the previous implementation, before doing the global iterative dfa, 
  we determine the local (i.e. restricted to a bb) constant (i.e. does not
      depend on In/Out) Gen <actual_rsp, max_disp_rsp, actual_rbp,
  max_disp_rbp> as follows:

      ```
        Gen[bb]::actual_rsp = Actual displacement of esp across the bb with initial value of rsp/rbp assumed as 0.

        Gen[bb]::max_disp_rsp = max (Out[I]::max_disp_esp) for all I in bb.
        - correspondingly for rbp -
      ```  
  **Note Gen is calculated with initial value of rsp/rbp as 0.**

  - Consider the calculation of actual_esp component of Gen for an exit block (which will have the epilouge) for gcc generated binary

      ![Const Gen computation of exit node](fig_3.png)

  - The actual rsp calculation (which is supposed to be rsp = rbp; rsp += 16;) is wrong as we have not considered the fact that actual_rsp is dependent on the In::actual\_rbp. In other words, the calculation of Gen is not a local property, but dependent on the In.
  - So we modified the global dfa so that gen are calculated during the iterative global dfa.

#### 21 April 2016
---------------------
1. Testing the previous implementation with icc (clang and gcc are working fine) generated binary
  - icc generated binary gives error with external calls
2. Started on the implementation on converting accesses on global mcsema stack to 
  per function stack accesses.
3. Augment the automated testing with switches to generate binaries (to be consumed by mcsema) using different coppilers.
4. Planning to augment the automated testing with switches for different calling conventions


#### 14 April 2016
---------------------
1. Implemented a pass to "find the maximum stack height  growth"
  - A forward data flow analysis (dfa).
  - Each program point is associated with the following data flow value : {`actual_esp`, `actual_ebp`, `max_disp_esp`, `max_disp_ebp`} where
    - `actual_esp` ( or `actual_ebp`) =  Actual displacement of `%rsp` (or `%rbp`). For example, for a statement `sub $0x20,%rsp`, if `%esp` value is `x` before the statement, then  `actual_esp` becomes `x - 32` after it.
    - `max_disp_esp` ( or `max_disp_ebp)` =  Offset of the stack access w.r.t `%rsp` (or `%rbp`). For example, for a statement `mov -0x4(%rsp),%esi`, if `%esp` value is `x` before the statement, then `max_disp_esp` becomes `x-4` after it.
    - Note: Both `actual_esp` and `max_disp_esp` need to be separately tracked. 
      - Problem with having only `actual_esp`

      ```llvm
        sub $0x8,%rsp
        mov -0xc(rsp), %edi ;actual_esp = -8, but   max stack height = -0xc - Ox8
      ```
      - Problem with having only `max_disp_esp` (in negative direction)

      ```llvm
        sub $0x8,%rsp
        sub $0xc,%rsp  ;max_disp_esp = -0xc, but  max stack height = -0x14
      ``` 
      - Also just adding the offsets will not do.

      ```llvm
        mov -0x8(rsp), %edi
        sub $0xc, %rsp        ;Adding the constants gives max stack height as 0x14, but its actually -0xc. 
      ```
  - Local dfa within a bb: Calculating `Gen[bb]`
    - Each instruction `I` (which may potentially affect rsp or rbp) within a bb is tracked to obtain the data flow values before, `In[I]` and after, `Out[I]`.
      [This example](fig_1.png) captures all kinds of instructions considered and how the data values are propagated from one instruction to other within a bb. The call instruction in the figure results in to ` %esp += 8` because it is assumed that the function is well formed with conventional prologue and epilogue and the only change that can happen to `%esp` is pop of return address.
    - After the data value propagation, Gen[bb] is computed as follows:
      
      ```
        Gen[bb]::actual_esp = Actual displacement of esp across the bb with initial value of rsp/rbp assumed as 0.
        Gen[bb]::max_disp_esp = max (Out[I]::max_disp_esp) for all I in bb.
      ```  
    - In the running example, `Gen[bb] = { 8, -64, 0, 0}`                                   

  - Global dfa: Calculating `In[bb]` and `Out[bb]` 
    - Meet operator: Calculating `In[bb]` as a function of `Out[pped_bb]`,

    ```javascript
      //For any pair of predecessor pred_bb_x and pred_bb_y
      if ( Out[pred_bb_x]::actual_esp == OUT[pred_bb_y]::actual_esp &&  
          OUT[pred_bb_x]::actual_ebp == OUT[pred_bb_y]::actual_ebp) {
        In[bb]::actual_esp  = Out[pred_bb_x]::actual_esp;
        In[bb]::actual_ebp  = Out[pred_bb_x]::actual_ebp;
        In[bb]::max_disp_esp  = min ( OUT[pred_bb_x]::max_disp_esp, OUT[pred_bb_y]::max_disp_esp)
        In[bb]::max_disp_ebp  = min ( OUT[pred_bb_x]::max_disp_ebp, OUT[pred_bb_y]::max_disp_ebp)
      } else {
        In[bb] = Bottom
      }
    ```
    - The value `Bottom` (no useful information) is for the cases where the `%esp` or `%ebp` is *updated* differently in control flow paths before the join. This is going to solve two scenarios

      - Consider two branches of a conditional statement; in both of them
      `%esp` is updated differently and then an ancestor variable is accessed .
      Now if we choose  height = max of `%esp` updates, and use it to deconstruct
      the global stack to local stack frame, then in case of indirect access it
      will not be possible to put a static check to distinguish which stack
      frame the access belongs to.
      - If in the while loop body `%esp` is updated, then it is not statically possible
      to figure out the value of stack height and we get `Bottom` in that scenario
      as well.
    
    - Transfer function: Calculating `Out[bb]` as a function of `Gen[bb]` and `In[bb]`
    
      ```javascript
      if(In[bb] == Bottom) {
        Out[bb] =  Bottom;
      } else {
        Out[bb]::actual_esp = In[bb]::actual_esp + Gen[bb]::actual_esp;
        Out[bb]::actual_ebp = In[bb]::actual_ebp + Gen[bb]::actual_ebp;
        Out[bb]::max_disp_esp = min ( In[bb]::actual_esp + Gen[bb]::max_disp_esp, In[bb]::max_disp_esp;
        Out[bb]::max_disp_ebp = min ( In[bb]::actual_ebp + Gen[bb]::max_disp_ebp, In[bb]::max_disp_ebp;
      }
      ```
      - A `Bottom` in `In` or `Out` prevents deconstruction of stack frames. During testing we do **NOT** get any cases with `Bottom` appering in `In` or `Out`.
      
    - [This example] (https://github.com/sdasgup3/binary-decompilation/blob/master/source/test/max-stack-height/test_5/cfg.png) shows two cfgs corresponding to main (bigger one) and draw routines of [maze
    program](https://github.com/sdasgup3/binary-decompilation/blob/master/source/test/max-stack-height/test_5/test_5.c)
    with the following interpretation ( Note: _The reported  `In[bb]`, `Gen[bb]` and `Out[bb]` are fixedpoint values_ )  

      ![Node of a cfg](fig_2.png)

  - Max stack height of function F

    ```javascript
      max ( Out[bb]::max_disp_esp, Out[bb]::max_disp_esp ) for  all bb.  
    ```

2. Tested the implementation.
  - A [testsuite] (../source/test/max-stack-height/) is incrementally created. 
    - Added 25 test cases including all the demo testcases with which mcsema is tested.
    - In **none** of cases, the value `Bottom` is reached.
    - Each test case folder contains a png file, showing the cfg and associaed fixed point values of `In`, `Gen` and `Out`. [This example] (https://github.com/sdasgup3/binary-decompilation/blob/master/source/test/max-stack-height/test_24/cfg.png) shows one of the complex cfgs handled.


#### 7 March 2016 
-------------
* variable recovery algorithm 
  1. Deconstruct the monolithic stack that mcsema uses into local stack for each procedure.
    - Use a data flow analysis to identify the max stack height of each procedure. Its OK to have the 
 a variable expresion for max stack height. 
    - Allocate an array of "max stack height" right at the beginnig of each procedure.
  2. For each procedure, convert the accesses on that monolithic stack into accesses on the local stack.
  3. For each procedure, identify the abstract locations on its local stack corresponding to recovered variable.
  4. Promote the abstract locations into variables. 


##### Step 1-2
Consider the source code,
```
int main(){ 
  int z; 
  z = foo(10,20); 
  return z;
} 

int foo(int a, int b) { 
  int temp1; 
  temp1 = a+b; 
  return temp3;
}
```

In the mcsema recovered IR, all the 
stack memory acceses are going on a monolithic array r.RSP. 

```
int main(struct regcntx r){ 
  r.RSP = r.RSP-2; //Local Allocation
  
  r.RSP[1] = 20; //Outgoing argument 
  r.RSP[0] = 10; 
  
  int llvm_tmp_3 = rewritten_foo(r); 
  return llvm_tmp3;
}

int rewritten_foo(struct regcntx r) {
  int* llvm_EBP = r.RSP; //Local Frame Pointer
  llvm_RSP = llvm_RSP-10; //Local Allocation

  int tmpIn1 = llvm_EBP[0]; //Incoming Arg 
  int tmpIn2 = llvm_EBP[1];

  int llvm_tmp2 = tmpIn1+tmpIn2; 
  llvm_RSP[2] = llvm_tmp2;

  return llvm_tmp2;
}

```

The first step is localize the monolithic array
to each procedure.

```
int main(struct regcntx r){ 
  int LOCAL\_FRAME[MAX\_MAIN];
  
  LOCAL_FRAME[0] = 20; //Outgoing argument 
  LOCAL_FRAME[1] = 10; //Outgoing argument 

  int temp1 = LOCAL_FRAME[0];
  int temp2 = LOCAL_FRAME[1];
  
  int temp3 = rewritten_foo(temp1, temp2); 
  return temp3;
}

int rewritten_foo(int arg1, int arg2) {
  int LOCAL_FRAME[MAX_FOO];


  int temp = tmpIn1+tmpIn2; 
  LOCAL_FRAME[0] = temp;

  return temp;
}

```

###### Challenges
![image](Figs/2.png)

##### Step 3-4
##### Symbol promotion

![image](Figs/3.png)
