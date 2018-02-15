requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"


module ADC-R32-R32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcl R1:R32,  R2:R32, .Typedoperands) =>
      execinstr(adcl R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 32), 
          addMInt(addMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 32)),
          .Typedoperands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcl DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Typedoperands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(concatenateMInt(mi(32, 0), MIresult), convSubRegsToRegs(DestR)) 
  ...</k>

endmodule
