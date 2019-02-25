requires "x86-configuration.k"


module JNS-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jns Imm32:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm32, 64))))
      </regstate>
      requires bitwidthMInt(Imm32) ==Int 32 andBool
          eqMInt({RSMap["SF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jns Imm32:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
      requires bitwidthMInt(Imm32) ==Int 32 andBool
          eqMInt({RSMap["SF"]}:>MInt, mi(1, 1))
endmodule
