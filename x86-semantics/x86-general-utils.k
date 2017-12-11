module MINT-WRAPPER-SYNTAX
  imports MINT
  imports FLOAT

  syntax MInt ::= "undef"
  syntax MInt ::= "zeroMIntW1"
  syntax MInt ::= "zeroMIntW64"
  syntax MInt ::= "zeroMIntW256"
  syntax MInt ::= "oneMIntW1"
  syntax MInt ::= "oneMIntW64"


  syntax MInts ::= List{MInt, ""} [klabel(mintlist)]

  /*@
    splitVector(MI, W): Splits the Bitvector MI into a List of
    bitwidthMInt(MI)/W Bitvectors each of width W.
  */
  syntax MInts ::= splitVector(MInt, Int) [function]
  syntax MInts ::= splitVectorHelper(MInt, Int, Int) [function]

  /*@
    joinVector(MIs): Concatenates a list of Bitvectors MIs to a
    single Bitvector of size equals added bitwidths.
  */
  syntax MInt ::= joinVector(MInts) [function]

  /*@
    operateOnVector(MI1, MI2, Vop, OpW): Performs vector operation
    Vop elementwise on two lists MI1, MI2 of MInts.
    OpW: Width of the operation. Typical values: 32 or 64.
  */
  syntax VOperation ::= "vfadd" [token]
                      | "vfsub" [token]                  
                      | "vfmul" [token]                  
                      | "vfdiv" [token]                  
                      | "vfmax" [token]                  
                      | "vfmin" [token]                  
                      | "vfsqrt" [token]                  
                      | "viadd" [token]                  
                      | "visub" [token]                  
                      | "vimul" [token]                  
                      | "vidiv" [token]                  
  syntax MInts ::= operateOnVector(MInts, MInts, VOperation, Int) [function]
  syntax MInts ::= operateOnVectorHelper(MInts, MInts, VOperation, Int, Int) [function]
  syntax MInts ::= operateOnVector(MInts, VOperation, Int) [function]
  syntax MInts ::= operateOnVectorHelper(MInts, VOperation, Int, Int) [function]

  /*@
    Bitwise negation
  */  
  syntax MInt ::= shiftLeft(MInt, Int)   [function]

  /*@
    Bitwise negation
  */  
  syntax MInt ::= negateMInt(MInt)   [function]

  /*@ 
    Adding MInt List.
  */  
  syntax MInt ::= addListMInt(Int, MInts) [function]

  /*@ 
    Conversion from/to MInt and Bool
  */  
  syntax Bool ::= toBool(MInt) [function]
  syntax MInt ::= fromBool(Bool, Int) [function]

  /*@ extractMask(MI, W, S) Extracts the lower W bits 
    from MInt starting from lower significant bit position S.

    Ex: extractMask(MI, 16, 8):
        MI:64' 0x 00 ff 00 ff 00 ff 00 ff
        Output:                  <---> 
          MI:16' 0x                 ff 00
    Todo :check for MI wodth < W
  */
  syntax MInt ::= extractMask(MInt, Int, Int) [function]

  /*@ truncate(MI, To) Truncates a mi(From,V1) to mi(To,V2)
    Todo : type check
  */
  syntax MInt ::= truncate(MInt, Int) [function]

  /*@ 
    zeroExtend(MI, N): Zero extend MInt MI to a MInt of
      N bitwidth.
  */
  syntax MInt ::= zeroExtend(MInt, Int) [function]

  /*@ 
    plugInMask(MITarget, MISrc, S): 
      Let MITarget == mi(WT, VT)
      Let MISrc == mi(WS, VS)
      plugInMask updates the lower WS bits of VT starting at 
      lower significant bit position S with VS.

      Ex: plugInMask(MIT,MIS, 8):
        MIT:64' 0x 00 ff 00 ff 00 ff 00 ff
        MIS:16' 0x                   55 44
        Output:
            64' 0x 00 ff 00 ff 00 55 44 ff
  */
  syntax MInt ::= plugInMask(MInt, MInt, Int) [function]

  /*@ 
    signExtend(MI, N): Sign extend MInt MI to a MInt of
      N bitwidth.
  */
  syntax MInt ::= signExtend(MInt, Int) [function]

  /*@ 
    popCount(MI, N): Count the number of set bits, V, in MI and
    create a Mint(N, V)
  */
  syntax MInt ::= popCount(MInt) [function]
  syntax MInt ::= countOnes(MInt, Int) [function]

  /*@ 
    shiftCountMask(MIsrc, N): 
    if N == 64: return and(MIsrc, 0x3F) 
    else return and(MIsrc, 0x1F) 
  */
  syntax MInt ::= shiftCountMask(MInt, Int) [function]

  /*@ 
    getSignBit(MI): return mi(1, signBit of MI)
  */
  syntax MInt ::= getSignBit(MInt) [function]

  /*@ 
    getBit(MI, I): return Ith bit of MI
  */
  syntax MInt ::= getBit(MInt, Int) [function]

  /*@ 
    sarOverflow(MI): return the value of SAR
    operation on MI with count >= bitwidthMInt(MI)
  */
  syntax MInt ::= sarOverflow(MInt) [function]

  /*@ 
    shrOverflow(MI): return the value of SHR
    operation on MI with count >= bitwidthMInt(MI)
  */
  syntax MInt ::= shrOverflow(MInt) [function]

  /*@ 
    salOverflow(MI): return the value of SAL
    operation on MI with count >= bitwidthMInt(MI)
  */
  syntax MInt ::= salOverflow(MInt) [function]
