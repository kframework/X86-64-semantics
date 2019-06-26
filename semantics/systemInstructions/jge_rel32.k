requires "x86-configuration.k"
module JGE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jge Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)

  rule <k> execinstr (jge _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
endmodule
