requires "x86-configuration.k"

module X86-LOADER-SYNTAX
  syntax KItem ::= "loadEntryPoint" 
endmodule

module X86-LOADER
  imports X86-LOADER-SYNTAX
  imports X86-CONFIGURATION
  imports ID

  /*@
    Unroll intructions into KList.
  */
  rule I:Instruction Is:Instructions => I ~> Is

  /*@
    Ignore certain contructs for the time being.
  */
  // rule <k> .section .text  => . ...</k>
  // rule <k> .globl _start  => . ...</k>
  rule <k> _:AssemblerDirective  => . ...</k>


  /*@
    Record the PC corresponding to labels. 
  */  
  rule <k> (LabelId:X86Id:):Label => . ...</k>
        <functargets> FMap:Map => FMap[LabelId <- L] </functargets>
        <nextLocPc> L </nextLocPc>

  /*@
    Load the instructions into Code memory.
    The reason for parsing instruction as (OpC OpR) is to 
    avoid on instructions like .section ...
  */
  rule  <k> OpC:Opcode OpR:Operands => . ...</k>
        <text> code(M:Map => M[iloc(L) <- storedInstr(OpC OpR)])</text>
        <nextLocPc> L:MInt => addMInt(L, mi(64, 1)) </nextLocPc>

  rule  <k>.Instructions => .K ...</k>

  /*@
    RIP is set to the entry point address corresponding to labels
    'main' or '_start' in order to begin execution.
  */
  rule  <k> loadEntryPoint => .K ...</k>
        <regstate> RSMap => RSMap["RIP" <- LoadAddr] </regstate>
        <entrypoint> _:K => LoadAddr </entrypoint>
        <functargets>...  main:X86Id |-> LoadAddr:MInt  ...</functargets>

  rule  <k> loadEntryPoint => .K ...</k>
        <regstate> RSMap => RSMap["RIP" <- LoadAddr] </regstate>
        <entrypoint> _:K => LoadAddr </entrypoint>
        <functargets>...  _start:X86Id |-> LoadAddr:MInt  ...</functargets>

endmodule
