requires "x86-configuration.k"

module MOVL-M32-R32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movl R1:R32,  I:Int ( R2:R64 ), .Typedoperands) => 
      storeToMemory(getRegisterValue(R1, RSMap), 
          addMInt(getRegisterValue(R2, RSMap), mi(64, I)), 
          32)
  ...</k>
  <regstate> RSMap </regstate>
endmodule
