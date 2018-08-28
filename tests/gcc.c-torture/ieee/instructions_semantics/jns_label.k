requires "x86-configuration.k"


module JNS-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jns LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["SF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jns LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["SF"]}:>MInt, mi(1, 1))
endmodule
