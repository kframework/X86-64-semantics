requires "x86-configuration.k"


module JC-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jc Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (jc _:MInt, .Operands) => . ... </k>
      <regstate> RSMap:Map </regstate> 
      requires notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
endmodule
