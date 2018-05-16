requires "x86-configuration.k"


module JMPQ-LABEL
  imports X86-CONFIGURATION
  imports ID

  rule <k> 
    execinstr (jmpq LabelId:Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
endmodule
