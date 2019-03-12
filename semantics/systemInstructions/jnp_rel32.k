requires "x86-configuration.k"


module JNP-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jnp Imm64, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))

  rule <k> execinstr (jnp _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))
endmodule
