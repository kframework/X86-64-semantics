requires "x86-configuration.k"


module JE-LABEL
  imports X86-CONFIGURATION
  imports ID
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (je LabelId:Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> {LabelMap[Id2String(LabelId)]}:>MInt))
      </regstate>
      <functargets> LabelMap </functargets>
        requires Id2String(LabelId) in_keys (LabelMap) andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))
endmodule
