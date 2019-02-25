requires "x86-configuration.k"


module JMPQ-REL32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp Imm32:MInt, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, signExtend(Imm32, 64))))
      </regstate>
      requires bitwidthMInt(Imm32) ==Int 32

endmodule
