requires "x86-configuration.k"


module JMPQ-REL8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp Imm8:Imm, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm8, 8, 64))))
      </regstate>

endmodule
