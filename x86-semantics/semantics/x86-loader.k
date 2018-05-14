requires "x86-configuration.k"

module X86-LOADER
  imports X86-CONFIGURATION
  imports ID

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
  //rule <k> _start: => . ...</k>
  rule <k> (LabelName:Id:):Label => . ...</k>
        <functargets> FMap:Map => FMap[Id2String(LabelName) <- L] </functargets>
        <nextLocPc> L </nextLocPc>

  /*@
    Load the instructions into Code memory.
    The reason for parsing instruction as (OpC OpR) is to 
    avoid on instructions like .section ...
  */
  rule  <k> OpC:Opcode OpR:Operands => . ...</k>
        <text> code(M:Map => M[iloc(L) <- storedInstr(OpC OpR)])</text>
        //<nextLocPc> L:MInt => addMInt(L, mi(64, getISize(OpC OpR))) </nextLocPc>
        <nextLocPc> L:MInt => addMInt(L, mi(64, 1)) </nextLocPc>
  /*@
    After loading the last instrution to Code memory, rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <regstate> RSMap => RSMap["RIP" <- LoadAddr] </regstate>
        <entrypoint> LoadAddr </entrypoint>
endmodule
