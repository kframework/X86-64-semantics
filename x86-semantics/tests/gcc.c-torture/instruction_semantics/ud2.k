requires "x86-configuration.k"


module UD2
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (ud2  .Operands) => IllegalInstructionException
  ...</k>
      <regstate>... "RIP" |-> ( PC => subMInt(PC,  mi(64, 1)))  ...</regstate>
endmodule
