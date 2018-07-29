requires "x86-configuration.k"


module JRCXZ-LABEL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jrcxz LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k> 
    execinstr (jrcxz LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))
endmodule
