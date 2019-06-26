requires "x86-configuration.k"


module JAE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jae Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))

  rule <k> execinstr (jae Imm32:MInt, .Operands) => . ... </k>
      <regstate> RSMap:Map </regstate> 
      requires eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
endmodule
