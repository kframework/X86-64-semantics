requires "x86-configuration.k"

/*@ This file defines the semantics of following 51 base instructions.
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,

*/

module MOVS-R64-R32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movslq R1:R32, R2:R64, .Typedoperands) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>

endmodule
