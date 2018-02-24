requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module ADCQ-RAX-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr (adcq I1_32:Imm,  %rax:R64, .Typedoperands) =>
      execinstr(adcq %rax, 
          handleImmediateWithSignExtend(I1_32, 32, 64 ), 
          getRegisterValue(%rax, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 64), 
          addMInt(addMInt(handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(%rax, RSMap)), zeroExtend(getFlag("CF", RSMap), 64)),
          .Typedoperands) 
  ...</k>
  <regstate> RSMap </regstate>
  
  rule <k>
    execinstr(adcq DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Typedoperands) 
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
