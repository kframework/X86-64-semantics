requires "x86-syntax.k"
requires "x86-configuration.k"

module LOAD-PROGRAM-TO-MEMORY
  imports X86-SYNTAX
  imports X86-CONFIGURATION

  syntax Int ::= loc(MInt)
  syntax Int ::= getISize(Opcode, Typedoperands) [function]
  syntax Instruction ::= storedinstr(Opcode, Typedoperands)
  syntax Instruction ::= execinstr(Opcode, Typedoperands)

  rule getISize(OpC:Opcode, OpR:Typedoperands) => 1

  /*@
    Unroll intructions into KList.
  */
  rule I:Instruction Is:Instructions => I ~> Is

  /*@
    Load the instructions into Code memory.
  */
  rule  <k> OpC:Opcode OpR:Typedoperands => . ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(OpC,OpR)] </cmem>
        <nextLoc> L => addMInt(L, mi(64, getISize(OpC, OpR))) </nextLoc>
  /*@
    To stop the execution of instrcution, a sentinal instruction is stored in code memory, which upon fetching will stop further execution.
    Also rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(sentinal, .Typedoperands)] </cmem>
        <nextLoc> L  </nextLoc>
        <rip> _ => LoadAddr </rip>
        <entrypoint> LoadAddr </entrypoint>

  /*@
    Fetch the instructions from Code memory.
  */
  rule <k> fetch => execinstr(OpC,OpR) ~> fetch ... </k>
  <cmem>... loc(PC) |-> storedinstr(OpC,OpR)   ...</cmem>
  <rip> PC => addMInt(PC,  mi(64,getISize(OpC,OpR))) </rip>

  /*@
    Once the sentinal instrcution is fetched, the execution stops.
  */
  rule <k> execinstr ( sentinal , .Typedoperands ) ~> fetch => . ... </k>


endmodule

module  X86-SEMANTIC-UTILITIES
  imports LOAD-PROGRAM-TO-MEMORY

  /*@
    The lookup and update operations on the registers require two cells, k and
    regs for integer registers.  We have included only the rule for the integer
    registers case.  If the current computational task is an integer register
    lookup, for a register R, as shown below the resulting configuration has
    the corresponding value I for R from the integer register file.
  */
  rule <k> %rax => MI ...</k> <rax> MI </rax>
  rule <k> %rbx => MI ...</k> <rbx> MI </rbx>
  rule <k> %rcx => MI ...</k> <rcx> MI </rcx>
  rule <k> %rdx => MI ...</k> <rdx> MI </rdx>
  rule <k> %rsi => MI ...</k> <rsi> MI </rsi>
  rule <k> %rdi => MI ...</k> <rdi> MI </rdi>
  rule <k> %r8 => MI ...</k> <r8> MI </r8>
  rule <k> %r9 => MI ...</k> <r9> MI </r9>
  rule <k> %r10 => MI ...</k> <r10> MI </r10>
  rule <k> %r11 => MI ...</k> <r11> MI </r11>
  rule <k> %r12 => MI ...</k> <r12> MI </r12>
  rule <k> %r13 => MI ...</k> <r13> MI </r13>
  rule <k> %r14 => MI ...</k> <r14> MI </r14>
  rule <k> %r15 => MI ...</k> <r15> MI </r15>

  /*@
    if the top computational task is to update a register, say Rd with a computed
    value I, the previous value of Rd, denoted by the wildcard _, is replaced by
    I, as shown below.
  */
  syntax KItem ::= updateReg(K, Register) [strict(1)]
  rule <k> updateReg(MI:MInt, %rax) => . ...</k> <rax> _ => MI </rax>
  rule <k> updateReg(MI:MInt, %rbx) => . ...</k> <rbx> _ => MI </rbx>
  rule <k> updateReg(MI:MInt, %rcx) => . ...</k> <rcx> _ => MI </rcx>
  rule <k> updateReg(MI:MInt, %rdx) => . ...</k> <rdx> _ => MI </rdx>
  rule <k> updateReg(MI:MInt, %rsi) => . ...</k> <rsi> _ => MI </rsi>
  rule <k> updateReg(MI:MInt, %rdi) => . ...</k> <rdi> _ => MI </rdi>
  rule <k> updateReg(MI:MInt, %r8)  => . ...</k> <r8>  _ => MI </r8>
  rule <k> updateReg(MI:MInt, %r9)  => . ...</k> <r9>  _ => MI </r9>
  rule <k> updateReg(MI:MInt, %r10) => . ...</k> <r10> _ => MI </r10>
  rule <k> updateReg(MI:MInt, %r11) => . ...</k> <r11> _ => MI </r11>
  rule <k> updateReg(MI:MInt, %r12) => . ...</k> <r12> _ => MI </r12>
  rule <k> updateReg(MI:MInt, %r13) => . ...</k> <r13> _ => MI </r13>
  rule <k> updateReg(MI:MInt, %r14) => . ...</k> <r14> _ => MI </r14>
  rule <k> updateReg(MI:MInt, %r15) => . ...</k> <r15> _ => MI </r15>

  //syntax Instruction ::=   normalizeInst(Opcode, Register, MInt, MInt)
  // syntax Instruction ::=   normalizeInst(Opcode, Typedoperands)
  // Todo : type check
  syntax MInt ::= truncate64to8(MInt) [function]

  //syntax MInt ::= truncate64to16(MInt) [function]
  //syntax MInt ::= truncate64to32(MInt) [function]
  syntax Typeoperand ::= extractR8(R64)
  syntax Typeoperand ::= MInt
  //syntax MInt ::= extractR16(R64)
  //syntax MInt ::= extractR32(R64)

  syntax MInt ::= zeroExtend1to8(MInt) [function]
  syntax MInt ::= zeroExtend8to64(MInt) [function]

  syntax MInt ::= plugin8(MInt, R64)

  rule truncate64to8(MI) => mi(8, svalueMInt(andMInt(MI, mi(64,255))))
  //rule truncate64to16(MI) => mi(16, svalueMInt(andMInt(MI, mi(64,65535))))
  //rule truncate64to32(MI) => mi(32, svalueMInt(andMInt(MI, mi(64,4294967295))))


  rule <k> extractR8(%rax) => truncate64to8(MI) ...</k>
  <rax> MI </rax>
/*
  rule extractR8(%rax) => truncate64to16MI)
  <rax> MI </rax>

  rule extractR8(%rax) => truncate64to32MI)
  <rax> MI </rax>
*/
  rule <k> plugin8(MId:MInt, %rax) => updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rax) ...</k>
  <rax> MIs </rax>

  rule zeroExtend1to8(MI) => mi(8, uvalueMInt(MI))
  rule zeroExtend8to64(MI) => mi(64, uvalueMInt(MI))

  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>
endmodule
