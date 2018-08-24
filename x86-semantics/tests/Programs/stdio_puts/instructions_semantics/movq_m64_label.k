requires "x86-configuration.k"

module MOVQ-M64-LABEL
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movq:Opcode  $ (LabelId):X86Id,  M:Mem, .Operands) => 
      execinstr (movq $ uvalueMInt(Target),  M:Mem, .Operands)    
  ...</k>
    <functargets>...  LabelId:X86Id |-> Target:MInt  ...</functargets>
endmodule
