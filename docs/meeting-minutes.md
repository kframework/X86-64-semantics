#### 21 April 2015
---------------------
1. Testing the previous implementation with icc (clang and gcc are working fine) generated binary
  - icc generated binary gives error with external calls
2. Started on the implementation on converting accesses on global mcsema stack to 
  per function stack accesses.


#### 14 April 2015
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
