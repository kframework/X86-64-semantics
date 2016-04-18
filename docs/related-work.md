<!--##Usefulness
- Use of untrusted commercial of the self components. Either they could be 
malicious or forced to perform malicious.
- There exists a already available rich set of bug detection, security 
vulnerability analyses for the source code that could be
applied to the IR obtained by the reverse engineering of executable of which 
no source code is available. 
- In the source code, like a: x = ...; b: ... = x, that a defines x which is 
used by b. But in executable
  the memory accesses are either using directly ( using absolute address) or 
  indirect (base+ index*scale+ offset, where base index are registers]
      In such scenario, dependence analysis of the previous kind is not clear.
- Debugging info cannot be trusted
  - In a malicious code, the debugging info can also be malicious
- Variable recovery makes code inspection easier for hacker, anti-virus teams. 
-->
## Approaches
### IDAPro
####Working
IDAPro’s algorithm is based on the observation that accesses to global variables appear as “[absolute_address]”, and accesses to local variables appear as “[esp +/- offset]”  in the executable. 

####Limitations
  - Does not take into account accesses to fields of structures, elements of arrays, and variables that are only accessed through pointers, because these accesses do not fall into any of the patterns that IDAPro considers.  
  - Fails to provide any information about the fields ofheap-allocated objects
  
####Examples
- Example 1
```
  typedef struct { int x, y;
  } Point;

  int main() { 
    Point p, *pp; 
    pp = &p; 
    pp->x = 1; 
    pp->y = 2; 
    return 0;
  } 
  
  proc main
  1 mov ebp, esp 
  2 sub esp, 12       //  ebp - 12 :pp, ebp - 8 :p.x, ebp - 4:p.y 
  3 lea eax, [ebp-8] 
  4 mov [ebp-12], eax //  pp = &p
  5 mov [eax], 1      //  p.x = 1  
  6 mov [eax+4], 2    //  p.y = 2
  7 mov eax, 0 
  8 add esp, 12 
  9 retn
```
  - The offset -8 in AR main corresponds to var_8 (8 bytes) and offset -12 in AR 
  main corresponds to var_12 (4 bytes).
  - Groups the two fields of p together into a single variable (var_8) because it does 
  not take into consideration the indirect memory operand [eax+4] in instruction 

- Example 2
  ```
  typedef struct {
    int x,y;
  } Point;

  int main(){
    int i;
    Point p[5];
    for(i=0;i<5;++i) {
      p[i].x = 1;   //var_40 or var_36
      p[i].y = 2;
    }
    return p[0].y; // var_36
  }

  0 mov ebp,esp
  1 sub esp,40
  2 mov ecx,0 3 lea eax,[ebp-40]
  L1: mov [eax], 1
  5 mov [eax+4],2
  6 add eax, 8
  7 inc ecx
  8 cmp ecx, 5
  9 jl L1
  10 mov eax,[ebp-36]
  11 add esp,40
  12 ret
  ```
  - The offset -40(p[0].x) in AR main corresponds to var_40 (4 bytes) and offset 
  -36 (p[0].y) in AR main corresponds to var_36 (36 bytes).
  - Does the write to memory at instruction L1 affect the read from memory at 
  instruction 10? Ideally No, but the naive approach fails to recognize that.
    - The variables that are possibly killed at L1 are {var_40, var_36}, and the 
variable used at 10 is var_36. Therefore, the data-dependence analyzer reports 
that the write to memory at L1 might affect the read at 10. (This is sound, but 
    imprecise.)


### Divine
####Working  
 - Partition the address space of the exec into memory partitions. 
   - (1) global-regions, for memory locations that hold global data, 
   - (2) AR-regions, each of which contains the locations of the ARs of a 
   particular procedure, and 
   - (3) malloc-regions, each of which contains the locations allocated at a 
   particular malloc site. 
 - The goals is to subdivide the memory regions into variable like entities 
 (aLocs), which "can be" variables in the extracted IR. 
 - uses VSA (flow-sensitive, context-sensitive, inter procedural) which  is a combined numeric-analysis 
 and pointer-analysis algorithm that determines an over-approximation of the set 
 of numeric values or addresses that each register and  memory locations holds 
 at each program point.
  - Suppose that n is the number of memory-regions in the executable. A 
  value-set is an n-tuple of strided intervals of the form s[l,u], with each 
  component of the tuple representing the set of addresses in the corresponding 
  region.
 - To track the contents of memory locations, the initial run of VSA uses the 
 variables recovered via the IDAPro approach.
 - Then do VSA on regs and identified aLoc.
 - Do Aggregate structure identification, to break aggregate into smaller parts 
 depending on how it is accessed by the program. The smaller parts are called atoms.
 We use the atoms obtained from ASI as a-locs for (re-)analyzing the executable using VSA. 
 - Do cycles of VSA and ASI till nothing improves

####Examples
  -
