requires "x86-configuration.k"
module JL-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (jl Imm64:MInt, .Operands) => . ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      requires notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
                
  rule <k> execinstr (jl _:MInt, .Operands) => . ... </k>
      <regstate> RSMap </regstate> 
      requires eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
endmodule
