requires "x86-configuration.k"


module JECXZ-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jecxz Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm8, 64))))
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8 andBool
         eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))

  rule <k> 
    execinstr (jecxz Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
      requires bitwidthMInt(Imm8) ==Int 8 andBool
         notBool eqMInt(getRegisterValue(%ecx, RSMap), mi(32, 0))
endmodule
