requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADCQ-R64-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcq I1_32:Imm,  R2:R64, .Operands) =>
      execinstr(adcq R2, 
          handleImmediateWithSignExtend(I1_32, 32, 64 ), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 64), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 64)),
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>
  
  rule <k>
    execinstr(adcq DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
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
