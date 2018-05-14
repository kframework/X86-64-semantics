requires "x86-configuration.k"


module RETQ
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (retq .Operands) => 
    incRSPInBytes(8) ~>
    loadFromMemory(getRegisterValue(%rsp, RSMap), 64)
    ~> execinstr(retq .Operands)
  ...</k>
    <regstate> RSMap </regstate>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (retq .Operands) =>  .
  ...</k>
      <regstate>... "RIP" |-> ( PC => MemVal)  ...</regstate>
endmodule
