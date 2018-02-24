requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADC-R16-R16
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcw R1:R16,  R2:R16, .Typedoperands) =>
      execinstr(adcw R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 16), 
          extractMask(
            addMInt(
              addMInt(
                concatenateMInt(mi(1, 0), getRegisterValue(R1, RSMap)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R2, RSMap))
              ), 
              concatenateMInt(mi(1, 0), zeroExtend(getFlag("CF", RSMap), 16))
            ), 16, 0
          ), 
          .Typedoperands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcw DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Typedoperands) 
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

