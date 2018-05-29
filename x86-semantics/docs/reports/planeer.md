## Important stoke function
 - specgen_is_base
 - List of system/imm instr
   - ~/Github/master_stoke/src/validator/strata_support.cc

## Todo

- For the following report to strata people
```
a - a != 0 as a cold be NaN
A +- 0 != A
0 + A != A
```
- vpbroadcastb_ymm_xmm simplification helps in getting rid of uifs ... talk about the simplificatiom lemma
  - checin all the formula and then do the simplification to find which one got optimized.
- Paper
  - Problem with secondary searhces in involving UIFs.
  - what about the baseInstructions: should we have our own or just take it from stoke
  - K better than strata because of the ease of testing uifs
  - Problem with secondary searches involving uifs.
  - Strata Vs K: For exapme as in pdepl/q we have to write the ast of the result state,where as in K we have to mention the executon semantic. Much easier.
  - In Strata, reg state of instruction containing undefs are never tested. In K we can test to check in the exec gets haleted when the undef values are used.
  - Talk about the manually written K formulas.
- Test the starta formula
  - Test the mutiple output instruction with same registers
- Fix af
  - Create a chart of how many are tested. Whats is the reason for not getting tested (undef). How many fails?
- Plan for implemnting the uifs
- Test the lemmas using rise for fun: like add_single(0||x, 0) == 0  Also write about  the importance of this lemma in simplification.
- Is the semantics of sal/shr/sar in base instr consistent with what we get from stoke.
- Undef
  - kompile: are undef represented correctly
    - For conditional undef they need to be inside experession.
  - Test shlq_r64_cl using strata handler : what is the bahaviour when the udef is triggered. also the z3 test didnt pass for OF. why: formulation of undef is wrong
  - Ensure that all the instructions obey if it has  a "must undef". Similarly if one has a "may undef" there must be a conditional undef present.
- Test the rules in K. Important for
  - rorate
  - manually implemented in K only
  - Test pdepl/q pextl/q
  - uifs including tag `UIF1`
  - Test the instruction with uifs in some of their regstate. Those are not tested in Strata. Check if the uifs are triggered at the right place.
- Test all the conditional undefs
- Implement "schedule insutcructions"
- There are many 'system instructions' that can be supported. like SHLD
- Check the of flag for the following as they lacks the undef part.
  ```

  sarb_r8_cl
sarb_rh_cl
sarl_r32_cl
sarq_r64_cl
sarw_r16_cl
shlb_r8_cl
shlb_rh_cl
shll_r32_cl
shlq_r64_cl
shlw_r16_cl
shrb_r8_cl
shrb_rh_cl
shrl_r32_cl
shrq_r64_cl
shrw_r16_cl
  ```

## Important Points
- Uses the tc same as the final strata tc
- Use the pattern in the stratified set to feed the search pool.
- instructions containing UIF are never testing in stoke whereas we can test it.
- Our implementation of semantics tested all the base instructions throughly
-  Individual imeediates formulas might have uifs but the generic formula could be very without them.

## base sets
- Base has ymm; Target has xmm
```
vmovaps_xmm_xmm
vmovupd_xmm_xmm
128<->64
vzeroall
vmovapd_xmm_xmm
vmovdqu_xmm_xmm
vminpd_ymm_ymm_ymm
vmovups_xmm_xmm
vmaxps_xmm_xmm_xmm
```

## Commands

```
/home/sdasgup3/Github/strata/stoke/bin/stoke debug verify  --config /home/sdasgup3/Github/strata/resources/conf-files/formal.conf --target ~/Junk/result.s   --rewrite  psllq_xmm_xmm.s  --testcases ~/Junk/testcases.tc --strategy hold_out --def_in "{ %xmm1 %xmm2 }" --live_out "{ %xmm1 }" --strata_path /home/sdasgup3/Github/strata-data/output-strata/circuits/ --functions /home/sdasgup3/Github/strata-data/output-strata/functions  --machine_output verify.json
```

```
/home/sdasgup3/Github/strata/stoke/bin/stoke debug verify --config /home/sdasgup3/Github/strata/resources/conf-files/formal.conf --target /home/sdasgup3/Github/strata-data/output-strata/instructions/vtestps_xmm_xmm/results/result-00007.s --rewrite /home/sdasgup3/Github/strata-data/output-strata/instructions/vtestps_xmm_xmm/results/result-00007.s --testcases /tmp/secondary-search800681012049701544/testcases.tc --strategy bounded --def_in "{ %xmm1 %xmm2 }" --live_out "{ %cf %pf %zf %sf %of }" --strata_path /home/sdasgup3/Github/strata-data/output-strata/circuits --functions /home/sdasgup3/Github/strata-data/output-strata/functions --machine_output verify.json
```

