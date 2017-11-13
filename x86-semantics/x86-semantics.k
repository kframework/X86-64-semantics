requires "x86-configuration.k"

module LOAD-PROGRAM-TO-MEMORY
  imports X86-SYNTAX
  imports X86-CONFIGURATION

  rule I:Instruction Is:Instructions => I ~> Is
  rule .Instructions => .K

  syntax Int ::= loc(Int)
  syntax Int ::= getISize(Instruction)
  rule getISize(I) => 1:Int

  /*@
    Base Instructions
  */
  //rule <k> Op:Opcode I:Int, %rax => updateReg(I +Int V,%rax) ...</k>  <rax> V </rax>
  rule <k> I:Instruction => . ...</k>
  <cmem> CMap:Map => CMap[loc(L) <- I] </cmem>
  <nextLoc> L => L +Int 1 </nextLoc>
endmodule

module  X86-SEMANTICS-BASE-RULES
  imports LOAD-PROGRAM-TO-MEMORY

  /*@

    The lookup and update operations on the registers require two cells, k and
    regs for integer registers.  We have included only the rule for the integer
    registers case.  If the current computational task is an integer register
    lookup, for a register R, as shown below the resulting configuration has
    the corresponding value I for R from the integer register file.
  */
  rule <k> %rax => V ...</k> <rax> V </rax>
  rule <k> %rbx => V ...</k> <rbx> V </rbx>
  rule <k> %rcx => V ...</k> <rcx> V </rcx>
  rule <k> %rdx => V ...</k> <rdx> V </rdx>
  rule <k> %rsi => V ...</k> <rsi> V </rsi>
  rule <k> %rdi => V ...</k> <rdi> V </rdi>
  rule <k> %r8 => V ...</k> <r8> V </r8>
  rule <k> %r9 => V ...</k> <r9> V </r9>
  rule <k> %r10 => V ...</k> <r10> V </r10>
  rule <k> %r11 => V ...</k> <r11> V </r11>
  rule <k> %r12 => V ...</k> <r12> V </r12>
  rule <k> %r13 => V ...</k> <r13> V </r13>
  rule <k> %r14 => V ...</k> <r14> V </r14>
  rule <k> %r15 => V ...</k> <r15> V </r15>

  /*@
    if the top computational task is to update a register, say Rd with a computed
    value I, the previous value of Rd, denoted by the wildcard _, is replaced by
    I, as shown below.
  */
  syntax KItem ::= updateReg(K, Register) [strict(1)]
  rule <k> updateReg(V:AbstractValue, %rax) => . ...</k> <rax> _ => V </rax>
  rule <k> updateReg(V:AbstractValue, %rbx) => . ...</k> <rbx> _ => V </rbx>
  rule <k> updateReg(V:AbstractValue, %rcx) => . ...</k> <rcx> _ => V </rcx>
  rule <k> updateReg(V:AbstractValue, %rdx) => . ...</k> <rdx> _ => V </rdx>
  rule <k> updateReg(V:AbstractValue, %rsi) => . ...</k> <rsi> _ => V </rsi>
  rule <k> updateReg(V:AbstractValue, %rdi) => . ...</k> <rdi> _ => V </rdi>
  rule <k> updateReg(V:AbstractValue, %r8)  => . ...</k> <r8>  _ => V </r8>
  rule <k> updateReg(V:AbstractValue, %r9)  => . ...</k> <r9>  _ => V </r9>
  rule <k> updateReg(V:AbstractValue, %r10) => . ...</k> <r10> _ => V </r10>
  rule <k> updateReg(V:AbstractValue, %r11) => . ...</k> <r11> _ => V </r11>
  rule <k> updateReg(V:AbstractValue, %r12) => . ...</k> <r12> _ => V </r12>
  rule <k> updateReg(V:AbstractValue, %r13) => . ...</k> <r13> _ => V </r13>
  rule <k> updateReg(V:AbstractValue, %r14) => . ...</k> <r14> _ => V </r14>
  rule <k> updateReg(V:AbstractValue, %r15) => . ...</k> <r15> _ => V </r15>
endmodule

module X86-SEMANTICS-BASE-INSTRUCTIONS
  imports X86-SEMANTICS-BASE-RULES
  /*@
    Base Instructions
  */
  //rule <k> Op:Opcode I:Int, %rax => updateReg(I +Int V,%rax) ...</k>  <rax> V </rax>

  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>

endmodule


module X86-SEMANTICS
  imports X86-SEMANTICS-BASE-INSTRUCTIONS

endmodule
