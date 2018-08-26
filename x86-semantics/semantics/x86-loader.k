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
  rule <k> .section .rodata  => . ...</k>
    <currentsection> _ => "rodata" </currentsection>

  rule <k> .data   => . ...</k>
    <currentsection> _ => "data" </currentsection>

  rule <k> .bss   => . ...</k>
    <currentsection> _ => "bss" </currentsection>

  rule <k> .text   => . ...</k>
    <currentsection> _ => "text" </currentsection>

  rule <k> .globl G:X86Id  => . ...</k>
  rule <k> .file _:String  => . ...</k>

  /*@
    Populate  data section
  */
  // .comm
  rule <k> .comm LabelId:X86Id, I:Int, _:Int  =>  
    storeToMemory(
        mi(I *Int 8, 0),
        ptr(L, NextOffset), 
        I *Int 8)
  ...</k>
    <functargets> FMap:Map => FMap[ LabelId <- ptr(L, NextOffset)] </functargets>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, I))) 
    </database>
      requires I >=Int 0

  /*@
    Populate current section
  */

  // .zero I in .bss section
  rule <k> .zero I:Int  =>  
    storeToMemory(
        mi(I *Int 8 , 0),
        ptr(L, NextOffset), 
       I *Int 8)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <bsstargets> BSSMap:Map => BSSMap[LabelId <- ptr(L, NextOffset)] </bsstargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <bssbase> 
      bssBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, I))) 
    </bssbase>
    <currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (BSSMap) andBool SectionName ==String "bss"

  rule <k> .zero I:Int  =>  
    storeToMemory(
        mi(I *Int 8 , 0),
        ptr(L, NextOffset), 
       I *Int 8)
  ...</k>
    <bsstargets> BSSMap:Map </bsstargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <bssbase> 
      bssBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, I))) 
    </bssbase>
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (BSSMap) andBool SectionName ==String "bss"    

  // .zero I in .data section
  rule <k> .zero I:Int  =>  
    storeToMemory(
        mi(I *Int 8 , 0),
        ptr(L, NextOffset), 
       I *Int 8)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <datatargets> DMap:Map => DMap[LabelId <- ptr(L, NextOffset)] </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, I))) 
    </database>
    //<currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (DMap) //andBool SectionName ==String "data"

  rule <k> .zero I:Int  =>  
    storeToMemory(
        mi(I *Int 8 , 0),
        ptr(L, NextOffset), 
       I *Int 8)
  ...</k>
    <datatargets> DMap:Map </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, I))) 
    </database>
    //<currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (DMap) //andBool SectionName ==String "data"    

  // .quad in .rodata section
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
    <currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (ROMap) andBool SectionName ==String "rodata" andBool SectionName =/=String "bss"

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
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (ROMap) andBool SectionName ==String "rodata" andBool SectionName =/=String "bss"

  // .quad L + I
  rule <k> .quad LabelId:X86Id   => .quad LabelId:X86Id + 0
  ...</k>

  rule <k> .quad LabelId:X86Id + I:Int  =>  
    storeToMemory(
        addMInt({FMap[LabelId]}:>PointerVal, mi(64, I)),
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
    <currentsection> SectionName:String </currentsection>
      requires (notBool LabelId in_keys (ROMap)) 
              andBool SectionName ==String "rodata" 
              andBool SectionName =/=String "bss"
              andBool LabelId in_keys (FMap)

  rule <k> .quad LabelId:X86Id + I:Int  =>  
    storeToMemory(
        addMInt({FMap[LabelId]}:>PointerVal, mi(64, I)),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <functargets> FMap:Map </functargets>
    <rotargets> ROMap:Map  </rotargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <robase> 
      roBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </robase>
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (ROMap) 
                andBool SectionName ==String "rodata" 
                andBool SectionName =/=String "bss"
                andBool LabelId in_keys (FMap)


  // .quad  in .data section
  // .quad I    
  rule <k> .quad I:Int  =>  
    storeToMemory(
        mi(64, I),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <datatargets> DMap:Map => DMap[LabelId <- ptr(L, NextOffset)] </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (DMap) andBool SectionName ==String "data" andBool SectionName =/=String "bss"

  rule <k> .quad I:Int  =>  
    storeToMemory(
        mi(64, I),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <datatargets> DMap:Map  </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (DMap) andBool SectionName ==String "data" andBool SectionName =/=String "bss"

  // .quad L + I
  rule <k> .quad LabelId:X86Id + I:Int  =>  
    storeToMemory(
        addMInt({FMap[LabelId]}:>PointerVal, mi(64, I)),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <datatargets> DMap:Map => DMap[LabelId <- ptr(L, NextOffset)] </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires (notBool LabelId in_keys (DMap)) 
                andBool SectionName ==String "data" 
                andBool SectionName =/=String "bss"
                andBool LabelId in_keys (FMap)

  rule <k> .quad LabelId:X86Id + I:Int  =>  
    storeToMemory(
        addMInt({FMap[LabelId]}:>PointerVal, mi(64, I)),
        ptr(L, NextOffset), 
        64)
  ...</k>
    <functargets> FMap:Map </functargets>
    <datatargets> DMap:Map  </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 8))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (DMap) 
                andBool SectionName ==String "data" 
                andBool SectionName =/=String "bss"
                andBool LabelId in_keys (FMap)

  // .long I in .rodata section
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
    <currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (ROMap) andBool SectionName ==String "rodata" andBool SectionName =/=String "bss"

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
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (ROMap) andBool SectionName ==String "rodata" andBool SectionName =/=String "bss"

  // .long I in .data section
  rule <k> .long I:Int  =>  
    storeToMemory(
        mi(32,I),
        ptr(L, NextOffset), 
        32)
  ...</k>
    <functargets> FMap:Map => FMap[LabelId <- ptr(L, NextOffset)] </functargets>
    <datatargets> DMap:Map => DMap[LabelId <- ptr(L, NextOffset)] </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 4))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires notBool LabelId in_keys (DMap) andBool SectionName ==String "data" andBool SectionName =/=String "bss"

  rule <k> .long I:Int  =>  
    storeToMemory(
        mi(32,I),
        ptr(L, NextOffset), 
        32)
  ...</k>
    <datatargets> DMap:Map  </datatargets>
    <lastseenlabel> LabelId:X86Id </lastseenlabel>
    <database> 
      dataBaseInfo(
          L:MemLoc, 
          BaseOffset:MInt, 
          NextOffset:MInt => addMInt(NextOffset, mi(addrSize, 4))) 
    </database>
    <currentsection> SectionName:String </currentsection>
      requires  LabelId in_keys (DMap) andBool SectionName ==String "data" andBool SectionName =/=String "bss"


  /*@
    Populate RO data
  */
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
