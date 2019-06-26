requires "x86-configuration.k"


module JECXZ-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jecxz Imm8:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))

  rule <k> execinstr (jecxz _:MInt, .Operands) => . ...</k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))
endmodule
