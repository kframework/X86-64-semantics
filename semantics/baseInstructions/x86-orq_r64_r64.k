requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - orq_r64_r64,
*/

module OR-R64-R64
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(orq R1:R64, R2:R64, .Operands) => 
      execinstr(orq  R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            orMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule
      execinstr(orq  DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands ) 
    => 
      setFlag(mi(1, 0), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(mi(1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
