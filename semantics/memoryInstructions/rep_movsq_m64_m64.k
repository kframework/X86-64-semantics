requires "x86-configuration.k"

module MOVSQ
  imports X86-CONFIGURATION

  rule <k> execinstr (rep movsq  M1:Mem, M2:Mem,  .Operands) => . ... </k>
       <regstate> RSMap </regstate> 
       requires eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))

  rule <k>
    execinstr (rep movsq  M1:Mem, M2:Mem,  .Operands) =>
      loadFromMemory( getRegisterValue(%rsi, RSMap), 64) ~> 
      execinstr (movsq  .Operands) ~>
      setRegisterValue(subMInt(getRegisterValue(%rcx, RSMap), mi(64, 1)), %rcx) ~>
      execinstr(rep movsq M1, M2, .Operands)
    ...</k>
    <regstate> RSMap:Map </regstate>
    requires notBool eqMInt(getRegisterValue(%rcx, RSMap), mi(64, 0))
     



  endmodule
