requires "x86-configuration.k"



module JMPQ-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (jmp R1:R64, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>
endmodule
