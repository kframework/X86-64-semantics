requires "x86-general-utils.k"
requires "x86-abstract-syntax.k"

module X86-CONFIGURATION
  imports MINT-WRAPPER-SYNTAX
  imports X86-ASBTRACT-SYNTAX

  configuration <T>
    <k> $PGM:Instructions ~> inforegisters ~> fetch </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64 </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      /*@
        General purpose registers.
      */
      ("RIP" |-> zeroMIntW64)
      ("RAX" |-> zeroMIntW64)
      ("RBX" |-> zeroMIntW64)
      ("RCX" |-> zeroMIntW64)
      ("RDX" |-> zeroMIntW64)
      ("RSI" |-> zeroMIntW64)
      ("RDI" |-> zeroMIntW64)
      ("RSP" |-> zeroMIntW64)
      ("RBP" |-> zeroMIntW64)
      ("R8"  |-> zeroMIntW64)
      ("R9"  |-> zeroMIntW64)
      ("R10" |-> zeroMIntW64)
      ("R11" |-> zeroMIntW64)
      ("R12" |-> zeroMIntW64)
      ("R13" |-> zeroMIntW64)
      ("R14" |-> zeroMIntW64)
      ("R15" |-> zeroMIntW64)
      /*@
        General purpose registers.
      */
      ("CF" |-> zeroMIntW1)
      ("PF" |-> zeroMIntW1)
      ("AF" |-> zeroMIntW1)
      ("ZF" |-> zeroMIntW1)
      ("SF" |-> zeroMIntW1)
      ("OF" |-> zeroMIntW1)
      /*@ 
        256 bit ymm registers
      */
      ("YMM0"  |->  zeroMIntW256) 
      ("YMM1"  |->  zeroMIntW256) 
      ("YMM2"  |->  zeroMIntW256) 
      ("YMM3"  |->  zeroMIntW256) 
      ("YMM4"  |->  zeroMIntW256) 
      ("YMM5"  |->  zeroMIntW256) 
      ("YMM6"  |->  zeroMIntW256) 
      ("YMM7"  |->  zeroMIntW256) 
      ("YMM8"  |->  zeroMIntW256) 
      ("YMM9"  |->  zeroMIntW256) 
      ("YMM10" |->  zeroMIntW256) 
      ("YMM11" |->  zeroMIntW256) 
      ("YMM12" |->  zeroMIntW256) 
      ("YMM13" |->  zeroMIntW256) 
      ("YMM14" |->  zeroMIntW256) 
      ("YMM15" |->  zeroMIntW256) 
    </regstate>

    /*@
      The following configuration is used to store the intermediate 
      regstate at instruction boundary. Used in debug/testing purposes.
    */
    <regstatequeue> .List </regstatequeue>

  </T>


endmodule
