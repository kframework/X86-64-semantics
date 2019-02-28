requires "x86-configuration.k"


module JRCXZ-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jrcxz Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm8, 64))))
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8 andBool
         eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k> 
    execinstr (jrcxz Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
      requires bitwidthMInt(Imm8) ==Int 8 andBool
         notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))
endmodule
