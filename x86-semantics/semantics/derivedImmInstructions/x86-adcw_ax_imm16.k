requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADCW-AX-IMM16
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcw I1_16:Imm,  %ax:R16, .Operands) =>
      execinstr(adcw %ax, 
          handleImmediateWithSignExtend(I1_16, 16, 16 ), 
          getRegisterValue(%ax, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 16), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_16, 16, 16 ), getRegisterValue(%ax, RSMap)), zeroExtend(getFlag("CF", RSMap), 16)),
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
