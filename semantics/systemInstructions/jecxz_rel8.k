requires "x86-configuration.k"


module JECXZ-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jecxz Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8, 8, 64))))
      </regstate>
        requires eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))

  rule <k> 
    execinstr (jecxz Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))
endmodule
