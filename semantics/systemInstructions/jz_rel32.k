requires "x86-configuration.k"


module JZ-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jz Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (jz _:MInt, .Operands) => . ...</k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))
endmodule
