requires "x86-configuration.k"


module JRCXZ-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jrcxz Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k> execinstr (jrcxz _:MInt, .Operands) => . ...</k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))
endmodule
