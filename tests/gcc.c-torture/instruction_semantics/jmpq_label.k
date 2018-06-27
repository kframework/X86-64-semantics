requires "x86-configuration.k"


module JMPQ-LABEL
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>

endmodule
