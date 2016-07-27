### 27 Jul 2016
- Question 1
  In reference to this particular paper, is variable recovery included in this type inference ? Or the variables (like scalar and aggregate variables) are already recovered before this particular type inference kicks in ? Or variable recovery is irrelevant  in the context of this paper,  because this paper only talks about inferring the type of stack offsets?
  
  From the constraints generated (as given in Figure 2), it seems that some constraints considers the offset information of the  fields of  a structure (w.r.t the procedure's base pointer ), which after solving is going to help in knowing the type of the those fields. But it is not obvious to me if this particular paper is doing any kind of "structure variable" recovery using those offset information ? 

  More specifically, In figure 2 of the paper, we can see the following constraints corresponding to instructions mov eax ,dword [edx]  and mov eax ,dword [edx + 4] respectively.
  ```
  >  τ.load.σ32@0 <: τ 
  > τ.load.σ32@4 <: int ∧#FileDescriptor
  ```
  
  Are these constraints  also used to infer a "structure variable" with two fields at offset 0 and 4? Or its is used just to infer the type of the variables at offsets 0 and 4 from the base pointer of the procedure?

- Question2

  This question is  related to my previous question.

  As you  mentioned  that you do not need any pointer analysis information to infer that x has a the type struct S { struct S *, ...}*. I believe that the way you achieve this is by adding a new  constraint for each instruction corresponding to the access of the fields of x and solving them later. (Please correct me if I am wrong here).  If this is correct, then doesn't that mean that you  already have the information that x is a struct (but of course without the type information of its fields) before starting this type inference?

#### 07th June 2016
1. Review of "Polymorphic type inference for machine code"
  
  ```
  The mean distance to the true type was 0.54 for Retypd, compared to 1.15 for dynamic TIE, 1.53 for REWARDS, 
  1.58 for static TIE, and 1.70 for SecondWrite. The mean interval size shrunk to 1.2 with Re- typd, compared to 1.7 for SecondWrite and 2.0 for TIE.
  ```
  
  ```
  ElWazeer et al. [8] also in- troduced a multi-level pointer accuracy rate, which attempts to quantify how many “levels” of pointers were correctly in- ferred. On SecondWrite’s benchmark suite Retypd attained a mean multi-level pointer accuracy of 91%, compared with SecondWrite’s reported 73%. Across all benchmarks, Re- typd averages 88% pointer accuracy.
  ```
  
  ```
  SecondWrite’s overall conservativeness is 96%, measured on a subset of the SPEC2006 benchmarks; Retypd attained a slightly lower 94% on this subset.
  ```
2. Retyped uses subtyping based type inference as opposed to unificatiion based in Second write. And it seems that that is what gives all the better performance numbers 
3. This paper does  not seem to do any kind of variable recovery. They quote in page 5, second column , last but one para:
  
  ```
  These rules ensure that Retypd can perform “iterative
variable recovery”; lack of iterative variable recovery was cited by the authors of the Phoenix decompiler [27] as a common cause of incorrect decompilation when using TIE [15] for type recovery.
  ```
4. From Second write paper:
  
```
Integrating our variable identification system with type recovery makes the type 
recovery simpler because it will need only recover scalar types like integers, floats and doubles. 
Structures and arrays are detected as part of the variable identification. 
```
![Second write typing rules](Figs/4.png) from [paper](papers/second_write_pldi_13.pdf) 

```
For the other operations in the table, we propagate the types using the function unifyType. 
This function attempts to set the data type of all the given symbols andALocs to be the same.
At least one of the symbols or the ALocs given to that function should be typed. Whenever this 
function finds conflicting types, it gives up and does not update any types. It is used for copy 
operations like type casts and phi nodes. It is also used to propagate types through memory as shown 
in the rules for stores and loads. Interprocedural information is propagated by unifying the formal and 
actual arguments types at a call instruction. The return value data type at the call site is unified 
with all the data types of all return values appearing in the return statements inside the called function body.
```



#### 16th May 2016
1. Handling  "Arguments passed to callee using parent stack frame"
  - The call instrutions (to mcsema generated functions) are modified to add caller stack frame as an extra argument. **DONE** [commit](https://github.com/sdasgup3/binary-decompilation/commit/9e88a03c60b2fcd856e732f993d5e4c1ab09d165)
  - Planning to add checks after add instrutions to rsp and rbp such that if the access if beyond the current stack frame (in the positive) 
    direction, then access the parent stack frame to access the argument. **WIP**

#### 10th May 2016
1. Implemented and tested a basic [pass](https://gitlab-beta.engr.illinois.edu/llvm/binary-decompilation/commit/d93134557d37e3f48b8100768f82392c797ad7ca) which maps the access w.r.t to the global stack
(provided by mcsema register context) to local stack per procedure.
  - This is a transform pass on the mcsema generated llvm ir. 
  - This is done by replacing the following instructions in each procedure
  
  ``` llvm
    %RSP_val = alloca i64, !mcsema_real_eip !2 

    %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2 ; Reading the register context to get the stack pointer
    %7 = load i64* %RSP, !mcsema_real_eip !2

    store i64 %7, i64* %RSP_val, !mcsema_real_eip !2  ; Storing the stack pointer in the local variable %RSP_val
    ; All subsequesnt computations are using %RSP_val
  ```

  by

  ``` llvm
    %RSP_val = alloca i64, !mcsema_real_eip !2

    ; Following two are dead instructions
    %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2 ; 
    %7 = load i64* %RSP, !mcsema_real_eip !2

    %_local_stack_alloc_ = alloca [32 x i64]   ; The stack height 32 is determined by a previous dfa pass    ; Newly inserted
    %_local_stack_gep_ = getelementptr inbounds [32 x i64]* %_local_stack_alloc_, i32 0, i32 0  ; Newly inserted
    %_local_stack_P2I_ = ptrtoint i64* %_local_stack_gep_ to i64                                ; Newly inserted
    store i64 %_local_stack_P2I_, i64* %RSP_val                                                 ; Newly inserted
    ; All subsequesnt computations are using %RSP_val
  ```
2. Limitation: Arguments passed to callee using parent stack frame are not handled yet. 
  - Planning to pass the parent proc's local stack as an argument to callee so that callee can access them.


#### 2nd May 2016
---------------------
1. Fixed a issue with the previous implementation 
    - There is a difference in which gcc and clang generated there prologue and epilogue for each function.
        - clang generated binary	  
        
        ```llvm
        //prologue
        push   %rbp
        mov    %rsp,%rbp
        sub    $0x20,%rsp	    // Allocation for local space
        ...
        //epilogue
        add    $0x20,%rsp	    // De-Allocation of local space
                                // At this point the rsp is pointing to the stack loc containing 
                                // previously pushed  rbp
        pop    %rbp		
        retq                    // pop the return address
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
        //prologue
        push   %rbp
        mov    %rsp,%rbp
        sub    $0x20,%rsp	// Allocation for local space
        ...
        //epilogue
        leaveq                // %rsp = %rbp; pop %rbp 
        retq                  // pop the return address
        ```
        and corresponding mcsema generated llvm ir for last 2 instructions

        ```llvm
        %248 = load i64* %RBP_val, !mcsema_real_eip !10           ;leave
        store i64 %248, i64* %RSP_val, !mcsema_real_eip !10       ;leave
        %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10    ;leave
        %250 = load i64* %249, !mcsema_real_eip !10               ;leave
        store i64 %250, i64* %RBP_val, !mcsema_real_eip !10       ;leave
        %251 = add i64 %248, 16, !mcsema_real_eip !11             ;retq
        store i64 %251, i64* %RSP_val, !mcsema_real_eip !11       ;retq
        ```
    - The issue (explained next) is with the gcc generated binary and related to leave instrcution. 
    - In the previous implementation, before doing the global iterative dfa, we determine the local (i.e. restricted to a bb) constant (i.e. does not depend on In/Out) Gen <actual_rsp, max_disp_rsp, actual_rbp, max_disp_rbp> as follows:

        ```
        Gen[bb]::actual_rsp = Actual displacement of rsp across the bb with initial value of rsp/rbp assumed as 0.

        Gen[bb]::max_disp_rsp = max (Out[I]::max_disp_rsp) for all I in bb.
        - correspondingly for rbp -
        ```  
        
        **Note Gen is calculated with initial value of rsp/rbp as 0.**
    - Consider the calculation of actual_rsp component of Gen for an exit block (which will have the epilouge) for gcc generated binary
        -   ![Const Gen computation of exit node](fig_3.png)
    - The actual rsp calculation (which is supposed to be rsp = rbp; rsp += 16;) 
        is wrong as we have not considered the fact that actual_rsp is dependent on the In::actual\_rbp. 
        In other words, the calculation of Gen is not a local property, but
        dependent on the In.
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
  - Each program point is associated with the following data flow value : {`actual_rsp`, `actual_rbp`, `max_disp_rsp`, `max_disp_rbp`} where
    - `actual_rsp` ( or `actual_rbp`) =  Actual displacement of `%rsp` (or `%rbp`). For example, for a statement `sub $0x20,%rsp`, if `%rsp` value is `x` before the statement, then  `actual_rsp` becomes `x - 32` after it.
    - `max_disp_rsp` ( or `max_disp_rbp)` =  Offset of the stack access w.r.t `%rsp` (or `%rbp`). For example, for a statement `mov -0x4(%rsp),%esi`, if `%rsp` value is `x` before the statement, then `max_disp_rsp` becomes `x-4` after it.
    - Note: Both `actual_rsp` and `max_disp_rsp` need to be separately tracked. 
      - Problem with having only `actual_rsp`

      ```llvm
        sub $0x8,%rsp
        mov -0xc(rsp), %edi ;actual_rsp = -8, but   max stack height = -0xc - Ox8
      ```
      - Problem with having only `max_disp_rsp` (in negative direction)

      ```llvm
        sub $0x8,%rsp
        sub $0xc,%rsp  ;max_disp_rsp = -0xc, but  max stack height = -0x14
      ``` 
      - Also just adding the offsets will not do.

      ```llvm
        mov -0x8(rsp), %edi
        sub $0xc, %rsp        ;Adding the constants gives max stack height as 0x14, but its actually -0xc. 
      ```
  - Local dfa within a bb: Calculating `Gen[bb]`
    - Each instruction `I` (which may potentially affect rsp or rbp) within a bb is tracked to obtain the data flow values before, `In[I]` and after, `Out[I]`.
      [This example](fig_1.png) captures all kinds of instructions considered and how the data values are propagated from one instruction to other within a bb. The call instruction in the figure results in to ` %rsp += 8` because it is assumed that the function is well formed with conventional prologue and epilogue and the only change that can happen to `%esp` is pop of return address.
    - After the data value propagation, Gen[bb] is computed as follows:
      
      ```
        Gen[bb]::actual_rsp = Actual displacement of rsp across the bb with initial value of rsp/rbp assumed as 0.
        Gen[bb]::max_disp_rsp = max (Out[I]::max_disp_rsp) for all I in bb.
      ```  
    - In the running example, `Gen[bb] = { 8, -64, 0, 0}`                                   

  - Global dfa: Calculating `In[bb]` and `Out[bb]` 
    - Meet operator: Calculating `In[bb]` as a function of `Out[pped_bb]`,

    ```javascript
      //For any pair of predecessor pred_bb_x and pred_bb_y
      if ( Out[pred_bb_x]::actual_rsp == OUT[pred_bb_y]::actual_rsp &&  
          OUT[pred_bb_x]::actual_rbp == OUT[pred_bb_y]::actual_rbp) {
        In[bb]::actual_rsp  = Out[pred_bb_x]::actual_rsp;
        In[bb]::actual_rbp  = Out[pred_bb_x]::actual_rbp;
        In[bb]::max_disp_rsp  = min ( OUT[pred_bb_x]::max_disp_rsp, OUT[pred_bb_y]::max_disp_rsp)
        In[bb]::max_disp_rbp  = min ( OUT[pred_bb_x]::max_disp_rbp, OUT[pred_bb_y]::max_disp_rbp)
      } else {
        In[bb] = Bottom
      }
    ```
    - The value `Bottom` (no useful information) is for the cases where the `%rsp` or `%ebp` is *updated* differently in control flow paths before the join. This is going to solve two scenarios

      - Consider two branches of a conditional statement; in both of them
      `%rsp` is updated differently and then an ancestor variable is accessed .
      Now if we choose  height = max of `%rsp` updates, and use it to deconstruct
      the global stack to local stack frame, then in case of indirect access it
      will not be possible to put a static check to distinguish which stack
      frame the access belongs to.
      - If in the while loop body `%rsp` is updated, then it is not statically possible
      to figure out the value of stack height and we get `Bottom` in that scenario
      as well.
    
    - Transfer function: Calculating `Out[bb]` as a function of `Gen[bb]` and `In[bb]`
    
      ```javascript
      if(In[bb] == Bottom) {
        Out[bb] =  Bottom;
      } else {
        Out[bb]::actual_rsp = In[bb]::actual_rsp + Gen[bb]::actual_rsp;
        Out[bb]::actual_rbp = In[bb]::actual_rbp + Gen[bb]::actual_rbp;
        Out[bb]::max_disp_rsp = min ( In[bb]::actual_rsp + Gen[bb]::max_disp_rsp, In[bb]::max_disp_rsp;
        Out[bb]::max_disp_rbp = min ( In[bb]::actual_rbp + Gen[bb]::max_disp_rbp, In[bb]::max_disp_rbp;
      }
      ```
      - A `Bottom` in `In` or `Out` prevents deconstruction of stack frames. During testing we do **NOT** get any cases with `Bottom` appering in `In` or `Out`.
      
    - [This example] (https://github.com/sdasgup3/binary-decompilation/blob/master/source/test/max-stack-height/test_5/cfg.png) shows two cfgs corresponding to main (bigger one) and draw routines of [maze
    program](https://github.com/sdasgup3/binary-decompilation/blob/master/source/test/max-stack-height/test_5/test_5.c)
    with the following interpretation ( Note: _The reported  `In[bb]`, `Gen[bb]` and `Out[bb]` are fixedpoint values_ )  

      ![Node of a cfg](fig_2.png)

  - Max stack height of function F

    ```javascript
      max ( Out[bb]::max_disp_rsp, Out[bb]::max_disp_rsp ) for  all bb.  
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
