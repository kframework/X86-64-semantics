requires "x86-configuration.k"


module CALLQ-LABEL
  imports X86-CONFIGURATION
  imports ID

  rule <k> 
    execinstr (callq LabelId:Id, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> {LabelMap[Id2String(LabelId)]}:>MInt))
      </regstate>
      <functargets> LabelMap </functargets>
        requires Id2String(LabelId) in_keys (LabelMap)
endmodule
