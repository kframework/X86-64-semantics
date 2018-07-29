requires "x86-configuration.k"


module LOOPNE-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (loopnz LabelId:X86Id, .Operands) => execinstr (loopnz LabelId, subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k> 
    execinstr (loopnz LabelId:X86Id, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RIP" |-> Target)
          ("RCX" |-> Count)
          )
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires notBool eqMInt(Count, mi(bitwidthMInt(Count), 0))
          andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (loopnz LabelId:X86Id, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RCX" |-> Count)
          )
      </regstate>
        requires eqMInt(Count, mi(bitwidthMInt(Count), 0))
          orBool notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

endmodule
