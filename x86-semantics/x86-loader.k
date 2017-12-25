requires "x86-configuration.k"

module X86-LOADER
  imports X86-CONFIGURATION

  /*@
    Unroll intructions into KList.
  */
  rule I:Instruction Is:Instructions => I ~> Is

  /*@
    Ignore certain contructs for the time being.
  */
  rule <k> .section .text  => . ...</k>
  rule <k> .globl _start  => . ...</k>
  // Both will work
  //rule <k> L:Label => . ...</k>
  rule <k> _start: => . ...</k>

  /*@
    Load the instructions into Code memory.
  */
  rule  <k> OpC:Opcode OpR:Typedoperands => . ...</k>
        <cmem>... .Map => loc(L) |-> storedinstr(OpC OpR) ...</cmem>
        <nextLoc> L => addMInt(L, mi(64, getISize(OpC OpR))) </nextLoc>
  /*@
    After loading the last instrution to Code memory, rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <regstate> RSMap => RSMap["RIP" <- LoadAddr] </regstate>
        <entrypoint> LoadAddr </entrypoint>
endmodule
