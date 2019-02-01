requires "x86-configuration.k"


module JNO-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jno Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8, 8, 64))))
      </regstate>
        requires eqMInt({RSMap["OF"]}:>MInt, mi(1, 0)) 

  rule <k> 
    execinstr (jno Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["OF"]}:>MInt, mi(1, 0))
endmodule
