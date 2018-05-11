requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - orq_r64_r64,
*/

module ORQ-RAX-IMM32
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(orq I1_32:Imm, %rax:R64, .Operands) => 
      execinstr(orq  %rax, handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(%rax, RSMap), 
            orMInt(handleImmediateWithSignExtend(I1_32, 32, 64 ), getRegisterValue(%rax, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule
      execinstr(orq  DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands ) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 

endmodule
