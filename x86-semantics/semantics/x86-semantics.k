require "x86-loader.k"
require "x86-fetch-execute.k"
require "x86-abstract-semantics.k"
require "x86-flag-checks.k"
require "x86-verification-lemmas.k"
require "x86-instructions-semantics.k"
require "x86-memory.k"
require "common/common.k"


module X86-INIT-SYNTAX
  imports LIST

  syntax KItem ::= initEnvironment(List)
endmodule

module X86-INIT
  //imports X86-INIT-SYNTAX
  imports X86-CONFIGURATION

  /*@
    Initialization involves:
    1. Allocating stack and environment memory (16 bytes alligned)
    2. Setting up argc and argv in environment memory.
  */  
  rule initEnvironment(L:List) =>
     allocateStackMemory(128, 16 *Int 8) // ~> initArgc(mySize(L)) ~> initArgv(L)

  // syntax Int ::= mySize(List) [function]
  // rule mySize(.List) => 0
  // rule mySize(ListItem(_) L:List) => mySize(L) +Int 1

  /*@
    Initialize argc  
  */  
  // syntax KItem ::= initArgc(Int)
  // rule <k> initArgc(N:Int) => . ...</k>
  //   <argc> _ => N </argc>
  //   <rsp> MI:MInt  </rsp>
  //   <argv> _ => MI </argv>

  /*@
    Initialize argv  
      For empty argv, do nothing
      For non-empty argv, start initializing memory with individual values and keep collecting the 
        individual start offsets in a map.
  */  
  // syntax KItem ::= initArgv(List)
  // rule <k> initArgv(.List) => . ...</k>
  // rule <k> initArgv(L:List) => initArgs(0, .Map, L, ArgvP +Int (Argc *Int 8)) ...</k>
  //   <argv> ArgvP:MInt </argv>
  //   <argc> Argc:Int </argc>

  // syntax KItem ::= initArgs(Int, Map, List, MInt)

  /*@
    Once we are done collecting Argc number of offsets (for each char* address),
    store it at address ArgvP
  */  
  // rule <k> initArgs(Argc, M:Map, .List, _:MInt) => 
  //   storeToMemory(mintmap(M), ArgvP, Argc *Int 8 *Int 8)
  // ...</k>
  //   <argv> ArgvP:MInt </argv>
  //   <argc> Argc:Int </argc>

  // rule initArgs(I:Int, M:Map, ListItem(Arg:String) Rest:List, NextAddress:MInt)
  //      =>
  //      storeAndRecord(I, lengthString(Arg), arrayValFromString(Arg), NextAddress, ListItem(Arg:String) Rest:List)

  // syntax KItem ::= storeAndRecord(Int, Int, Map, List, MInt)
  // rule storeAndRecord(I:Int, N:Int, M:Map, ListItem(Arg:String) Rest:List, NextAddress:MInt) =>
  //   storeToMemory(mintmap(M[N <- 0]), NextAddress, (N +Int 1) *Int 8) ~>
  //   initArgs(I +Int 1, M[I <- ArgP], Rest, NextAddress +Int (N +Int 1) *Int 8)

endmodule


module X86-SEMANTICS
  imports X86-LOADER
  imports X86-INIT
  imports X86-FETCH-EXECUTE
  imports X86-ABSTRACT-SEMANTICS
  imports X86-FLAG-CHECKS
  imports X86-VERIFICATION-LEMMAS
  imports X86-INSTRUCTIONS-SEMANTICS
  imports X86-MEMORY
  imports COMMON

endmodule
