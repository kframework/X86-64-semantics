requires "x86-configuration.k"


module JNC-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jnc Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))

  rule <k> execinstr (jnc _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
endmodule
