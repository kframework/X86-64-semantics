requires "x86-configuration.k"

module MOVQ-M64-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movq R1:R64,  I:Int ( R2:R64 ), .Operands) => 
      storeToMemory(getRegisterValue(R1, RSMap), 
          addMInt(getRegisterValue(R2, RSMap), mi(64, I)), 
          64)
  ...</k>
  <regstate> RSMap </regstate>
endmodule
