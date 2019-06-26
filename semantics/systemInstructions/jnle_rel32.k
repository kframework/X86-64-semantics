requires "x86-configuration.k"


module JNLE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jnle Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires (eqMInt({RSMap["SF"]}:>MInt, mi(1, 0)) andBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 

  rule <k> execinstr (jnle _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires (notBool eqMInt({RSMap["SF"]}:>MInt, mi(1, 0)) orBool notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 
endmodule
