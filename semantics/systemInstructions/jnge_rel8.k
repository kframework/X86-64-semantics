requires "x86-configuration.k"


module JNGE-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jnge Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8, 8, 64))))
      </regstate>
        requires  notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt) 

  rule <k> 
    execinstr (jnge Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt) 
endmodule
