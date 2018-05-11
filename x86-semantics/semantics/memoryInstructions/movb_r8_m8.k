requires "x86-configuration.k"

module MOVB-R8-M8
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (movb I:Int (R1:R64):Mem,  R2:R8, .Typedoperands) => 
      setRegisterValue(
          loadFromMemory(
            addMInt(getRegisterValue(R1, RSMap), mi(64, I)), 
            8), 
          R2)                         
  ...</k>
  <regstate> RSMap </regstate>
endmodule
