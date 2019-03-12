requires "x86-configuration.k"


module JS-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (js Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["SF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (js _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires eqMInt({RSMap["SF"]}:>MInt, mi(1, 0))
endmodule
