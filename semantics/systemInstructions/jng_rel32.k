requires "x86-configuration.k"


module JNG-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jng Imm64:MInt, .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires (eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) orBool notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 

  rule <k> execinstr (jng _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires (notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) andBool   eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 
endmodule
