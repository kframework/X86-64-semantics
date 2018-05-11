requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADCW-R16-IMM16
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcw I1_16:Imm,  R2:R16, .Operands) =>
      execinstr(adcw R2, 
          handleImmediateWithSignExtend(I1_16, 16, 16 ), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 16), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_16, 16, 16 ), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 16)),
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcw DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>

endmodule
