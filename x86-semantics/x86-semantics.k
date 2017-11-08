requires "x86-configuration.k"

module  X86-SEMANTICS-BASE-RULES
  imports X86-CONFIGURATION

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

endmodule

module X86-SEMANTICS-BASE-INSTRUCTIONS
  imports X86-SEMANTICS-BASE-RULES

  /*@
    Base Instructions
  */
  //rule <k> Op:Opcode I:Int, %rax => updateReg(I,%rax) ...</k>  <rax> V </rax>
  rule <k> Op:Opcode I:Int, %rax => . ...</k>  <rax> V => V +Int I </rax>

  syntax KItem ::= "exit_0"
  rule <k> . => exit_0 </k>

endmodule


module X86-SEMANTICS
  imports X86-SEMANTICS-BASE-INSTRUCTIONS
endmodule
