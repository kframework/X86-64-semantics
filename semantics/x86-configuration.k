requires "x86-general-utils.k"
requires "x86-abstract-syntax.k"

module X86-CONFIGURATION
  imports MINT-WRAPPER-SYNTAX
  imports X86-ASBTRACT-SYNTAX

  configuration <T>
    <k> $PGM:Instructions ~> inforegisters ~> fetch </k>
    <entrypoint> mi(64, 0) </entrypoint>
    <nextLoc> mi(64, 0) </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      .Map
      /*@
        General purpose registers.
      */
      ("RIP" |-> mi(64, 0))
      ("RAX" |-> mi(64, 0))
      ("RBX" |-> mi(64, 0))
      ("RCX" |-> mi(64, 0))
      ("RDX" |-> mi(64, 0))
      ("RSI" |-> mi(64, 0))
      ("RDI" |-> mi(64, 0))
      ("RSP" |-> mi(64, 0))
      ("RBP" |-> mi(64, 0))
      ("R8"  |-> mi(64, 0))
      ("R9"  |-> mi(64, 0))
      ("R10" |-> mi(64, 0))
      ("R11" |-> mi(64, 0))
      ("R12" |-> mi(64, 0))
      ("R13" |-> mi(64, 0))
      ("R14" |-> mi(64, 0))
      ("R15" |-> mi(64, 0))

      /*@
        General purpose registers.
      */
      ("CF" |-> mi(1, 0))
      ("PF" |-> mi(1, 0))
      ("AF" |-> mi(1, 0))
      ("ZF" |-> mi(1, 0))
      ("SF" |-> mi(1, 0))
      ("OF" |-> mi(1, 0))

      /*@ 
        256 bit ymm registers
      */
      ("YMM0"  |->  mi(256, 0)) 
      ("YMM1"  |->  mi(256, 0)) 
      ("YMM2"  |->  mi(256, 0)) 
      ("YMM3"  |->  mi(256, 0)) 
      ("YMM4"  |->  mi(256, 0)) 
      ("YMM5"  |->  mi(256, 0)) 
      ("YMM6"  |->  mi(256, 0)) 
      ("YMM7"  |->  mi(256, 0)) 
      ("YMM8"  |->  mi(256, 0)) 
      ("YMM9"  |->  mi(256, 0)) 
      ("YMM10" |->  mi(256, 0)) 
      ("YMM11" |->  mi(256, 0)) 
      ("YMM12" |->  mi(256, 0)) 
      ("YMM13" |->  mi(256, 0)) 
      ("YMM14" |->  mi(256, 0)) 
      ("YMM15" |->  mi(256, 0)) 
    </regstate>

    /*@
      The following configuration is used to store the intermediate 
      regstate at instruction boundary. Used in debug/testing purposes.
    */
    <regstatequeue> .List </regstatequeue>

  </T>


endmodule
