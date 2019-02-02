requires "x86-configuration.k"


module JMPQ-REL32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp Imm32:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64))))
      </regstate>

endmodule