```
/home/sdasgup3/Github/strata/stoke/bin/specgen compare --circuit_dir /home/sdasgup3/Github/strata-data/output-strata/circuits --opcode vpaddd_ymm_ymm_ymm
```


## Stoke Queries
- How hold out testing is different from make test
- How to generate the meta json File
- Can we use some information from the meta json file to expediate an already stratified instructions.
- How the evaluate is called.
- Can we add base instr while strata is running
- The way I am running tools is as follows:
  - Add the targets in remaining_goals
  - Add the entire base set in success
  - initial_goal file does not matter
  - Redusing the number of success instructions: Is it useful.
  - continue just appends to the log files: Just not continue the search or verify wher it is left off.
  - Why the ones with UIF taking huge time and all the equiv classes are of length 1.
  - InitialSeatch Vs Secondary Search
  - Say instr 2 needs instr 1 for stratification. WIll they be fired symultaneoulsy !!
  - Can we get rid of initial search failure using a small but infired base set.
  - How cleanup help
  - How it knows that some runs are pending
  - Who populates the scores.json
  - How to instruct stoke search to always include one element of base set in the search.
  - How to avoid adding the v-version of
    ```
    add_opcode("vpsllvq", [] (SymBitVector a, SymBitVector b) {}
    ```
    Note that thei sopcode does not have a non v-version.
  - What is the criteria of stop geenrating any more seqs.
    - handleTaskResult in Driver.scala
  - What is secondary search with a goal.

## Known fixes
    - ADC 255 -> 1
    - nop -> inforegister ~> fetch
    - vmovdqa/vmovdqu
      - convToRegKeys(R1) |-> (MI676:MInt)
      - WHY???

## Issues
  - `InstructionFile.Base` wat is that
  - for imm8 instructions, we just use the base: Stoke.scala
  - ~~decb af problems~~
  - ~~read the read set with MI in erite set~~
  - ~~proper wrapping on M:>Bool~~
  - ~~XMM to Xmm~~
  - ~~cmov test~~
    - ~~Glitch~~
  - ~~remove regstate if the content is empty: x86_nop~~
  - check if the rule for nop requires inforregosters ~> fetch
  - Check why /home/sdasgup3/Github/strata-data/circuits/sarxq_r64_r64_r64 takes so long to posprocess
  - ~~Investigate SAL mask on mcsema~~
    - Investigate SAL mask bieidthwidth, can maskedvalue > bitwidth of register.... check the k defintion with the implementation in manual
  - ~~No Ri for opcode _cl~~
  - ~~when may =! must then make a good approx and check it~~
  - check why extractMInt not complain for other symbolic mints
  - ~~employ a validation lemma lke bitwidth(extractMInt(MI, 0, 8))~~
  - ~~non function / function require stuck~~
  - ~~runtime issue~~
  - ~~combine <-> split~~
  - ~~vaddpd xmm xmm xmm check if the 128-256 bits are modofied or zeroed.~~
  - ~~Inclusion of huge opcode list affects test runtime~~
  - same key : symbolic run Vs concrete run
  - ~~x86-xchgq_rax_r64.k~~
    - add explicit arg %rax
  - ~~OPt opportunities~~
    - ~~addpd_xmm_xmm~~
    - ~~movaps_xmm_xmm~~
    - ~~vmovapd~~
    - ~~xchgq %rcx, %rbx~~
    - ~~xchgq %rcx, %rax~~
    - ~~xchgq %rax, %rbx~~
    - ~~check move 2n to N implementation~~
      - check base instr with strata formula

## Important files
  - stoke/src/symstate/simplify.cc
  - ./src/validator/handlers/strata_handler.cc
  - src/sandbox/tables/unsupported.h"

