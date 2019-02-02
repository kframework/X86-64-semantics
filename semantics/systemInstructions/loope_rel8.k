requires "x86-configuration.k"


module LOOPE-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (loope Imm8:Imm, .Operands) => execinstr (loope Imm8, subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k> 
    execinstr (loope Imm8:Imm, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8, 8, 64)))
          ("RCX" |-> Count)
          )
      </regstate>
        requires notBool eqMInt(Count, mi(bitwidthMInt(Count), 0))
          andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (loope Imm8:Imm, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RCX" |-> Count)
          )
      </regstate>
        requires eqMInt(Count, mi(bitwidthMInt(Count), 0))
          orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

endmodule
