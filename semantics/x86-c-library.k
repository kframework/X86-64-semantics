require "x86-configuration.k"
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

  rule String2Int("") => 0

  // Implementation of the common C library for X86
  rule isNullFDPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullFPosPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullStrPtr(PV:PointerVal) => isPointerValNull(PV)
  rule isNullBufPtr(PV:PointerVal) => isPointerValNull(PV)

  rule PV:PointerVal +chars Offs:Int => PV +bytes Offs
  rule ptr(L:MemLoc, Offs:MInt) +bytes Offs2:Int
       =>
       ptr(L, 
           mi(bitwidthMInt(Offs), uvalueMInt(Offs) +Int Offs2 /**Int 8*/))
    requires uvalueMInt(Offs) +Int Offs2 /**Int 8*/ <Int (2 ^Int bitwidthMInt(Offs) -Int 1)

  // FD
  syntax MInt ::= "fdBitOffset" [function]
  rule fdBitOffset => mi(64, 0)

  rule getValidFD(ptr(L:MemLoc, Offs:MInt))
       =>
       checkFD(loadFromMemory(ptr(L, addMInt(Offs, fdBitOffset)), 32))

  syntax KItem ::= checkFD(K) [strict]
  rule checkFD(memLoadValue(FD:MInt)) => svalueMInt(FD)
    requires svalueMInt(FD) =/=Int 0
  rule checkFD(FD:MInt) => invalidLibCValue
    requires svalueMInt(FD) ==Int 0

  rule setValidFD(ptr(L:MemLoc, Offs:MInt), FD:Int)
       =>
       storeToMemory(mi(32, FD), 
           ptr(L, addMInt(Offs, fdBitOffset)), 32)

  /*
  syntax Int ::= "fposBitOffset" [function]
  syntax Int ::= "fposPosBitOffset" [function]
  syntax Int ::= "fposPathBitOffset" [function]
  rule fposBitOffset => 0
  rule fposPosBitOffset => 0
  rule fposPathBitOffset => 64

  rule getValidFPos(ptr(L:MemLoc, Offs:Int)) =>
       checkFPos(loadFromMemory(ptr(L, Offs +Int fposBitOffset), tInt(64)))

  syntax KItem ::= checkFPos(K) [strict]
  rule checkFPos(typedVal(tInt(64), ptr(L:MemLoc, Offs:Int)))
       =>
       makeFPos(
         checkFPosPos(loadFromMemory(ptr(L, Offs +Int fposPosBitOffset),
                                     tInt(64))),
         checkFPosPath(loadFromMemory(ptr(L, Offs +Int fposPathBitOffset),
                                      tPtr(tInt(8)))))
  rule checkFPos(typedVal(tInt(64), undef)) => invalidLibCValue
  */

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
    requires S =/=String ""//
  rule writeString(PV:PointerVal, "") => storeToMemory(mi(8,0), PV, 8)

  rule writeAsChars(PV:PointerVal, S:String)
       =>
       writeCharBytes(PV, S)

  rule writeAsString(PV:PointerVal, S:String)
       =>
       writeString(PV, S)


  // formatter
  rule isTypeCompatibleWithFormat(MI:MInt, FormatSpec:String,
                                  FormatLengthSpec:String)
       =>
       isValidTypeFormatPair(MI, FormatSpec, FormatLengthSpec)

  syntax Bool ::= isValidTypeFormatPair(MInt, String, String) [function]
  rule isValidTypeFormatPair(MI:MInt, "%c", "") => true
  rule isValidTypeFormatPair(MI:MInt, "%d", "") => true
  rule isValidTypeFormatPair(MI:MInt, "%f", "") => true
  rule isValidTypeFormatPair(MI:MInt, "%s", "") => true
  rule isValidTypeFormatPair(MI:MInt, "%p", "") => true
  //rule isValidTypeFormatPair(PV:PointerVal, "%p", "") => true
  //rule isValidTypeFormatPair(_:MInt, _:String, _:String) => false [owise]

  // %c
  rule <k> getValueToPrint(C:MInt, "%c", "") => formatChar(svalueMInt(getRegisterValue(%rsi, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 0

  rule <k> getValueToPrint(C:MInt, "%c", "") => formatChar(svalueMInt(getRegisterValue(%rdx, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 1

  rule <k> getValueToPrint(C:MInt, "%c", "") => formatChar(svalueMInt(getRegisterValue(%rcx, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 2

  rule <k> getValueToPrint(C:MInt, "%c", "") => formatChar(svalueMInt(getRegisterValue(%r8, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 3

  rule <k>  getValueToPrint(C:MInt, "%c", "") => formatChar(svalueMInt(getRegisterValue(%r9, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 4

  // %d    
  rule <k> getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(getRegisterValue(%rsi, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 0

  rule <k> getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(getRegisterValue(%rdx, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 1

  rule <k> getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(getRegisterValue(%rcx, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 2

  rule <k> getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(getRegisterValue(%r8, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 3

  rule <k> getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(getRegisterValue(%r9, RSMap)))
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 4

  // %p    
  rule <k> getValueToPrint(PV:PointerVal, "%p", "") => formatPointer({getRegisterValue(%rsi, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 0

  rule <k> getValueToPrint(C:MInt, "%p", "") => formatPointer({getRegisterValue(%rdx, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 1

  rule <k> getValueToPrint(C:MInt, "%p", "") => formatPointer({getRegisterValue(%rcx, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 2

  rule <k> getValueToPrint(C:MInt, "%p", "") => formatPointer({getRegisterValue(%r8, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 3

  rule <k> getValueToPrint(C:MInt, "%p", "") => formatPointer({getRegisterValue(%r9, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 4

  // %s    
  rule <k> getValueToPrint(C:MInt, "%s", "") => formatString({getRegisterValue(%rsi, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 0

  rule <k> getValueToPrint(C:MInt, "%s", "") => formatString({getRegisterValue(%rdx, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 1

  rule <k> getValueToPrint(C:MInt, "%s", "") => formatString({getRegisterValue(%rcx, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 2

  rule <k> getValueToPrint(C:MInt, "%s", "") => formatString({getRegisterValue(%r8, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 3

  rule <k> getValueToPrint(C:MInt, "%s", "") => formatString({getRegisterValue(%r9, RSMap)}:>PointerVal)
  ...</k>
    <formatcountint> I => I +Int 1 </formatcountint>
    <regstate> RSMap </regstate>
      requires I ==Int 4


  // %f    
  rule <k> getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(extractMInt(getRegisterValue(%xmm0, RSMap), 64, 128), 53, 11))
  ...</k>
    <formatcountfloat> I => I +Int 1 </formatcountfloat>
    <regstate> RSMap </regstate>
      requires I ==Int 0

  rule <k> getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(extractMInt(getRegisterValue(%xmm1, RSMap), 64, 128), 53, 11))
  ...</k>
    <formatcountfloat> I => I +Int 1 </formatcountfloat>
    <regstate> RSMap </regstate>
      requires I ==Int 1

  rule <k> getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(extractMInt(getRegisterValue(%xmm2, RSMap), 64, 128), 53, 11))
  ...</k>
    <formatcountfloat> I => I +Int 1 </formatcountfloat>
    <regstate> RSMap </regstate>
      requires I ==Int 2

  rule <k> getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(extractMInt(getRegisterValue(%xmm3, RSMap), 64, 128), 53, 11))
  ...</k>
    <formatcountfloat> I => I +Int 1 </formatcountfloat>
    <regstate> RSMap </regstate>
      requires I ==Int 3

  rule <k> getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(extractMInt(getRegisterValue(%xmm4, RSMap), 64, 128), 53, 11))
  ...</k>
    <formatcountfloat> I => I +Int 1 </formatcountfloat>
    <regstate> RSMap </regstate>
      requires I ==Int 4

  //rule getValueToPrint(C:MInt, "%d", "") => formatInt(svalueMInt(C))
  //rule getValueToPrint(C:MInt, "%f", "") => formatFloat(MInt2Float(C, 53, 11))
  //rule getValueToPrint(PV:PointerVal, "%s", "") => formatString(PV)
  //rule getValueToPrint(PV:PointerVal, "%p", "") => formatPointer(PV)

  rule allocFile
       =>
       allocateLocalMemory(4, 0) ~>
       allocFile
  rule L:MemLoc ~> allocFile => ptr(L, mi(64, 0))

  rule freeFile(FPtr:PointerVal) => freeMemory(FPtr)


  rule asCInt(I:Int) => setRegisterValue(mi(64, I), %rax)
  rule asCLongInt(I:Int) => setRegisterValue(mi(64, I), %rax)
  rule asCSize(I:Int) => setRegisterValue(mi(64, I), %rax)
  rule asCFILEPtr(PV:PointerVal) => setRegisterValue(PV, %rax)
  rule asCCharPtr(PV:PointerVal) => setRegisterValue(PV, %rax)
  rule nullFilePointer => setRegisterValue(null, %rax)
  rule nullStringPointer => setRegisterValue(null, %rax)

  rule isEqToOne(MI:MInt) => eqMInt(MI, mi(bitwidthMInt(MI), 1))
  rule <k> setErrno(E:Int) => . ...</k>
endmodule

