requires "x86-configuration.k"


module JBE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jbe Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires (eqMInt({RSMap["CF"]}:>MInt, mi(1, 1)) orBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)))

  rule <k> execinstr (jbe Imm32:MInt, .Operands) => . ... </k>
      <regstate> RSMap:Map </regstate> 
      requires (eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)))
endmodule
