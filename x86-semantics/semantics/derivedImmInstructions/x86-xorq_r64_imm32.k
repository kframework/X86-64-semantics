requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - xorq_r64_r64,
*/

module XORQ-R64-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(xorq  I1_32:Imm,  R2:R64, .Operands) =>
      execinstr(xorq  R2, handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(R2, RSMap), 
            xorMInt(handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(R2, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>  

  rule
      execinstr(xorq  ( DestR, MIsrc1, MIsrc2, MIresult, .Operands )) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
