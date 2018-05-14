requires "x86-configuration.k"


module JMPQ-LABEL
  imports X86-CONFIGURATION
  imports ID

  rule <k> 
    execinstr (jmpq LabelId:Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> {LabelMap[Id2String(LabelId)]}:>MInt))
      </regstate>
      <functargets> LabelMap </functargets>
        requires Id2String(LabelId) in_keys (LabelMap)
endmodule
