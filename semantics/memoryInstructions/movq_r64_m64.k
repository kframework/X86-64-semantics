requires "x86-configuration.k"

module MOVQ-R64-M64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movq I:Int (R1:R64):Mem,  R2:R64, .Operands) => 
      setRegisterValue(
          loadFromMemory(
            addMInt(getRegisterValue(R1, RSMap), mi(64, I)), 
            64), 
          R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule
