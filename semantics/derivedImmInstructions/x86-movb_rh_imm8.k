requires "x86-configuration.k"

/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

module MOVB-RH-IMM8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movb I1_8:Imm, R2:Rh, .Operands) =>
      setRegisterValue(handleImmediateWithSignExtend(I1_8, 8, 8 ), R2)
  ...</k>
    <regstate> RSMap </regstate>

endmodule
