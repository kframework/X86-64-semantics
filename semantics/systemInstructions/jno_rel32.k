requires "x86-configuration.k"


module JNO-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jno Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["OF"]}:>MInt, mi(1, 0)) 

  rule <k> execinstr (jno _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["OF"]}:>MInt, mi(1, 0))
endmodule
