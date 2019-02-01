requires "x86-configuration.k"


module JRCXZ-REL32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jrcxz Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64))))
      </regstate>
        requires eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k> 
    execinstr (jrcxz Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))
endmodule
