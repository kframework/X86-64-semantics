requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"


module ADCL-R32-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcl I1_32:Imm,  R2:R32, .Operands) =>
      execinstr(adcl R2, 
          handleImmediateWithSignExtend(I1_32, 32, 32 ), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 32), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_32, 32, 32 ), getRegisterValue(R2, RSMap)), zeroExtend(getFlag("CF", RSMap), 32)),
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcl DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
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
