requires "x86-configuration.k"


module JNBE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jnbe Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires (eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)))

  rule <k> execinstr (jnbe _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires (notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)))
endmodule
