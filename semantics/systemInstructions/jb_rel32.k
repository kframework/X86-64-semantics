requires "x86-configuration.k"


module JB-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jb Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (jb _:MInt, .Operands) => . ... </k>
      <regstate> RSMap:Map </regstate> 
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))
endmodule