endmodule


module MINT-WRAPPER
  imports MINT-WRAPPER-SYNTAX


  rule zeroMIntW1   =>  mi(1,  0) [macro]
  rule zeroMIntW64  =>  mi(64, 0) [macro]
  rule zeroMIntW256 =>  mi(256,0) [macro]
  rule oneMIntW1    =>  mi(1,  1) [macro]
  rule oneMIntW64   =>  mi(64, 1) [macro]

  /*@
    splitVector(MI, W): Splits the Bitvector MI into a List of
    bitwidthMInt(MI)/W Bitvectors each of width W.
  */
  rule splitVector(MI, W) => splitVectorHelper(MI, W, 0)
      requires bitwidthMInt(MI) >=Int W andBool 0 =/=Int W
  rule splitVector(MI, W) => .MInts 
     requires bitwidthMInt(MI) <Int W orBool 0 ==Int W

  rule splitVectorHelper(MI, W, P) => 
    extractMInt(MI, P, P +Int W) splitVectorHelper(MI, W, P +Int W)
      requires bitwidthMInt(MI) >Int P

  rule splitVectorHelper(MI, W, P) => .MInts
      requires bitwidthMInt(MI) ==Int P

  /*@
    joinVector(MIs): Concatenates a list of Bitvectors MIs to a
    single Bitvector of size equals added bitwidths.
  */
  rule joinVector(MI .MInts) => MI
  rule joinVector(MI Rest) => concatenateMInt(MI, joinVector(Rest))

  /*@
    operateOnVector(MI1, MI2, Vop, OpW): Performs vector operation
    Vop elementwise on two lists MI1, MI2 of MInts.
    OpW: Width of the operation. Typical values: 32 or 64.
  */
  rule operateOnVector(MI1, MI2, OP, OPW) => operateOnVectorHelper(MI1, MI2, OP, 53, 11)
      requires OPW ==Int 64
  rule operateOnVector(MI1, MI2, OP, OPW) => operateOnVectorHelper(MI1, MI2, OP, 24, 8)
      requires OPW ==Int 32
  rule operateOnVector(MI, OP, OPW) => operateOnVectorHelper(MI, OP, 53, 11)
      requires OPW ==Int 64
  rule operateOnVector(MI, OP, OPW) => operateOnVectorHelper(MI, OP, 24, 8)
      requires OPW ==Int 32

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfadd, P, E) => 
    Float2MInt(MInt2Float(MI1, P, E) +Float MInt2Float(MI2, P, E), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfadd, P, E)

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfsub, P, E) => 
    Float2MInt(MInt2Float(MI1, P, E) -Float MInt2Float(MI2, P, E), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfsub, P, E)

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfmul, P, E) => 
    Float2MInt(MInt2Float(MI1, P, E) *Float MInt2Float(MI2, P, E), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfmul, P, E)

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfdiv, P, E) => 
    Float2MInt(MInt2Float(MI1, P, E) /Float MInt2Float(MI2, P, E), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfdiv, P, E)

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfmax, P, E) => 
    Float2MInt(maxFloat(MInt2Float(MI1, P, E), MInt2Float(MI2, P, E)), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfmax, P, E)

  rule operateOnVectorHelper(MI1 MI1s, MI2 MI2s, vfmin, P, E) => 
    Float2MInt(minFloat(MInt2Float(MI1, P, E), MInt2Float(MI2, P, E)), P +Int E)  
    operateOnVectorHelper(MI1s, MI2s, vfmin, P, E)

  rule operateOnVectorHelper(MI MIs, vfsqrt, P, E) => 
    Float2MInt(sqrtFloat(MInt2Float(MI, P, E)), P +Int E)  operateOnVectorHelper(MIs, vfsqrt, P, E)

  rule operateOnVectorHelper(.MInts, .MInts, _, _, _) => .MInts

  /*@
    Bitwise negation
  */  
  rule shiftLeft(MI, I) => 
    extractMInt(shlMInt(MI, I), 0, bitwidthMInt(MI))

  /*@
    Bitwise negation
  */  
  rule negateMInt(MI) => xorMInt(MI, mi(bitwidthMInt(MI), -1))

  /*@ 
    Adding MInt List.
  */  
  rule addListMInt(W:Int, MI1:MInt MI2:MInt Rest:MInts) => 
    addMInt(addMInt(MI1, MI2), addListMInt(W, Rest))
  rule addListMInt(W:Int, MI:MInt .MInts) => MI
  rule addListMInt(W:Int, .MInts) => mi(W,0) 

  /*@ 
    Conversion from/to MInt and Bool
  */  
  rule toBool(MI) => true
    requires uvalueMInt(MI) =/=Int 0
  rule toBool(MI) => false
    requires uvalueMInt(MI) ==Int 0

  rule fromBool(B:Bool, W:Int) => mi(W,1)
    requires B
  rule fromBool(B:Bool, W:Int) => mi(W,0)
    requires notBool B

  /*@ extractMask(MI, W, S) Extracts the lower W bits 
    from MInt starting from lower significant bit position S.

    Ex: extractMask(MI, 16, 8):
        MI:64' 0x 00 ff 00 ff 00 ff 00 ff
        Output:                  <---> 
          MI:16' 0x                 ff 00
    Todo :check for MI wodth < W
  */
  rule extractMask(MI, W, S) => 
    truncate(lshrMInt(MI, S), W)
    
  /*@ truncate(MI, To) Truncates a mi(From,V1) to mi(To,V2)
    Todo : type check
  */

  rule truncate(MI, To) => 
    mi(To, svalueMInt(andMInt(MI, mi(bitwidthMInt(MI),umaxMInt(To)))))
  /*@ 
    zeroExtend(MI, N): Zero extend MInt MI to a MInt of
      N bitwidth.
  */
  rule zeroExtend(MI:MInt, N:Int) => mi(N, uvalueMInt(MI))
  requires N >Int bitwidthMInt(MI)
  rule zeroExtend(MI:MInt, N:Int) => MI
  requires N <=Int bitwidthMInt(MI)

  /*@ 
    plugInMask(MITarget, MISrc, S): 
      Let MITarget == mi(WT, VT)
      Let MISrc == mi(WS, VS)
      plugInMask updates the lower WS bits of VT starting at 
      lower significant bit position S with VS.

      Ex: plugInMask(MIT,MIS, 8):
        MIT:64' 0x 00 ff 00 ff 00 ff 00 ff
        MIS:16' 0x                   55 44
        Output:
            64' 0x 00 ff 00 ff 00 55 44 ff
  */
  rule plugInMask(MITarget, MISrc, _) => MISrc
    requires bitwidthMInt(MISrc) >=Int bitwidthMInt(MITarget)

  rule plugInMask(MITarget, MISrc, S) => 
    orMInt(
      andMInt(
          MITarget, 
          negateMInt(
            shlMInt(
              mi(bitwidthMInt(MITarget), umaxMInt(bitwidthMInt(MISrc))),
              S)
          )
      ),
      shlMInt(zeroExtend(MISrc, bitwidthMInt(MITarget)), S)
    )
    requires bitwidthMInt(MISrc) <Int bitwidthMInt(MITarget)


  /*@ 
    signExtend(MI, N): Sign extend MInt MI to a MInt of
      N bitwidth.
  */
  syntax MInt ::= signExtend(MInt, Int) [function]

  rule signExtend(MI:MInt, N:Int) => mi(N, svalueMInt(MI))
      requires N >Int bitwidthMInt(MI)
  
  rule signExtend(MI:MInt, N:Int) => MI
    requires N <=Int bitwidthMInt(MI)

  /*@ 
    popCount(MI, N): Count the number of set bits, V, in MI and
    create a Mint(N, V)
  */
  rule popCount(MI:MInt) => countOnes(MI, 0)

  rule countOnes(MI:MInt, C:Int) => 
    countOnes(andMInt(MI, subMInt(MI, mi(bitwidthMInt(MI),1))), C +Int 1)
      requires notBool zeroMInt(MI)

  rule countOnes(MI:MInt, C:Int) => mi(bitwidthMInt(MI), C) 
      requires zeroMInt(MI)

  /*@ 
    shiftCountMask(MIsrc, N): 
    if N == 64: return and(MIsrc, 0x3F) 
    else return and(MIsrc, 0x1F) 
  */
  rule shiftCountMask(MI:MInt, I:Int) => 
    andMInt(MI, mi(bitwidthMInt(MI), 63))
  requires I ==Int 64

  rule shiftCountMask(MI:MInt, I:Int) => 
    andMInt(MI, mi(bitwidthMInt(MI), 31))
  requires I =/=Int 64

  /*@ 
    getSignBit(MI): return mi(1, signBit of MI)
  */
  rule getSignBit(MI:MInt) => 
    fromBool( toBool(
        andMInt(MI, 
            mi(bitwidthMInt(MI), sminMInt(bitwidthMInt(MI)))
        )
      ), 1)

  /*@ 
    getBit(MI, I): return Ith bit of MI
  */
  rule getBit(MI:MInt, I:Int) => 
    fromBool( toBool(
        andMInt(MI, shlMInt(mi(bitwidthMInt(MI), 1), I))
        ), 1)

  /*@ 
    sarOverflow(MI): return the value of SAR
    operation on MI with count >= bitwidthMInt(MI)
  */
  rule sarOverflow(MI:MInt) => mi(bitwidthMInt(MI), 0)
    requires zeroMInt(getSignBit(MI))
  rule sarOverflow(MI:MInt) => mi(bitwidthMInt(MI), -1)
    requires notBool zeroMInt(getSignBit(MI))

  /*@ 
    shrOverflow(MI): return the value of SHR
    operation on MI with count >= bitwidthMInt(MI)
  */
  rule shrOverflow(MI:MInt) => mi(bitwidthMInt(MI), 0)

  /*@ 
    salOverflow(MI): return the value of SAL
    operation on MI with count >= bitwidthMInt(MI)
  */
  rule salOverflow(MI:MInt) => mi(bitwidthMInt(MI), 0)
endmodule


module X86-GENERAL-UTILS
  imports MINT-WRAPPER
endmodule
