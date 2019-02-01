requires "x86-configuration.k"


module JA-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (ja Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |->
            addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8,
                8, 64))))
      </regstate>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))
        andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (ja Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
        orBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))
endmodule