```
  typedef struct { int x, y;
  } Point;

  int main(){ 
    Point p, *pp; 
    pp = &p; 
    pp->x = 1; 
    pp->y = 2; 
    return 0;
  } 
  
  proc main
  1 mov ebp, esp 
  2 sub esp, 12                 //  ebp - 12 :pp, ebp - 8 :p.x, ebp - 4:p.y 
  3 lea eax, [ebp-8] 
  4 mov [ebp-12], eax           //  pp = &p
  5 mov [eax], 1                //  p.x = 1  
  6 mov [eax+4], 2              //  p.y = 2
  7 mov eax, 0 
  8 add esp, 12 
  9 retn
```
  - The offset -8 in AR main (line 3) corresponds to var_8 (8 bytes) and offset -12 in AR 
  main (line 4) corresponds to var_12 (4 bytes).
  - The VS of eax (at line 6) = (⊥, 0[-8,-8]), which means that eax holds the offset −8 in
  the AR-region of main. Using this information, we can conclude that [eax+4] refers to offset −4  ( i.e. p.y) in the AR of main.
  - Because value-sets are only capable of representing a set of 4-byte addresses  and 4-byte values, VSA recovers no useful information for var_8. 
  - Apply ASI (using data-access patterns provided by VSA): var_8  got split into 
    two 4-byte a-locs, namely, var_8.0 and var_8.4. 
  - Apply VSA (including the newly identified alocs):  
    VSA would determine that var 8.0 (i.e., p.x) has the value 1 and var 8.4 
    (i.e., p.y) has the value 2 at the end of main                                                  
  - 
  ```
  typedef struct {
    int x,y;
  } Point;

  int main(){
    int i;
    Point p[5];
    for(i=0;i<5;++i) {
      p[i].x = 1;
      p[i].y = 2;
    }
    return p[0].y;
  }

  0 mov ebp,esp
  1 sub esp,40
  2 mov ecx,0 
  3 lea eax,[ebp-40]
  L1: mov [eax], 1
  5 mov [eax+4],2
  6 add eax, 8
  7 inc ecx
  8 cmp ecx, 5
  9 jl L1
  10 mov eax,[ebp-36]
  11 add esp,40
  12 ret
  ```
  
  - The offset -40(p[0].x) in AR main (line 3) corresponds to var_40 (4 bytes) and offset 
  -36 (p[0].y) in AR main (line 10) corresponds to var_36 (36 bytes).
  - value-set of eax at program point L1 is (⊥, 8[−40,−8]), which means that
    eax holds the offsets{−40,−32, . . . ,−8} in the AR-region of main. (These offsets are the starting addresses of field x of elements of array p.)
  - Does the write to memory at instruction L1 affect the read from memory at instruction 10? Ideally no.
    - The kill offsets at L1: {−40,−32, . . . ,−8} and the use offset at 10 {-36}. They are Disjoint.

####Limitation    
- 
```
  main() {
    int A[10], i, x;
    x = read-from-file();
    for (i = 0; i < x; i++) {
      A[i] = 10;
    }
  }

main:
1. subl $48, %esp
2. %ebx = read_from_file
3. mov %ebx, 44(%esp)       //Initializing x
4. movl $0, 40(%esp)        //Initializing i
5. jmp L2                   // jump to condition check
  L3:
6. movl  40(%esp), %eax     //load i
7. movl $10, (%esp,%eax,4)  //Reference A[i]
8. addl $1, 40(%esp)        //Increment i
  L2:
9. cmpl 40(%esp), 44(%esp) //compare x and i
10. jl L3
```
  - stack frame for main(): size 48 bytes (10*4 bytes for array A[], and 4×2 = 8 bytes for the scalars i and x). 
  - The accesses to variables i and x appear as direct memory references (Lines 3,4,6,9) while the array A is accessed using an indirect memory reference (Line 7). 
  - Memory locations (esp+44)(x) and (esp+40)(i) are identified as variables based on the direct references. Since the upper bound for the indirect reference to A[i] is statically indeterminable, Divine does not generate any useful information about this access. Hence, it creates three abstract locations - two
scalars of 4 bytes each, and a leftover range of 40 bytes.
  - Despite dividing stack memory region into three abstract locations, none of them can be promoted to symbols because it the indirect reference at Line 7 may  alias with references to i or x. 

<!--## Challenges in IR recovery

The problem is undecidable



To ponder:
Second write is also emitting LLVM IR
-->

### Second write (x86 binary code to LLVM IR)
####Working  
- Able  to recongize the FP stack variables.
- Identify all the register allocated variables used as function arguments and returns.
  - Algorithm initially have all registers as arguments, and then remove those which are not really used(like the callee saved ones). For returns, they start the algorithm by adding all registers that are written to inside of a function or one of its callees, we then remove the ones which are unused at call sites. 
