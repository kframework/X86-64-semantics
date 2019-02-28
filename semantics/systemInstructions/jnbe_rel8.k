requires "x86-configuration.k"


module JNBE-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jnbe Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |->
            addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm8,
                64))))
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8 andBool
          (eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)))

  rule <k> 
    execinstr (jnbe Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
      requires bitwidthMInt(Imm8) ==Int 8 andBool
          (notBool eqMInt({RSMap["CF"]}:>MInt, mi(1, 0)) 
          orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)))
endmodule
