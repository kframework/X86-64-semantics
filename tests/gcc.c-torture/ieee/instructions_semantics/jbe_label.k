requires "x86-configuration.k"


module JBE-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jbe LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 1))
        orBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (jbe LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  eqMInt({RSMap["CF"]}:>MInt, mi(1, 0))
        andBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))
endmodule
