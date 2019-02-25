requires "x86-configuration.k"


module LOOPE-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (loopz Imm8:MInt, .Operands) => execinstr (loopz Imm8, subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), .Operands)
  ...</k>
    <regstate> RSMap </regstate>
      requires bitwidthMInt(Imm8) ==Int 8

  rule <k> 
    execinstr (loopz Imm8:MInt, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm8, 64)))
          ("RCX" |-> Count)
          )
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8 andBool
        ( notBool eqMInt(Count, mi(bitwidthMInt(Count), 0))
          andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)))

  rule <k> 
    execinstr (loopz Imm8:MInt, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RCX" |-> Count)
          )
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8 andBool
        ( eqMInt(Count, mi(bitwidthMInt(Count), 0))
          orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)))

endmodule
