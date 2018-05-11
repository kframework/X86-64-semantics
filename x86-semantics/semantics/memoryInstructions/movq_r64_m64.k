requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module MOVQ-R64-M64
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (movq I:Int (R1:R64):Mem,  R2:R64, .Typedoperands) => 
      setRegisterValue(
          loadFromMemory(
            addMInt(getRegisterValue(R1, RSMap), mi(64, I)), 
            64), 
          R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule
