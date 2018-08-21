module X86-C-LIBRARY-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SORTS
  imports X86-ASBTRACT-SORTS
  imports MINT

  // Implementation of the common C library sorts for LLVM
  syntax FilePointer ::= PointerVal
  syntax FPosPointer ::= PointerVal
  syntax StringPointer ::= PointerVal
  syntax BufferPointer ::= PointerVal
  syntax VoidFunctionPointer ::= PointerVal
  syntax LibCValue ::= MInt
endmodule

module X86-C-LIBRARY
  imports X86-C-LIBRARY-SYNTAX
  imports X86-CONFIGURATION
  imports COMMON-C-LIBRARY-OPAQUE-SYNTAX
  imports COMMON-C-LIBRARY-IO-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SYNTAX
  imports COMMON-C-LIBRARY-UTILS-SYNTAX

  // Implementation of the common C library for X86
  rule isNullFDPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullFPosPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullStrPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullBufPtr(PV:PointerVal) => isPointerValNull(PV)

  rule PV:PointerVal +chars Offs:Int => PV +bytes Offs
  rule ptr(L:MemLoc, Offs:MInt) +bytes Offs2:Int
       =>
       ptr(L, 
           mi(bitwidthMInt(Offs), uvalueMInt(Offs) +Int Offs2 *Int 8))
    requires uvalueMInt(Offs) +Int Offs2 *Int 8 <Int (2 ^Int bitwidthMInt(Offs) -Int 1)

  // Read Write
  rule readBytes(PV:PointerVal, N:Int) => readBytesAux(PV, N, "")

  syntax KItem ::= readBytesAux(PointerVal, Int, String)
  rule (.K => loadFromMemory(PV, 8)) ~>
       readBytesAux(PV:PointerVal => {PV +bytes 1}:>PointerVal,
                     N:Int => N -Int 1, _:String)
    requires N =/=Int 0
  rule memLoadValue(C:MInt) ~> readBytesAux(PV:PointerVal, N:Int, S:String)
       =>
       readBytesAux(PV, N, S +String chrChar(svalueMInt(C)))
  rule readBytesAux(_:PointerVal, 0, S:String) => str(S)

  rule readString(PV:PointerVal) => readStringAux(PV, -1, "")
  rule readString(PV:PointerVal, N:Int) => readStringAux(PV, N, "")

  syntax KItem ::= readStringAux(PointerVal, Int, String)
  rule (.K => loadFromMemory(PV, 8)) ~>
       readStringAux(PV:PointerVal => {PV +bytes 1}:>PointerVal,
                     N:Int => N -Int 1, _:String)
    requires N =/=Int 0
  rule memLoadValue(C:MInt) ~> readStringAux(PV:PointerVal, N:Int, S:String)
       =>
       readStringAux(PV, N, S +String chrChar(svalueMInt(C)))
    requires svalueMInt(C) =/=Int 0
  rule memLoadValue(C:MInt) ~> readStringAux(_:PointerVal, _:Int, S:String)
       =>
       str(S)
    requires svalueMInt(C) ==Int 0
  rule readStringAux(_:PointerVal, 0, S:String) => str(S)

  rule writeCharBytes(PV:PointerVal, S:String)
       =>
       storeToMemory(mi(8, ordChar(firstChar(S))), PV, 8) ~>
       writeCharBytes({PV +bytes 1}:>PointerVal, butFirstChar(S))
    requires S =/=String ""
  rule writeCharBytes(PV:PointerVal, "") => .

  rule writeString(PV:PointerVal, S:String)
       =>
       storeToMemory(mi(8, ordChar(firstChar(S))), PV, 8) ~>
       writeString({PV +bytes 1}:>PointerVal, butFirstChar(S))
    requires S =/=String ""
  rule writeString(PV:PointerVal, "") => storeToMemory(mi(8,0), PV, 8)

  rule writeAsChars(PV:PointerVal, S:String)
       =>
       writeCharBytes(PV, S)

  rule writeAsString(PV:PointerVal, S:String)
       =>
       writeString(PV, S)

  rule asCInt(I:Int) => setRegisterValue(mi(64, I), %rax)

endmodule

