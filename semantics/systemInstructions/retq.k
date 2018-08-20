requires "x86-configuration.k"


module RETQ
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(retq:Opcode .Operands) => execinstr(ret  .Operands)
  ...</k>

  rule <k> 
    execinstr (ret .Operands) => 
    incRSPInBytes(8) ~>
    loadFromMemory(getRegisterValue(%rsp, RSMap), 64)
    ~> execinstr(ret .Operands)
  ...</k>
    <regstate> RSMap </regstate>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (ret .Operands) =>  .
  ...</k>
      <regstate>... "RIP" |-> ( PC => MemVal)  ...</regstate>
endmodule
