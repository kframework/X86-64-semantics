requires "x86-configuration.k"

/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

module MOV-R8-RH
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movb R1:Rh, R2:R8, .Typedoperands) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>

endmodule
