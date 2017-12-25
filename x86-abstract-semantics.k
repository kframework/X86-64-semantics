requires "x86-general-utils.k"
requires "x86-configuration.k"

module X86-ABSTRACT-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-GENERAL-UTILS

  rule getISize(OpC, OpR) => 1


  /*@
    Update the registers with supplied values.
  */
  syntax KItem ::= updateReg(MInt, Register)
  syntax Typeoperand ::= MInt

  rule <k> updateReg(MI:MInt, %rax) => .  ...</k> <rax> _ => MI </rax>
  rule <k> updateReg(MI:MInt, %rbx) => .  ...</k> <rbx> _ => MI </rbx>
  rule <k> updateReg(MI:MInt, %rcx) => .  ...</k> <rcx> _ => MI </rcx>
  rule <k> updateReg(MI:MInt, %rdx) => .  ...</k> <rdx> _ => MI </rdx>
  rule <k> updateReg(MI:MInt, %rsi) => .  ...</k> <rsi> _ => MI </rsi>
  rule <k> updateReg(MI:MInt, %rdi) => .  ...</k> <rdi> _ => MI </rdi>
  rule <k> updateReg(MI:MInt, %rsp) => .  ...</k> <rsp> _ => MI </rsp>
  rule <k> updateReg(MI:MInt, %rbp) => .  ...</k> <rbp> _ => MI </rbp>
  rule <k> updateReg(MI:MInt, %r8 ) => .  ...</k> <r8>  _ => MI </r8>
  rule <k> updateReg(MI:MInt, %r9 ) => .  ...</k> <r9>  _ => MI </r9>
  rule <k> updateReg(MI:MInt, %r10) => .  ...</k> <r10> _ => MI </r10>
  rule <k> updateReg(MI:MInt, %r11) => .  ...</k> <r11> _ => MI </r11>
  rule <k> updateReg(MI:MInt, %r12) => .  ...</k> <r12> _ => MI </r12>
  rule <k> updateReg(MI:MInt, %r13) => .  ...</k> <r13> _ => MI </r13>
  rule <k> updateReg(MI:MInt, %r14) => .  ...</k> <r14> _ => MI </r14>
  rule <k> updateReg(MI:MInt, %r15) => .  ...</k> <r15> _ => MI </r15>
  rule <k> updateReg(MI:MInt, %ymm0) => . ...</k>   <ymm0>  _ => MI </ymm0>
  rule <k> updateReg(MI:MInt, %ymm1) => . ...</k>   <ymm1>  _ => MI </ymm1>
  rule <k> updateReg(MI:MInt, %ymm2) => . ...</k>   <ymm2>  _ => MI </ymm2>
  rule <k> updateReg(MI:MInt, %ymm3) => . ...</k>   <ymm3>  _ => MI </ymm3>
  rule <k> updateReg(MI:MInt, %ymm4) => . ...</k>   <ymm4>  _ => MI </ymm4>
  rule <k> updateReg(MI:MInt, %ymm5) => . ...</k>   <ymm5>  _ => MI </ymm5>
  rule <k> updateReg(MI:MInt, %ymm6) => . ...</k>   <ymm6>  _ => MI </ymm6>
  rule <k> updateReg(MI:MInt, %ymm7) => . ...</k>   <ymm7>  _ => MI </ymm7>
  rule <k> updateReg(MI:MInt, %ymm8) => . ...</k>   <ymm8>  _ => MI </ymm8>
  rule <k> updateReg(MI:MInt, %ymm9) => . ...</k>   <ymm9>  _ => MI </ymm9>
  rule <k> updateReg(MI:MInt, %ymm10) => . ...</k>  <ymm10> _ => MI </ymm10>
  rule <k> updateReg(MI:MInt, %ymm11) => . ...</k>  <ymm11> _ => MI </ymm11>
  rule <k> updateReg(MI:MInt, %ymm12) => . ...</k>  <ymm12> _ => MI </ymm12>
  rule <k> updateReg(MI:MInt, %ymm13) => . ...</k>  <ymm13> _ => MI </ymm13>
  rule <k> updateReg(MI:MInt, %ymm14) => . ...</k>  <ymm14> _ => MI </ymm14>
  rule <k> updateReg(MI:MInt, %ymm15) => . ...</k>  <ymm15> _ => MI </ymm15>


  /*@
    handleImmediate(Imm, W): Compute a MInt corresponding
    to the Imm value of width W.
  */
  syntax MInt ::=  handleImmediate(Imm, Int) [function]
  
  // Imm could be an Int
  rule handleImmediate($ I:Int, W:Int) => mi(W,I)
  // Or a HexConstant
  syntax String ::= HexConstant2String ( HexConstant )    [function, hook(STRING.token2string)]
  rule handleImmediate($0x H:HexConstant, W:Int) => 
    mi(W, String2Base(HexConstant2String(H), 16)) 

endmodule
