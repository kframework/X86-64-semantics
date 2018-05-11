requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - xorq_r64_r64,
*/

module XOR-R64-R64
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(xorq  R1:R64,  R2:R64, .Operands) =>
      execinstr(xorq  R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            xorMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>  

  rule
      execinstr(xorq  ( DestR, MIsrc1, MIsrc2, MIresult, .Operands )) 
    => 
      setFlag(mi(1, 0), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(mi(1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
