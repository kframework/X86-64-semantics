requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module MOVQ-M64-R64
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (movq R1:R64,  I:Int ( R2:R64 ), .Typedoperands) => 
      storeToMemory(getRegisterValue(R1, RSMap), 
          addMInt(getRegisterValue(R2, RSMap), mi(64, I)), 
          64)
  ...</k>
  <regstate> RSMap </regstate>
endmodule
