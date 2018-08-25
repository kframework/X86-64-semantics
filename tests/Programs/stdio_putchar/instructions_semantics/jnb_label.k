requires "x86-configuration.k"


module JNB-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jnb LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jnb LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
endmodule
