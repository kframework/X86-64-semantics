require "x86-configuration.k"

module X86-INIT-SYNTAX
  imports LIST
  imports STRING
  imports MINT

  syntax RegValPair ::= "regvalpair" "(" String "," MInt ")"
  syntax RegValPairList ::= List{RegValPair, ""} [klabel(regvalpairlist)]


  syntax KItem ::= initEnvironment(List)
  syntax KItem ::= initRegisters(RegValPairList)
endmodule

module X86-INIT
  imports X86-CONFIGURATION

  /*@
    Initialize register with user supplied values.
  */
  rule <k> 
    initRegisters(.RegValPairList) => .  
  ...</k>
  rule <k>
      initRegisters(regvalpair(R:String, V:MInt ) Rest:RegValPairList) => 
        initRegisters(Rest)
  ...</k>
      <regstate>...  .Map => R |-> V    ...</regstate>



  /*@
    Initialization involves:
    1. Allocating stack and environment memory (16 bytes alligned)
    2. Setting up argc and argv in environment memory.
  */  
  rule initEnvironment(L:List) =>
     allocateStackMemory(64, 16 *Int 8) ~> initReturnFromEntryFunction ~> initArgc(mySize(L)) ~> initArgv(L)
     ~> initIOStreams

  /*@ 
    Initialize IO Streams   
  */
  syntax KItem ::= "initIOStreams"
  rule <k> initIOStreams => . ...</k>
       <open-files>
         _:Set => SetItem(#stdin) SetItem(#stdout) SetItem(#stderr)
       </open-files>
       <files>... (.Bag =>
         <file>...
           <fid> #stdin </fid>
           <uri> stdinStr </uri>
           <mode> "r" </mode>
           <buffer-mode> lineBuf </buffer-mode>
         ...</file>
         <file>...
           <fid> #stdout </fid>
           <uri> stdoutStr </uri>
           <mode> "w" </mode>
           <buffer-mode> lineBuf </buffer-mode>
         ...</file>
         <file>...
           <fid> #stderr </fid>
           <uri> stdoutStr </uri>
           <mode> "w" </mode>
           <buffer-mode> noBuf </buffer-mode>
         ...</file>)
       ...</files>

  // These helpers are used to get around a bug in K related to successive
  // ``/''s in strings.
  syntax KItem ::= "stdinStr" [function] | "stdoutStr" [function]
  rule stdinStr => "stdin:/" +String "/" +String "/"
  rule stdoutStr => "stdout:/" +String "/" +String "/"

  /*@
    Store a fake return adress mi(64, -1) which signals program executaion halt. 
  */  
  syntax KItem ::=  "initReturnFromEntryFunction"
  rule <k> initReturnFromEntryFunction => storeToMemory(mi(64, -1), ptr(L, BaseOffset), 64)
  ...</k>
      <stackbase> stackBaseInfo( L:MemLoc, BaseOffset:MInt) </stackbase>

  syntax Int ::= mySize(List) [function]
  rule mySize(.List) => 0
  rule mySize(ListItem(_) L:List) => mySize(L) +Int 1

  /*@
    Initialize argc  
  */  
  syntax KItem ::= initArgc(Int)
  rule <k> initArgc(N:Int) => . ...</k>
    <argc> _ => N </argc>
    <regstate> RSMAP => RSMAP["RDI" <- mi(addrSize, N)] </regstate>

  /*@
    Initialize argv  
  */  
  syntax KItem ::= initArgv(List)
  
  /*@
    For empty argv list , do nothing
  */
  rule <k> initArgv(.List) => . ...</k>
    <regstate> RSMAP => RSMAP["RSI" <- mi(addrSize, 0)] </regstate>
  
  /*@
    For non-empty argv list, start initializing memory with individual strings and keep collecting the 
      corresponding start offsets in a map.
  */
  rule <k> initArgv(ListItem(Arg:String) Rest:List) => 
      initArgs(0, .Map, ListItem(Arg:String) Rest:List, addMInt(ArgvP, mi(addrSize, Argc *Int 8)) ) ...</k>
    <argv> ArgvP:MInt </argv>
    <argc> Argc:Int </argc>
    <regstate> RSMAP => RSMAP["RSI" <- ArgvP] </regstate>

  /*@
    initArgs(Counter, AccumulatorMap, SourceList, StartAddress which is (ArgvP + Argc number of pointers)
  */  
  syntax KItem ::= initArgs(Int, Map, List, MInt)

  /*@
    Once we are done collecting Argc number of char* pointers (8 bytes) in map M,
    we store it at address ArgvP
  */  
  rule <k> initArgs(Argc, M:Map, .List, _:MInt) => 
    storeToMemory(mimap(M), ArgvP, Argc *Int 8 *Int 8)
  ...</k>
    <argv> ArgvP:MInt </argv>
    <argc> Argc:Int </argc>

  /*@
    Otherwise store the string pointed to Arg in NextAddress and record the NextAddress in a map. 
  */  
  rule initArgs(C:Int, AddrAccum:Map, ListItem(Arg:String) Rest:List, NextAddress:MInt) =>
    storeAndRecord(C:Int, AddrAccum:Map, ListItem(Arg:String) Rest:List, NextAddress:MInt, lengthString(Arg), createMIntMapFromString(Arg))

  syntax KItem ::= storeAndRecord(Int, Map, List, MInt, Int, MIntMap)

  rule storeAndRecord(C:Int, AddrAccum:Map, ListItem(Arg:String) Rest:List, NextAddress:MInt, LenStr:Int, mimap(MapFromStr):MIntMap) =>
    storeToMemory(mimap(MapFromStr[LenStr <- mi(8, 0)]), NextAddress, (LenStr +Int 1) *Int 8) ~>
    initArgs(C +Int 1, AddrAccum[C <- NextAddress], Rest, addMInt(NextAddress, mi(addrSize, LenStr +Int 1)) )

endmodule
