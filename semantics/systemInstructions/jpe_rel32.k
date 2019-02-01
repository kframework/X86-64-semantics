requires "x86-configuration.k"


module JPE-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jpe Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64))))
      </regstate>
        requires  eqMInt({RSMap["PF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (jpe Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["PF"]}:>MInt, mi(1, 0))
endmodule