# X86 semantics

  - Send J.R the code snippet to optimize
  - EFLAGS Vs RFLAGS
  - ~~Get the recusrion correct~~
  - ~~get the strata nuber depth~~
  - ~~get how to specialize~~
  - ~~check the run (sym ex)~~
  - ~~check how to generalize.~~
  - ~~why no path is required.~~
    - Get the full simplificaion list from stoke.
  - ~~Check problem with AF flag~~
    - The formulas that strata generates does not guarentee that the AF is correctly set
  - ~~Check how to speed up kprove~~
    - The former takes slightly lesser time.
  - ~~Have an alarm when mayset != mustset. Need to revisit.~~
  - ~~Check normal operation after loader/fetchExec change~~
  - Fix Read set clobbering
  - Fix undef
  - Fix## Related Work
  - [Rocksalt](https://github.com/gangtan/CPUmodels)
    - [Parser](https://github.com/gangtan/CPUmodels/blob/master/x86model/Model/X86Syntax.v)
  - [SaltShaker](https://github.com/uwplse/SaltShaker)
  - [Compcert](https://github.com/uwplse/SaltShaker)
  - [x86proved](https://github.com/nbenton/x86proved)
    - https://x86proved.codeplex.com/
    - Extend the model to cover more features of x86 e.g. instructions, floating point, 64-bit, SIMD, paging, multi-core
    - Improve the automation of proofs
    - Languages
  - [LLVM's backend X86 semantic table](http://lists.llvm.org/pipermail/llvm-dev/2014-August/076065.html)
  - [ACL2](https://github.com/acl2/acl2/tree/55a07dc8d9e8486c51f0c44374778a168cdcc877/books/projects/x86isa)
    - [x86isa Documentation](http://www.cs.utexas.edu/users/moore/acl2/manuals/current/manual/index-seo.php/ACL2____X86ISA?path=2876/21277/9926)
  - [The Semantics of x86 Multiprocessor Programs](http://www.cl.cam.ac.uk/~pes20/weakmemory/index3.html#IS)
  - [Include semantics for each instruction](https://github.com/intelxed/xed/issues/72)
  - ACL2: http://www.cs.utexas.edu/users/moore/acl2/manuals/current/manual/index-seo.php/X86ISA____IMPLEMENTED-OPCODES
  - https://alastairreid.github.io/specification_languages/: Last paragraph
    - getSize for pseudo vs actual instr.
    - pseuso instr are diff instr in syntac
    - the defn of psedo inst are modified.
    - Why _satrt is treated as instr
      - OPc OPR prevents _start to be treated as instr.


## Troubleshoot
  - Check the name of the function or the token, if the name mismatch happen the weird error may happen
    - For example, Defining combineNTo2N and using combineNto2N
  - Stuck rule
    - check the require
  - Check the sort name Rh vs RH
  - look for extractMInt as if need its 2 and 3rd arg to be concrete Int during kprove
  - Check if the config file contain the regstate initialized. This is required for running tests.
  - extractMask stucks if bitwidthmint is not defned for its args.

## Query to Strata
- why they didnt test the base formula
- https://github.com/StanfordPL/stoke/issues/752
- Who generates the function as they also seem to be stratified generated.
- How do u generate such small formulas
- In the excel sheet who gives the Properties.
- How to learn the read.write set of instrctions.
  - Are they stored. (Yes, in the excel sheet)
- Get a rough count of instructions. ~ 600
-  How the formula are stored in stoke as list of 86 instrs or an smt formula.
- How are you genering the formula from a seq of instructions.

-------------------------------------------------------------------

- Which insructions are in strata one/two/....
- What is in data-regs/functions: how are they created
- What is in data-regs/instructions : what they are meant for: To get the read-write set.
  - Why the count is not complete, are they autogenerated.
- In case we want to just use the learned formula, how we can get that from stoke.
  - Is there any equivalent to stoke debug citcuit
- What is strata_programs in stoke directorty
-
- ~~Where are the generalized formulas~~
    - The generalization is done to other registers and immediates,
- How to learn the formula for instructions with immediates which does not have a regiter variant and imm is more that 8 bits.
- Due to its stochastic nature and the large size of the x86-64
ISA, multiple runs of STOKE usually lead to distinct syn- thesized programs. Does that mean that different strata runs can give diffent formulas.
- Ask Theo: what are the limitations of existing work and the drft copy.
- Location od stoke home grown formulas.
- How to you find the manuals encoding based manual error.
- Are circuit formulas simplified.
- Generating write set of instr.
  - Does 3.4.1 hint towards that.
- ~~In circuit why we have many version of same instrcitions~~
  - There are te 256 varriants of imm instructions.

## Query to Others
- Ed: How to get the FP semantics in BAP
- Interpretations of doubts in papers
- Souper usage in reducing the formula size.

## Query

- Can't we write dont care inside execinstr
```
 /*@
    After  execution of last instrcution, no more fecthes.
  */
  rule <k> execinstr(OpC,OpR) ~> inforegisters ~> fetch => execinstr (OpC,OpR) ~> inforegisters ... </k>
    <nextLoc> PC  </nextLoc>
    <rip> PC </rip>

```
- ~~What is parsetoken?~~
- ~~multiple map writes at a time~~
- ~~How to run just the build not the tests~~
- ~~Directly using the generated prove print formula as rule~~
  - ~~Can we use the mixfix notation~~
    - Not yet ready
- ~~Fix popcount recursion!~~
  - ~~popcount should ret Int~~
  - ~~It has to be a normal rule~~
- ~~Do we need to remove the requires; Cant we create a new  formula using the /\BOOl in the requires of that formula.~~
  - Does not seem that straigforward
  - Without debig you will not get those bools; with debug you will get those but in a scatteres manner.
- ~~Writing lemma to optimize the symbolic execution results~~
  - ~~RUles for extracting bitwidth~~
    -  ~~Critical: missing SMTLib translation for bitwidthMInt~~
  - ~~rules for xor(MI, MI)~~
  - ~~addMInt(mi, 0)~~
  - ~~bitwidth(mi(W, I))~~
- ~~Dont remove if but add the else with errMInt~~
  - Dne, but those are not written to next rules.
- ~~:> what is this??~~
- ~~? when is this used?~~
- ~~How are files imported?~~
  - ~~While importing a module, why the requires file got imported~~
  - ~~Not actually imported~~
- Figure out where the new element is added to  a map or the map value need to be updated: Check if Theo maintains this
- ~~exectr we have 2 variants : registers and MINts~~
- ~~Schedule meeting~~
- ~~operateOnVector has two instances with diff operand list~~
  - ~~Should I mention Klabel~~
- Remove :Sort to avoid checks
- How the Imm size is determined and how it affects the operanr chozesn
- - syntax MInt ::= addListMInt(Int, List) [function]
    - addListMInt(I, MI1 MI2 Rest:List) Vs
    - addListMInt(I, ListItem(MI1) ListItem(MI2) Rest:List) Vs
- what is `@`
- ~~ExtractMInt == extractMask~~
- ~~GetBitfromreg/getbitfrommint == extractMInt~~
- ~~parseToToken~
- ~~Why label does not work~~
- ~~How the compilation work: first the modules are compiled before or after the imports~~
- ~~How to use ktest~~
- ~~how can we sy that a symbol has a special meaning~~
- ~~why MIntList ::= List{MInt, ""} not possible~~
- ~~notinrule autoReject~~
- ~~hook~~
- ~~where is saddMInt defined~~
- what is klabel
- ~~How to accept 0x3344 and 0x33445566 as 16 and 32 bit value~~
- ~~how to pass initial memory state as an argument to krun~~
- ~~How instrcutions are fetched~~
- ~~notin~~
  - ~~notBool (K in M)~~
- ~~Query~~
```
<objects>
     mem(loc(PC) |-> instr(OpC:OpCode, Ops:Operands, Size:Int) _:Map)
</objects>
```
- ~~How call is done~~
- ~~memory~~
- ~~bit precision of the registers~~
- ~~write a simple register only add programs with all its semantics~~
- ~~how to say that ebx is 32 bit bitcast of rbx~~
- ~~Fix the syntax~~
- ~~Learn Simple. Ask Question~~
- ~~Learn Vx86-semantics. Ask Questions.~~
- ~~How to make bf work.~~
- ~~Get hold of the base instrucions~~
```
We distinguish between the  two representations of an assembly language
program: (1) the assembly code obtained directly from a high-level program, say a C program and (2) a representation of the disassembled executable.
The former uses labels as an abstract representation of the memory addresses for both instructions (i.e. L1, L2) and data, whereas the later use absolute address.

We first focus on the later.
The input to our K tool  could be  K memory cell initialized with addresses of instruction/data.
This is not amenable for testing large programs

For that,
The input program to parse could be a  disassembled program  with instructions and data address specified and the parser will load the prhram into a K memory cell at the specified address.

Try to get an exhaustive list of instructions.
```

# Binary lifting
- ~~try out mcsema with remill~~
- Check the Ouput and try to check the opportunity to clean up using a custum pointer analysis.
- printf: PLT
  - https://stackoverflow.com/questions/39550402/what-parts-of-this-helloworld-assembly-code-are-essential-if-i-were-to-write-the
- ~~start _ main~~
  - How mcsema implements it
- ~~How Mcsema does rip update: What information is used for the purpose.~~
- Check if the struct.Reg has a aray base address passed as rsp.
- ~~SecondWrite stack promotion~~
```
1. L: Set of loads in P; {2,4,5} S: Set of stores in P {1,2}
2. DL: {2,4}
3. IL: {5}
4. DS: {3}
5. IS: {1}
6. P: {}
7. while DS != null || IS != null  do
8.    Part = {} AL= {}
9.    if DS != null then
10.      s = DS.begin;  add s to P.DirectAcc
11.   else
12.      s = IS.begin; add s to P.BeginSet

13.   add s to ActiveList;

14.    while ActiveList.size!=0 do
15.      s =ActiveList.top;  Add s to Processed
16.      for dl ∈ DL do
17.        if s ∈ in[dl] then
18.          add dl to P.DirectAcc;
19.          for s' ∈ in[dl] do
20.            add s’ toActiveList if s’/∈ Processed
21.          remove dl from DL
22.      if s ∈ IS then
23.        continue /* No need to store symbol back */
24.      for il ∈ {IL,IS} do
25.        if s ∈ in[il] then
26.          add il to P.EndSet
27.        for s? ∈ in[il] do
28.          add s’ toActiveList if s’/ ∈ Processed
29.        remove il from IL if il ∈ IL



1. store eax, 8[esp]
2. load 8[esp], edx
3. load ebx[esi],edx ……
4. store eax,ebx[esp]
5. load 8[esp], ecx
6. load ebx[esi],edx ….

```
- ~~How to assemblle and run a program~~
- ~~Read SW.~~
- ~~Why FP programs are failing~~
- ~~how the test_1 with floating point instructions work~~


# Time kills
  - make the blog font small
  - post limit to 3/4 per page
  - tag visible: play with karthik blog


## Notes

- In decompilation test
```
Revmg Dowm, Mcsema Up:  test_36 and test_22
Revmg Up, Mcsema D:  test_OOP
```

- Decision to move from
```
<regstate>
  "RAX" |-> (MI1 => MI2)
</regstate>
```
to
```
<regstate> RSMap => updateMap(RSMap,  "RAX" |-> (MI1 |-> MI2 )
</regstate>
```




Problem with first format
1. With

```
<regstate>...
  convToRegKeys(R1) |-> MI1
  convToRegKeys(R2) |-> (MI2 => expr(MI1, MI2))
...</regstate>
```
If R1 == R2 then we get the error on map concatenation with same keys.

Soluntion 1
```
<regstate>
  convToRegKeys(R2) |-> (MI2) RSMap:Map
  =>
  convToRegKeys(R2) |-> expr(MI2, getRegisterValue(R1, RSMap)) RSMap:Map
...</regstate>
```
Note that RSMap exclude key for R2
In case R1==R2
```
getRegisterValue(R1, RSMap) will not have the key for R1 == R2
```

So the idea is somehow we need the whole old map
Solution 2
```
<regstate>
RSMap => updateMap(RSMap,
    convToRegKeys(R2) |-> expr(getRegisterValue(R2), getRegisterValue(R1, RSMap))
    )
</regstate>
```

2. When R1 == R2 in and R1 is read only and R2 is write
```
<regstate>
  convToRegKeys(R1) |-> (MI1)
  convToRegKeys(R2) |-> (MI2 => expr(MI2, MI1))
</regstate>
```
we get the error on map concatenation with same keys
We need is that we need old values of registers (MI1, MI2) to be defined before they are to be used in rewrite rules

In the second format we get the old value as RSMap

3. When R1 != R2 in and R1  R2 are both written
```
<regstate>
  convToRegKeys(R1) |-> (MI1 => expr(MI1, MI2))
  convToRegKeys(R2) |-> (MI2 => expr(MI2, MI1))
</regstate>
```
Then both soln wil workList

2. When R1 == R2 in and R1  R2 are both written
```
<regstate>
  convToRegKeys(R1) |-> (MI1 => expr(MI1, MI2))
  convToRegKeys(R2) |-> (MI2 => expr(MI2, MI1))
</regstate>
```
