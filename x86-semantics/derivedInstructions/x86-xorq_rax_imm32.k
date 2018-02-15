requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - xorq_r64_r64,
*/

module XORQ-RAX-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(xorq  I1_32:Imm,  %rax:R64, .Typedoperands) =>
      execinstr(xorq  %rax, handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(%rax, RSMap), 
            xorMInt(handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(%rax, RSMap)), .Typedoperands) 
  ...</k>
    <regstate> RSMap</regstate>  

  rule
      execinstr(xorq  ( DestR, MIsrc1, MIsrc2, MIresult, .Typedoperands )) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
