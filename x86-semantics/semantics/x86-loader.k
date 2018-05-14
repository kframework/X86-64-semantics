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
    The reason for parsing instruction as (OpC OpR) is to 
    avoid on instructions like .section ...
  */
  rule  <k> OpC:Opcode OpR:Operands => . ...</k>
        <text>... .Map => iloc(L) |-> storedinstr(OpC OpR) ...</text>
        <nextLocPc> L => addMInt(L, mi(64, getISize(OpC OpR))) </nextLocPc>
  /*@
    After loading the last instrution to Code memory, rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <regstate> RSMap => RSMap["RIP" <- LoadAddr] </regstate>
        <entrypoint> LoadAddr </entrypoint>
endmodule
