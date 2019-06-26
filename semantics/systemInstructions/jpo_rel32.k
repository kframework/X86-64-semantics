requires "x86-configuration.k"


module JPO-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jpo Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))

  rule <k> execinstr (jpo _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))
endmodule
