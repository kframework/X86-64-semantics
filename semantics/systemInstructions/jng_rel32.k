requires "x86-configuration.k"


module JNG-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jng Imm32:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm32, 64))))
      </regstate>
      requires bitwidthMInt(Imm32) ==Int 32 andBool
         (eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) orBool notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 

  rule <k> 
    execinstr (jng Imm32:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
      requires bitwidthMInt(Imm32) ==Int 32 andBool
         (notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) andBool   eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)) 
endmodule
