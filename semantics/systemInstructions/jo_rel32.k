requires "x86-configuration.k"


module JO-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jo Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64))))
      </regstate>
        requires  eqMInt({RSMap["OF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (jo Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["OF"]}:>MInt, mi(1, 1))
endmodule
