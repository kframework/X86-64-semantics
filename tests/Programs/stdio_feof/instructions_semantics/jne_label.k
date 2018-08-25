requires "x86-configuration.k"


module JNE-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))
endmodule
