requires "x86-configuration.k"


module JPE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jpe Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["PF"]}:>MInt, mi(1, 1))

  rule <k> execinstr (jpe Imm32:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))
endmodule
