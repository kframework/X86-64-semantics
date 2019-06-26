requires "x86-configuration.k"


module JNAE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jnae Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (jnae _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
endmodule
