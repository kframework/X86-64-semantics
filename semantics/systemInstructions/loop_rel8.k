requires "x86-configuration.k"


module LOOP-REL8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> execinstr (loop Imm64:MInt, .Operands) => execinstr (loop Imm64, subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), .Operands) ...</k>
    <regstate> RSMap </regstate>
      requires bitwidthMInt(Imm8) ==Int 8

  rule <k> execinstr (loop Imm64:MInt, Count:MInt,  .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64) ("RCX" |-> Count)) </regstate>
      requires notBool eqMInt(Count, mi(bitwidthMInt(Count), 0))

  rule <k> execinstr (loop Imm64:MInt, Count:MInt,  .Operands) => . ... </k>
      <regstate> RSMap => updateMap(RSMap, ("RCX" |-> Count)) </regstate>
      requires eqMInt(Count, mi(bitwidthMInt(Count), 0))
endmodule
