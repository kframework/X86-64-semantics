requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"


module ADCL-R32-IMM8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcl I1_8:Imm,  R2:R32, .Typedoperands) =>
      execinstr(adcl R2, 
          handleImmediateWithSignExtend(I1_8, 8, 32 ), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 32), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_8, 8, 32 ), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 32)),
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
