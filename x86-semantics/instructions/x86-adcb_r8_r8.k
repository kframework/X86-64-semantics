requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADC-R8-R8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcb R1:R8, R2:R8, .Typedoperands) =>
      execinstr(adcb R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 8),
          addMInt(addMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 8)),
          .Typedoperands) 
  ...</k>
  <regstate> RSMap </regstate>
  
  rule <k>
    execinstr(adcb DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Typedoperands) 
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
