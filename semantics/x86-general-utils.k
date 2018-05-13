module MINT-WRAPPER-SORT
  syntax MIntMap
  syntax MInts
  syntax Floats
  syntax Ints
endmodule

module MINT-WRAPPER-SYNTAX
  imports MINT-WRAPPER-SORT
  imports MINT
  imports FLOAT
  imports STRING
  imports MAP
  imports INT

  syntax MInt ::= "undef"
  syntax MInt ::= "zeroMIntW1"
  syntax MInt ::= "zeroMIntW64"
  syntax MInt ::= "zeroMIntW256"
  syntax MInt ::= "oneMIntW1"
  syntax MInt ::= "oneMIntW64"

  /*@
    Sort List
  */
  syntax MIntMap ::= mimap( Map ) [klabel(mimap)]
  syntax MInts ::= List{MInt, ""} [klabel(mintlist)]
  syntax Floats ::= List{Float, ""} [klabel(floatlist)]
  syntax Ints ::= List{Int, ""} [klabel(intlist)]

  /*@
    Create a map of size N:Int with "undef" MInt  
  */
  syntax MIntMap ::= makeUndefMIntMap ( Int ) [function]

  /*@
    Create a map of mints from the elems of string.   
  */
  syntax MIntMap ::=  createMIntMapFromString(String) [function]

  /*@
    If Else Then for Sorts 
  */
  syntax MInt ::= "#ifMInt"   Bool "#then" MInt  "#else" MInt  "#fi" [function, smtlib(ite)]
  syntax Bool ::= "#ifBool"   Bool "#then" Bool  "#else" Bool  "#fi" [function, smtlib(ite)]
  syntax MInts ::= "#ifMInts" Bool "#then" MInts "#else" MInts "#fi" [function, smtlib(ite)]

  /*@
    Covert MInts to Signed Ints.
  */
  syntax Ints ::= convertMIntsToSInts(MInts) [function]

  /*@
    Covert MInts to Floats(or BigFloats).
  */
  syntax Floats ::= convertMIntsToFps(MInts, Int, Int) [function]

  /*@
    Covert Ints to Floats(or BigFloats).
  */
  syntax Floats ::= convertIntsToFps(Ints, Int, Int) [function]

  /*@
    Covert Floats to Ints.
  */
  syntax Ints ::= convertFpsToInts(Floats) [function]

  /*@
    Covert Floats to MInts.
  */
  syntax MInts ::= convertFpsToMInts(Floats, Int) [function]

  /*@
    Covert Ints to MInts.
  */
  syntax MInts ::= convertIntsToMInts(Ints, Int) [function]

  /*@
    Covert Single Precision Float to Double preceson Float.
  */
  syntax Floats ::= convertFloatsToDoubles(Floats) [function]

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
  syntax VOperation ::= "vfadd"         [token]
                      | "vfsub"         [token]                  
                      | "vfmul"         [token]                  
                      | "vfdiv"         [token]                  
                      | "vfmax"         [token]                  
                      | "vfmin"         [token]                  
                      | "viadd"         [token]                  
                      | "visub"         [token]                  
                      | "vimul"         [token]                  
                      | "vidiv"         [token]                  
                      // Unary operators                   
                      | "vfsqrt"        [token]                  
                      | "vfrsqrt"       [token]                  
                      | "vfnegate"      [token]                  
                      | "vfreciprocal"  [token]                  

  syntax MInts ::= operateOnVector(MInts, MInts, VOperation, Int) [function, klabel(binaryoperateonvector)]
  syntax MInts ::= operateOnVectorHelper(MInts, MInts, VOperation, Int, Int) [function, klabel(binaryoperateonvectorhelper)]
  syntax MInts ::= operateOnVector(MInts, VOperation, Int) [function, klabel(unaryoperateonvector)] 
  syntax MInts ::= operateOnVectorHelper(MInts, VOperation, Int, Int) [function, klabel(unaryoperateonvectorhelper)]

  // UIF operations
  syntax UIFBinOperation ::= "add_double"               [token] 
                      | "add_single"                    [token]                    
                      | "sub_double"                    [token]                    
                      | "sub_single"                    [token]                    
                      | "maxcmp_double"                 [token] 
                      | "maxcmp_single"                 [token] 
                      | "mincmp_double"                 [token] 
                      | "mincmp_single"                 [token] 
                      | "mul_double"                    [token] 
                      | "mul_single"                    [token] 
                      | "div_double"                    [token] 
                      | "div_single"                    [token] 

  syntax UIFTerOperation ::= "vfmadd132_double"             [token]
                          | "vfmadd132_single"              [token]
                          | "vfmsub132_double"              [token]
                          | "vfmsub132_single"              [token]
                          | "vfnmadd132_double"             [token]
                          | "vfnmadd132_single"             [token]  
                          | "vfnmsub132_double"             [token]
                          | "vfnmsub132_single"             [token]
                          | "vfmadd132_double"              [token]

  syntax UIFUOperation ::= "approx_reciprocal_double"     [token] 
                        | "approx_reciprocal_single"      [token] 
                        | "sqrt_double"                   [token] 
                        | "sqrt_single"                   [token] 
                        | "approx_reciprocal_sqrt_double" [token] 
                        | "approx_reciprocal_sqrt_single" [token] 
                        | "cvt_single_to_double"          [token] 
                        | "cvt_single_to_int32"           [token] 
                        | "cvt_single_to_int64"           [token] 
                        | "cvt_int32_to_single"           [token] 
                        | "cvt_int32_to_double"           [token] 


  syntax MInts ::= applyUIFs(MInts, UIFUOperation ) [function, klabel(unaryoperateonuifs)]
  syntax MInts ::= applyUIFs(MInts, MInts,  UIFBinOperation) [function, klabel(binaryoperateonuifs)]
  syntax MInts ::= applyUIFs(MInts, MInts, MInts,  UIFTerOperation) [function, klabel(ternaryoperateonuifs)]

  /*@
    The following are the uninterpreted functions F(BitVector theory) -> Bitvector Theory
    Help to prove equivalence between K rule and Strata's BVFs.
  */
  syntax MInt ::= UIFUOperation   "(" MInt ")"                [function]
  syntax MInt ::= UIFBinOperation "(" MInt "," MInt ")"       [function]
  syntax MInt ::= UIFTerOperation "(" MInt "," MInt "," MInt ")" [function]

  /*@
    Deprecated
  syntax MInt ::= shiftLeft(MInt, Int)   [function]
  */  

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
  syntax MInt ::= fromBoolToMInt(Bool, Int) [function]

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
    create a MInt(N, V)
  */
  syntax Int ::= popCount(MInt) [function]
  syntax Int ::= countOnes(MInt, Int) [function]

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
    getBitFromMInt(MI, I): return Ith bit of MI
  */
  syntax MInt ::= getBitFromMInt(MInt, Int) [function]

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

  /*@
    aShiftRightMInt(MI):
    ashrMInt works only if the the Biginteger value in MInt is signed
    and java BigInteger::shiftRight works on signed numbers.
    But as the MInt may contain unsigned Biginteger value, so we have to deliberately
    pass signed value of the MInt
  */  
  syntax MInt ::= aShiftRightMInt(MInt, Int) [function]