- For recognizing memory arguments, a variant of Divine algorithm is used.
- According to the paper,  Divine problem is that it is not scalable and takes very long time in analyzing even small programs.
- Their claim is, "efficient variable detection and type recovery algorithms need not to depend on a sound pointer analysis. Unsound pointer analysis usually means incomplete points-to sets. As an example, if variable x points to y and z, an unsound pointer analysis might report x points to y only. Variable detection from executables is a best-effort analysis and nobody claims detecting 100% of the variables from executables. If they are going to miss some variables anyways because of the nature of the problem, then we can sacrifice the soundness of the analysis at the expense of losing some variable information – as losing variable z in the given example above, but with the gains of having a practical analysis that scales well for large executables."
- Best effort static variable recovery
  -   Like Divine, they identify 3 base memory regions (stack, globals and heap). Also have the concept of Alocs (An ALoc contains an offset inside a base memory region and a size representing the variable size.)
  - store instruction: New Alocs will be created as the point-to sets of the ALocs pointed to by the pointer operand will be union's with the point-to set of the value stored. 
  - load instruction: A load will set the loaded value points-to set to whatever is pointed to by the pointer operand and in the process new Alocs will be created. 
  - pointer arithmetic:
    - Adding a constant to a pointer is a hint about the existence of a structure where the pointer address is the start address, and the constant represents one field offset inside the structure. We use this hint and declare a structure identified by the starting address and the last member offset. 
    - Adding a non-constant value is an indication that an array exists. An array will be declared in this case. 
- Data type recovery on recovered variables
  - For Known external function calls like standard C/C++ library calls, set the types of actual arguments passed to be the same as the known argument types from the prototypes and the same thing for the return value. 
  - Arithmetic operations with non-pointers: in this case the type is deduced from the semantics of the operation itself whether it is an integer or a floating point operation 
- Results (spec2006 benchmark)
  - An average of 86% of the variables are matched to the debugging information. They run this experiment on programs ranging from 2,149 instructions (mcf) to 934,292 instructions (gcc). DIVINE  reports an average of 88% matched variables on programs ranging between 252 to 5,371 instructions. This shows that their schemes has comparable accuracy to DIVINE but on much bigger benchmarks.
  - The results shows that analysis scales linearly with program size for larger binaries and  is 352X faster than DIVINE on average. 

###TIE (BAP raises binary to BIL on which all analysis happens)  
####Working
  - Variable recovery
    - Strategy similar to Divine.
    - They allow for VSA to include any combination of scalar variables in their SSA form. This leads to more accurate results in their experiments.
  ```
  int part1Value=0; int part2Value=1;
  int main() { 
    int *part1,*part2;
    int a[10],*p array0; int i;

    part1=&a[0]; 
    p array0=part1; 
    part2=&a[5];

    for(i=0;i<5;++i) { 
      *part1=part1Value; 
      *part2=part2Value; 
      part1++; 
      part2++;
    } 
    return *p array0 ; 
  } 

  proc main ; 
  1 sub esp, 44       ;Adjust esp for locals
  2 lea eax, [esp+4]  ;part1=&a[0] 
  3 lea ebx, [esp+24] ;part2=&a[5] 
  4 mov [esp+0], eax  ;p_array0=part1 
  5 mov ecx, 0        ;i=0
  L1: mov edx, [4]    ;
  7 mov [eax], edx    ;*part1=part1Value
  8 mov edx, [8]      ;
  9 mov [ebx], edx    ;*part2=part2Value 
  10 add eax, 4       ;part1++
  11 add ebx, 4       ;part2++
  12 inc ecx          ;i++
  13 cmp ecx, 5       ;
  14 jl L1            ;(i<5)?loop:exit
  15 mov edi,[esp+0]  ; 
  16 mov eax, [edi]   ;set return value
  17 add esp, 44      ;
  18 retn             ;return *p array0
  ```
  - In the global memory region, two two a-locs (each for a global) :mem_4(for addresses4..7)and mem_8(for addresses8..11).
  - In AR main, alocs are : var\_44(4 bytes), var\_40(20 bytes), and var_20(20 bytes). This is based on offsets -44, -40 and -20 at lines 1, 2, 3 resp. 
  - Note that var\_44 corresponds to all of the source-code variable p_array0. var\_40 and var_20 correspond 
  to disjoint segments of array a[]: var\_40 corresponds to a[0..4]; var_20 corresponds to a[5..9].
  - The fixpoint solution of VSA for instruction 7 for eax is {(⊥, 4[0,∞] − 40)}. Similarly the solution of ebx at 9 is 
  non having any finite upper bound. At instruction 14, eax, esp, and ecx are all related by the affine relation eax =(esp+4×ecx)+4, where the value
  set of ecx and esp at L1 are ([0, 4],⊥) and (⊥,−44) resp. Using these value-sets and solving for eax = (⊥, 4[0, 4]−40).

  - Type reconstruction
    - Assign each program variable a type var t.
    - TIE generates constraints on the type variables based upon how the variable is used, e.g., if a variable is used as part of signed division , we add the constraint that  t must be a signed type. One of our main contributions is that the constraint system can be solved and lead to accurate and conservative results.
