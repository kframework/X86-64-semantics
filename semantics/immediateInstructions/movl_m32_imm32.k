requires "x86-configuration.k"

module MOVL-M32-IMM32
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(movl IMM:Imm , O:Int ( R2:R64 ) , .Typedoperands) => 
         storeToMemory(handleImmediateWithSignExtend(IMM, 32, 32),
          addMInt(getRegisterValue(R2, RSMap), mi(64, O)), 
          32)
  ...</k>
  <regstate> RSMap </regstate>
endmodule
