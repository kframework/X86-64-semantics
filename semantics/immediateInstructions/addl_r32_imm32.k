requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADDL-R32-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(addl I:Imm , R:R32 , .Operands) => 
      execinstr(addl  R, handleImmediateWithSignExtend(I, 32, 32), getRegisterValue(R, RSMap), 
            extractMask(
              addMInt(
                concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R, RSMap))
              ), 32, 0 ),
            .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule
  <k>
    execinstr(addl  ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands )) =>
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, mi(32, 0)) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k> 

endmodule
