requires "x86-configuration.k"


module JMPQ-REL32
  imports X86-CONFIGURATION

  rule <k> execinstr (jmp Imm64:MInt, .Operands) => . ... </k>
       <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
endmodule
