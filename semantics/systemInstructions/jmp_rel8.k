requires "x86-configuration.k"


module JMPQ-REL8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp Imm8:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm8, 64))))
      </regstate>
      requires bitwidthMInt(Imm8) ==Int 8

endmodule
