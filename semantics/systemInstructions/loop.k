requires "x86-configuration.k"


module LOOP-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (loop LabelId:X86Id, .Operands) => execinstr (loop LabelId, subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k> 
    execinstr (loop LabelId:X86Id, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RIP" |-> Target)
          ("RCX" |-> Count)
          )
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires notBool eqMInt(Count, mi(bitwidthMInt(Count), 0))

  rule <k> 
    execinstr (loop LabelId:X86Id, Count:MInt,  .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, 
          ("RCX" |-> Count)
          )
      </regstate>
        requires eqMInt(Count, mi(bitwidthMInt(Count), 0))

endmodule
