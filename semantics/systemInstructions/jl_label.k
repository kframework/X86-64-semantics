requires "x86-configuration.k"
module JL-LABEL
  imports X86-CONFIGURATION
  imports ID
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jl LabelId:Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> {LabelMap[Id2String(LabelId)]}:>MInt))
      </regstate>
      <functargets> LabelMap </functargets>
        requires Id2String(LabelId) in_keys (LabelMap) 
        andBool ( 
              notBool 
                eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
                )
endmodule
