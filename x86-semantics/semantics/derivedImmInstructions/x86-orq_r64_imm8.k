requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - orq_r64_r64,
*/

module ORQ-R64-IMM8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(orq I1_8:Imm, R2:R64, .Typedoperands) => 
      execinstr(orq  R2, handleImmediateWithSignExtend(I1_8, 8, 64 ), getRegisterValue(R2, RSMap), 
            orMInt(handleImmediateWithSignExtend(I1_8, 8, 64 ), getRegisterValue(R2, RSMap)), .Typedoperands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule
      execinstr(orq  DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Typedoperands ) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
