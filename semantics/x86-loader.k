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
  rule <k> .section S:SectionName  => . ...</k>
  rule <k> .globl G:X86Id  => . ...</k>


  /*@
    Populate RO data
  */
  // .quad I
  rule <k> .quad I:Int  =>  
    storeToMemory(
        mi(64, I),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <rotargets> ROMap:Map => ROMap[LabelId <- ptr(L, NextOffset)] </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </robase>
      requires notBool LabelId in_keys (ROMap)

  rule <k> .quad I:Int  =>  
    storeToMemory(
        mi(64, I),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <rotargets> ROMap:Map  </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </robase>
      requires  LabelId in_keys (ROMap)

  // .long I
  rule <k> .long I:Int  =>  
    storeToMemory(
        mi(32,I),
        ptr(L, NextOffset), 
        32)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <rotargets> ROMap:Map => ROMap[LabelId <- ptr(L, NextOffset)] </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 4))) 
    </robase>
      requires notBool LabelId in_keys (ROMap)

  rule <k> .long I:Int  =>  
    storeToMemory(
        mi(32,I),
        ptr(L, NextOffset), 
        32)
  ...</k>
    <rotargets> ROMap:Map  </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 4))) 
    </robase>
      requires  LabelId in_keys (ROMap)

  // .string S
  rule <k> .string S:String  =>  
    storeToMemory(
        createMIntMapFromString(S +String "\x00"), 
        ptr(L, NextOffset), 
        (lengthString(S) +Int 1) *Int 8)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <rotargets> ROMap:Map => ROMap[LabelId <- ptr(L, NextOffset)] </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, lengthString(S) +Int 1))) 
    </robase>
      requires notBool LabelId in_keys (ROMap)

  rule <k> .string S:String  =>  
    storeToMemory(
        createMIntMapFromString(S +String Int2String(0)), 
        ptr(L, NextOffset), 
        (lengthString(S) +Int 1) *Int 8)
  ...</k>
    <rotargets> ROMap:Map  </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, lengthString(S) +Int 1))) 
    </robase>
      requires  LabelId in_keys (ROMap)

  /*@
    Record the PC corresponding to labels. 
  */  
  rule <k> (LabelId:X86Id:):Label => . ...</k>
        <functargets> FMap:Map => FMap[LabelId <- L] </functargets>
        <nextLocPc> L </nextLocPc>
        <lastseenlabel> _:K => LabelId </lastseenlabel>

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