endmodule


module MINT-WRAPPER
  imports MINT-WRAPPER-SYNTAX


  rule zeroMIntW1   =>  mi(1,  0) [macro]
  rule zeroMIntW64  =>  mi(64, 0) [macro]
  rule zeroMIntW256 =>  mi(256,0) [macro]
  rule oneMIntW1    =>  mi(1,  1) [macro]
  rule oneMIntW64   =>  mi(64, 1) [macro]


  /*@
    The bitwodth of undef is defined as 8 bits.
    Used while allocating the undef stack memory,
  */
  rule bitwidthMInt(undef) => 8 [lemma]

  /*@
    Create a list of indef MInts  
  */
  rule makeUndefMIntMap ( N:Int ) => makeUndefMIntMapAux(N, 0, .Map)

  syntax MIntMap ::=  makeUndefMIntMapAux(Int, Int, Map) [function]

  rule makeUndefMIntMapAux(N:Int, N, M:Map) => mimap(M)
  rule makeUndefMIntMapAux(N:Int, I, M:Map) => 
    makeUndefMIntMapAux(N, I +Int 1, M[I <- undef])
      requires I <Int N

  /*@
    Create a map of MInt from the elems of String.   
  */
  rule createMIntMapFromString(S:String) => createMIntMapFromStringAux(0, S, .Map)

  syntax MIntMap ::= createMIntMapFromStringAux(Int, String, Map) [function]

  rule createMIntMapFromStringAux(N:Int, S:String, M:Map) => mimap(M)
    requires N ==Int lengthString(S)

  rule createMIntMapFromStringAux(I:Int, S:String, M:Map) =>
    createMIntMapFromStringAux(I +Int 1, S, M[ I <- mi(8, charAt(S, I)) ])
      requires I <Int lengthString(S)
  
  /*@
    Get Ascii value of a char.
  */
  syntax Int ::= charAt(String, Int) [function]
  rule charAt(S:String, I:Int) => ordChar(substrString(S, I, I +Int 1))

  /*@
    If Else Then for Sorts
  */
  rule #ifMInt B #then W #else _ #fi => W requires B
  rule #ifMInt B #then _ #else W #fi => W requires notBool B
  rule #ifBool B #then W #else _ #fi => W requires B
  rule #ifBool B #then _ #else W #fi => W requires notBool B
  rule #ifMInts B #then W #else _ #fi => W requires B
  rule #ifMInts B #then _ #else W #fi => W requires notBool B

  /*@
    Convert MInts to Signed Ints.
  */
  rule convertMIntsToSInts(MI MIs) => svalueMInt(MI) convertMIntsToSInts(MIs)
  rule convertMIntsToSInts(.MInts) => .Ints

  /*@
    Covert MInts to Floats(or BigFloats).
  */
  rule convertMIntsToFps(MI MIs, P, E) => MInt2Float(MI, P, E) convertMIntsToFps(MIs, P, E)
  rule convertMIntsToFps(.MInts, _, _) => .Floats

  /*@
    Covert Ints to Floats(or BigFloats).
  */
  rule convertIntsToFps(I Is, P, E) => Int2Float(I, P, E) convertIntsToFps(Is, P, E)
  rule convertIntsToFps(.Ints, _, _) => .Floats

  /*@
    Covert Floats to Ints.
  */
  rule convertFpsToInts(F Fs) => Float2Int(F) convertFpsToInts(Fs)
  rule convertFpsToInts(.Floats) => .Ints

  /*@
    Covert Floats to MInts.
  */
  rule convertFpsToMInts(F Fs, W) => Float2MInt(F, W) convertFpsToMInts(Fs, W)
  rule convertFpsToMInts(.Floats, _) => .MInts

  /*@
    Covert Ints to MInts.
  */
  rule convertIntsToMInts(I Is, W) => mi(I, W) convertIntsToMInts(Is, W)
  rule convertIntsToMInts(.Ints, _) => .MInts

  /*@
    Covert Single Precision Float to Double preceson Float.
  */
  rule convertFloatsToDoubles(F Fs) => Float2Double(F) convertFloatsToDoubles(Fs)
  rule convertFloatsToDoubles(.Floats) => .Floats

  /*@
    splitVector(MI, W): Splits the Bitvector MI into a List of
    bitwidthMInt(MI)/W Bitvectors each of width W.
  */
  rule splitVector(MI, W) => #ifMInts bitwidthMInt(MI) >=Int W andBool 0 =/=Int W 
                              #then 
                                splitVectorHelper(MI, W, 0) 
                              #else 
                                .MInts 
                             #fi

  rule splitVectorHelper(MI, W, P) => 
    extractMInt(MI, P, P +Int W) splitVectorHelper(MI, W, P +Int W)
      requires bitwidthMInt(MI) >Int P

  rule splitVectorHelper(MI, W, P) => .MInts
      requires bitwidthMInt(MI) ==Int P

  /*@
    joinVector(MIs): Concatenates a list of Bitvectors MIs to a
    single Bitvector of size equals added bitwidths.
  */
  rule joinVector(MI:MInt Rest) => MI
    requires Rest ==K .MInts                   

  rule joinVector(MI:MInt Rest) => concatenateMInt(MI, joinVector(Rest))
    requires Rest =/=K .MInts                   

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

  rule operateOnVectorHelper(MI MIs, vfrsqrt, P, E) => 
    Float2MInt(1.0 /Float sqrtFloat(MInt2Float(MI, P, E)), P +Int E)  operateOnVectorHelper(MIs, vfrsqrt, P, E)

  rule operateOnVectorHelper(MI MIs, vfnegate, P, E) => 
    Float2MInt(negateFloat(MInt2Float(MI, P, E)), P +Int E)  operateOnVectorHelper(MIs, vfnegate, P, E)

  rule operateOnVectorHelper(MI MIs, vfreciprocal, P, E) => 
    Float2MInt(1.0 /Float MInt2Float(MI, P, E), P +Int E)  operateOnVectorHelper(MIs, vfreciprocal, P, E)

  rule operateOnVectorHelper(.MInts, .MInts, _, _, _) => .MInts
  rule operateOnVectorHelper(.MInts, _, _, _) => .MInts

  /*@
    Operate on UIFs
  */
  rule 
    applyUIFs(MI1:MInt MI1s, UIF_U_OP:UIFUOperation) 
    => 
    UIF_U_OP(MI1) applyUIFs(MI1s, UIF_U_OP)

  rule 
    applyUIFs(MI1:MInt MI1s, MI2:MInt MI2s, UIF_BIN_OP:UIFBinOperation) 
    => 
    UIF_BIN_OP(MI1, MI2) applyUIFs(MI1s, MI2s, UIF_BIN_OP)

  rule 
    applyUIFs(MI1:MInt MI1s, MI2:MInt MI2s, MI3:MInt MI3s, UIF_TER_OP:UIFTerOperation) 
    => 
    UIF_TER_OP(MI1, MI2, MI3) applyUIFs(MI1s, MI2s, MI3s, UIF_TER_OP)

  rule applyUIFs(.MInts, _:UIFUOperation) => .MInts
  rule applyUIFs(.MInts, .MInts, _:UIFBinOperation) => .MInts
  rule applyUIFs(.MInts, .MInts, .MInts, _:UIFTerOperation) => .MInts

  /*@
    Deprecated
  rule shiftLeft(MI, I) => 
    extractMInt(shlMInt(MI, I), 0, bitwidthMInt(MI))
  */  

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
  rule toBool(MI) => #ifBool uvalueMInt(MI) =/=Int 0 
                      #then true 
                      #else false 
                     #fi

  rule fromBoolToMInt(B:Bool, W:Int) => #ifMInt B 
                                    #then mi(W,1) 
                                    #else mi(W,0) 
                                  #fi

  /*@ extractMask(MI, W, S) Extracts the lower W bits 
    from MInt starting from lower significant bit position S.

    Ex: extractMask(MI, 16, 8):
        MI:64' 0x 00 ff 00 ff 00 ff 00 ff
        Output:                  <---> 
          MI:16' 0x                 ff 00

    extractMask(MI, 4, 1)  
      6 5 4 3 2 1 0
      * * * * * * * 
          ------^

    extractMask(MI, NUM, P) <==> extractMInt(MI, S , S + NUM)  
      where S = bitwidthMInt(MI) - (P + NUM)

    Example, extractMInt(MI, 2, 6) // Bits in range [2..6) 

      0 1 2 3 4 5 6
      * * * * * * * 
          ^-------^
  */
  rule extractMask(MI, NUM, P) => extractMInt(MI, bitwidthMInt(MI) -Int P -Int NUM, 
      bitwidthMInt(MI) -Int P)
    requires (P +Int NUM) <=Int bitwidthMInt(MI)

  //  truncate(lshrMInt(MI, P), NUM)
    
  /*@ truncate(MI, To) Truncates a mi(From,V1) to mi(To,V2)
    Todo : type check
  */

  rule truncate(MI, To) => 
    mi(To, svalueMInt(andMInt(MI, mi(bitwidthMInt(MI),umaxMInt(To)))))

  /*@ 
    zeroExtend(MI, N): Zero extend MInt MI to a MInt of
      N bitwidth.
  rule zeroExtend(MI:MInt, N:Int) => mi(N, uvalueMInt(MI))
    requires N >=Int bitwidthMInt(MI)
  */
  rule zeroExtend(MI:MInt, N:Int) => MI
    requires N ==Int bitwidthMInt(MI)

  rule zeroExtend(MI:MInt, N:Int) => concatenateMInt(mi(N -Int bitwidthMInt(MI), 0), MI)
    requires N >Int bitwidthMInt(MI)

  /*@ 
    plugInMask(MITarget, MISrc, P): 
      Let MITarget == mi(WT, VT)
      Let MISrc == mi(WS, VS)
      plugInMask updates the lower WS bits of VT starting at 
      lower significant bit position P with VS.

      Ex: plugInMask(MIT,MIS, 8):
        MIT:64' 0x 00 ff 00 ff 00 ff 00 ff
        MIS:16' 0x                   55 44
        Output:
            64' 0x 00 ff 00 ff 00 55 44 ff
  */
  rule plugInMask(MITarget, MISrc, P) => MISrc
    requires (P ==Int 0) andBool (bitwidthMInt(MISrc) ==Int bitwidthMInt(MITarget))

  /*
  rule plugInMask(MITarget, MISrc, P) => 
    orMInt(
      andMInt(
          MITarget, 
          negateMInt(
            shlMInt(
              mi(bitwidthMInt(MITarget), umaxMInt(bitwidthMInt(MISrc))),
              P)
          )
      ),
      shlMInt(zeroExtend(MISrc, bitwidthMInt(MITarget)), P)
    )
    requires (P +Int bitwidthMInt(MISrc)) <=Int bitwidthMInt(MITarget)
    */

    rule plugInMask(MITarget, MISrc, P) => concatenateMInt(
          extractMask(MITarget, bitwidthMInt(MITarget) -Int bitwidthMInt(MISrc) , bitwidthMInt(MISrc)), 
          MISrc
          )
      requires (P ==Int 0) andBool (bitwidthMInt(MISrc) <Int bitwidthMInt(MITarget))

    rule plugInMask(MITarget, MISrc, P) => concatenateMInt(MISrc, extractMask(MITarget, P, 0))
      requires (P =/=Int 0) andBool ((P +Int bitwidthMInt(MISrc)) ==Int bitwidthMInt(MITarget))
    

    rule plugInMask(MITarget, MISrc, P) => concatenateMInt( 
          extractMask(MITarget, bitwidthMInt(MITarget) -Int bitwidthMInt(MISrc) -Int P , bitwidthMInt(MISrc) +Int P), 
          concatenateMInt(
            MISrc,
            extractMask(MITarget, P, 0)
            )
        )
      requires (P =/=Int 0) andBool ((P +Int bitwidthMInt(MISrc)) <Int bitwidthMInt(MITarget))

  /*@ 
    signExtend(MI, N): Sign extend MInt MI to a MInt of
      N bitwidth.
  */
  rule signExtend(MI:MInt, N:Int) => MI
    requires N ==Int bitwidthMInt(MI)
  
  rule signExtend(MI:MInt, N:Int) => mi(N, svalueMInt(MI)) 
    requires N >Int bitwidthMInt(MI)

  /*@ 
    popCount(MI, N): Count the number of set bits, V, in MI and
    create a MINt(N, V)
  */
  rule popCount(MI:MInt) => countOnes(MI, 0)

  rule countOnes(MI:MInt, C:Int) => 
    countOnes(andMInt(MI, subMInt(MI, mi(bitwidthMInt(MI),1))), C +Int 1)
      requires notBool zeroMInt(MI)

  rule countOnes(MI:MInt, C:Int) =>  C 
      requires zeroMInt(MI)

  /*@ 
    shiftCountMask(MIsrc, N): 
    if N == 64: return and(MIsrc, 0x3F) 
    else return and(MIsrc, 0x1F) 
  */
  rule shiftCountMask(MI:MInt, I:Int) => #ifMInt I ==Int 64 
                                          #then andMInt(MI, mi(bitwidthMInt(MI), 63)) 
                                          #else andMInt(MI, mi(bitwidthMInt(MI), 31)) 
                                         #fi

  /*@ 
    getSignBit(MI): return mi(1, signBit of MI)
  rule getSignBit(MI:MInt) => 
    fromBoolToMInt( toBool(
        andMInt(MI, 
            mi(bitwidthMInt(MI), sminMInt(bitwidthMInt(MI)))
        )
      ), 1)
  */
  rule getSignBit(MI:MInt) => extractMInt(MI, 0, 1)

  /*@ 
    getBitFromMInt(MI, I): return Ith bit of MI

    Deprecated to etractMask
  rule getBitFromMInt(MI:MInt, I:Int) => 
    fromBoolToMInt( toBool(
        andMInt(MI, shlMInt(mi(bitwidthMInt(MI), 1), I))
        ), 1)
  */

  /*@ 
    sarOverflow(MI): return the value of SAR
    operation on MI with count >= bitwidthMInt(MI)
  */
  rule sarOverflow(MI:MInt) => #ifMInt zeroMInt(getSignBit(MI)) 
                                #then mi(bitwidthMInt(MI), 0) 
                                #else mi(bitwidthMInt(MI), -1) 
                               #fi

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

  /*@
    aShiftRightMInt(MI):
    ashrMInt works only if the the Biginteger value in MInt is signed
    and java BigInteger::shiftRight works on signed numbers.
    But as the MInt may contain unsigned Biginteger value, so we have to deliberately
    pass signed value of the MInt
  */  
  rule aShiftRightMInt(MI, I) => ashrMInt(mi(bitwidthMInt(MI), svalueMInt(MI)), I)

endmodule

/*
module X86-GENERAL-UTILS
  imports MINT-WRAPPER
endmodule
*/
