requires "x86-configuration.k"
/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

module MOVQ-R64-IMM32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movq I1_32:Imm, R2:R64, .Typedoperands) => .
  ...</k>
    <regstate> RSMap </regstate>
      requires sameRegisters(R1, R2)
  

  rule <k> 
    execinstr(movq I1_32:Imm, R2:R64, .Typedoperands) =>
      setRegisterValue(handleImmediateWithSignExtend(I1_32, 32, 64 ), R2)
  ...</k>
    <regstate> RSMap </regstate>
      requires notBool sameRegisters(R1, R2)
  
endmodule
