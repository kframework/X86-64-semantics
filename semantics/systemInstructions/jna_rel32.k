requires "x86-configuration.k"


module JNA-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jna Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires (eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) orBool  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1)))

  rule <k> execinstr (jna _:MInt, .Operands) => . ... </k>
      <regstate> RSMap:Map </regstate> 
      requires (notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) andBool notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 1)))
endmodule
