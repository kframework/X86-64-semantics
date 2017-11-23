requires "x86-semantic-utils.k"

module ADD-IMM-R8
  imports X86-SEMANTIC-UTILS

  syntax Int ::= handleImmediate(Imm) [function]
  rule handleImmediate($ I:Int) => I

  rule
  <k>
    execinstr(addq, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, .Typedoperands )) =>
      updateReg(addMInt(MIsrc1, MIsrc2), DestR) 
  ...</k> 

  // Unroll START
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rax , .Typedoperands)) ) => 
      execinstr(addq, (%rax, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rax> MI </rax>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rbx , .Typedoperands)) ) => 
      execinstr(addq, (%rbx, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rbx> MI </rbx>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rcx , .Typedoperands)) ) => 
      execinstr(addq, (%rcx, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rcx> MI </rcx>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rdx , .Typedoperands)) ) => 
      execinstr(addq, (%rdx, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rdx> MI </rdx>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rsi , .Typedoperands)) ) => 
      execinstr(addq, (%rsi, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rsi> MI </rsi>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rdi , .Typedoperands)) ) => 
      execinstr(addq, (%rdi, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rdi> MI </rdi>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rsp , .Typedoperands)) ) => 
      execinstr(addq, (%rsp, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rsp> MI </rsp>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%rbp , .Typedoperands)) ) => 
      execinstr(addq, (%rbp, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <rbp> MI </rbp>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r8 , .Typedoperands)) ) => 
      execinstr(addq, (%r8, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r8> MI </r8>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r9 , .Typedoperands)) ) => 
      execinstr(addq, (%r9, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r9> MI </r9>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r10 , .Typedoperands)) ) => 
      execinstr(addq, (%r10, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r10> MI </r10>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r11 , .Typedoperands)) ) => 
      execinstr(addq, (%r11, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r11> MI </r11>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r12 , .Typedoperands)) ) => 
      execinstr(addq, (%r12, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r12> MI </r12>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r13 , .Typedoperands)) ) => 
      execinstr(addq, (%r13, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r13> MI </r13>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r14 , .Typedoperands)) ) => 
      execinstr(addq, (%r14, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r14> MI </r14>
  rule <k> 
    execinstr ( addq , (I:Imm ,  (%r15 , .Typedoperands)) ) => 
      execinstr(addq, (%r15, mi(64, handleImmediate(I)), MI, .Typedoperands)) 
  ...</k>
  <r15> MI </r15>
  // Unroll End
endmodule

module ADD-SEMANTICS
  imports ADD-IMM-R8
endmodule
