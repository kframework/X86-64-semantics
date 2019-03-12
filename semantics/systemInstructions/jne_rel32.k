requires "x86-configuration.k"


module JNE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jne Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> execinstr (jne _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))
endmodule
