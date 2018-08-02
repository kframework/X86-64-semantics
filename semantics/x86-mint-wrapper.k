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

  syntax MInt ::= "undefMInt"
  syntax MInt ::= "undefMInt8"
  syntax MInt ::= "undefMInt16"
  syntax MInt ::= "undefMInt32"
  syntax MInt ::= "undefMInt64"
  syntax Bool ::= "undefBool"
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
    Create a map of size N:Int with "undefMInt" MInt
  */
  syntax MIntMap ::= makeUndefMIntMap (Int) [function]
  //syntax MIntMap ::= makeUndefMIntMap (Int, Int ) [function]

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

  // UIF operations
  /*
    ToDo: DSAND: For max/min: max(NaN, A == NaN. keep the same rep as Nan). Check TEST52 
  */   
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
    /*Extra bigin*/   | "comiss"                    [token]
                      | "comisd"                    [token]
                      | "idiv_quotient_int8"        [token]
                      | "idiv_remainder_int8"       [token]
                      | "idiv_quotient_int16"       [token]
                      | "idiv_remainder_int16"      [token]
                      | "idiv_quotient_int32"       [token]
                      | "idiv_remainder_int32"      [token]
                      | "idiv_quotient_int64"       [token]
                      | "idiv_remainder_int64"      [token]
                      | "div_quotient_int8"         [token]
                      | "div_remainder_int8"        [token]
                      | "div_quotient_int16"        [token]
                      | "div_remainder_int16"       [token]
                      | "div_quotient_int32"        [token]
                      | "div_remainder_int32"       [token]
                      | "div_quotient_int64"        [token]
                      | "div_remainder_int64"       [token]
                        | "cvt_single_to_int32_rm"    [token]
                        | "cvt_single_to_fp16_rm"    [token]
                        | "cvt_double_to_int64_rm"    [token]

  syntax UIFTerOperation ::=  "cmp_double_pred"     [token]
                          | "cmp_single_pred"     [token]

                          | "vfmadd132_double"     [token]
                          | "vfmadd132_single"     [token]
                          | "vfmsub132_double"     [token]
                          | "vfmsub132_single"     [token]

                          | "vfmadd231_double"     [token]
                          | "vfmadd231_single"     [token]
                          | "vfmsub231_double"     [token]
                          | "vfmsub231_single"     [token]

                          | "vfmadd213_double"     [token]
                          | "vfmadd213_single"     [token]
                          | "vfmsub213_double"     [token]
                          | "vfmsub213_single"     [token]

                          | "vfnmadd132_double"     [token]
                          | "vfnmadd132_single"     [token]
                          | "vfnmsub132_double"     [token]
                          | "vfnmsub132_single"     [token]

                          | "vfnmadd231_double"     [token]
                          | "vfnmadd231_single"     [token]
                          | "vfnmsub231_double"     [token]
                          | "vfnmsub231_single"     [token]

                          | "vfnmadd213_double"     [token]
                          | "vfnmadd213_single"     [token]
                          | "vfnmsub213_double"     [token]
                          | "vfnmsub213_single"     [token]


  syntax UIFUOperation ::= "cvt_half_to_single"    [token]
                        | "cvt_double_to_int64_truncate"    [token]
                        | "cvt_single_to_int64_truncate"    [token]
                        | "approx_reciprocal_double"    [token]
                        | "approx_reciprocal_single"    [token]
                        | "sqrt_double"    [token]
                        | "sqrt_single"    [token]
                        | "approx_reciprocal_sqrt_double"    [token]
                        | "approx_reciprocal_sqrt_single"    [token]
                        | "cvt_single_to_double"    [token]
                        | "cvt_double_to_single"    [token]
                        | "cvt_single_to_int32"    [token]
                        | "cvt_single_to_int32_truncate"    [token]
                        | "cvt_single_to_int64"    [token]
                        | "cvt_double_to_int32"    [token]
                        | "cvt_double_to_int32_truncate"    [token]
                        | "cvt_double_to_int64"    [token]
                        | "cvt_int32_to_single"    [token]
                        | "cvt_int32_to_double"    [token]
                        | "cvt_int64_to_single"    [token]
                        | "cvt_int64_to_double"    [token]


  /*@
    The following are the uninterpreted functions F(BitVector theory) -> Bitvector Theory
    Help to prove equivalence between K rule and Strata's BVFs.
  */
  syntax MInt ::= UIFUOperation   "(" MInt ")"                [function]
  syntax MInt ::= UIFBinOperation "(" MInt "," MInt ")"       [function]
  syntax MInt ::= UIFTerOperation "(" MInt "," MInt "," MInt ")" [function]

  /*@
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

  /*@
    shiftLeftMInt(MI):
    shlMInt may generate mints of larger bitwidth
    to represent the values. For example,
    mi(4, 1) << 4 gives 4' 16 which is wrong
    as 16 cannot be represented in 4 bits
  */
  syntax MInt ::= shiftLeftMInt(MInt, Int) [function]  

  /*@
    roate left/right
  */
  syntax MInt ::= rol(MInt, MInt) [function]
  syntax MInt ::= ror(MInt, MInt) [function]

  /*@
    pclmulqdq
  */
  syntax MInt ::= computePCLMULQDQ1(MInt, MInt, MInt, Int, Int) [function]
  syntax MInt ::= computePCLMULQDQ1Refine(MInt, MInt, Int) [function]
  syntax MInt ::= computePCLMULQDQ2(MInt, MInt, MInt, Int, Int) [function]
  syntax MInt ::= computePCLMULQDQ2Refine(MInt, MInt, Int) [function]
  syntax MInt ::= selectSlice(MInt, MInt, Int, Int, Int) [function]

  /*@
    mpsad
  */  
   syntax MInt ::= absoluteUnsignedDifference(MInt, MInt) [function]
   syntax MInt ::= selectSliceMPSAD(MInt, MInt, Int, Int) [function]
   
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
  //rule bitwidthMInt(undefMInt) => 8 [lemma]
  rule bitwidthMInt(undefMInt8) =>  8 [lemma]
  rule bitwidthMInt(undefMInt16) => 16 [lemma]
  rule bitwidthMInt(undefMInt32) => 32 [lemma]
  rule bitwidthMInt(undefMInt64) => 64 [lemma]

  /*@
    Create a list of indef MInts
  */
  rule makeUndefMIntMap ( N:Int ) => makeUndefMIntMapAux(N, 0, .Map)
  //rule makeUndefMIntMap ( N:Int , S:Int) => makeUndefMIntMapAux(N +Int S, S, .Map)

  syntax MIntMap ::=  makeUndefMIntMapAux(Int, Int, Map) [function]

  rule makeUndefMIntMapAux(N:Int, N, M:Map) => mimap(M)
  rule makeUndefMIntMapAux(N:Int, I, M:Map) =>
    makeUndefMIntMapAux(N, I +Int 1, M[I <- mi(8, 0)])
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
      Define ternary uifs
  */

  // Doubles
  // Add
  // Non Negate
  // 132
  rule vfmadd132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11)) +Float MInt2Float(MI2, 53, 11), 64)
      requires  notBool (notBool eqMInt(MI1, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI2, mi(64, 0)))
      
  rule vfmadd132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11)), 64)
      requires          notBool eqMInt(MI1, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI2, mi(64, 0))

  rule vfmadd231_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 53, 11) *Float MInt2Float(MI3, 53, 11)) +Float MInt2Float(MI1, 53, 11), 64)
  rule vfmadd213_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 53, 11) *Float MInt2Float(MI1, 53, 11)) +Float MInt2Float(MI3, 53, 11), 64)

  // Negate
  // 132
  rule vfnmadd132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11)) +Float MInt2Float(MI2, 53, 11), 64)
      requires  notBool (notBool eqMInt(MI1, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI2, mi(64, 0)))

  rule vfnmadd132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11)), 64)
      requires           notBool eqMInt(MI1, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI2, mi(64, 0))


  // 231
  rule vfnmadd231_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 53, 11) *Float MInt2Float(MI3, 53, 11)) +Float MInt2Float(MI1, 53, 11), 64)
      requires  notBool (notBool eqMInt(MI2, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI1, mi(64, 0)))

  rule vfnmadd231_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 53, 11) *Float MInt2Float(MI3, 53, 11)) +Float MInt2Float(MI1, 53, 11), 64)
      requires          notBool eqMInt(MI2, mi(64, 0)) andBool notBool eqMInt(MI3, mi(64, 0)) andBool eqMInt(MI1, mi(64, 0))

  // 213
  rule vfnmadd213_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 53, 11) *Float MInt2Float(MI1, 53, 11)) +Float MInt2Float(MI3, 53, 11), 64)
      requires  notBool (notBool eqMInt(MI2, mi(64, 0)) andBool notBool eqMInt(MI1, mi(64, 0)) andBool eqMInt(MI3, mi(64, 0)))

  rule vfnmadd213_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 53, 11) *Float MInt2Float(MI1, 53, 11)) +Float MInt2Float(MI3, 53, 11), 64)
      requires          notBool eqMInt(MI2, mi(64, 0)) andBool notBool eqMInt(MI1, mi(64, 0)) andBool eqMInt(MI3, mi(64, 0))

  // Sub
  rule vfmsub132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11)) -Float MInt2Float(MI2, 53, 11), 64)
  rule vfmsub231_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 53, 11) *Float MInt2Float(MI3, 53, 11)) -Float MInt2Float(MI1, 53, 11), 64)
  rule vfmsub213_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 53, 11) *Float MInt2Float(MI1, 53, 11)) -Float MInt2Float(MI3, 53, 11), 64)

  rule vfnmsub132_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0d *Float (MInt2Float(MI1, 53, 11) *Float MInt2Float(MI3, 53, 11))) -Float MInt2Float(MI2, 53, 11), 64)
  rule vfnmsub231_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0d *Float (MInt2Float(MI2, 53, 11) *Float MInt2Float(MI3, 53, 11))) -Float MInt2Float(MI1, 53, 11), 64)
  rule vfnmsub213_double(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0d *Float (MInt2Float(MI2, 53, 11) *Float MInt2Float(MI1, 53, 11))) -Float MInt2Float(MI3, 53, 11), 64)

  // Singles
  // Add
  // Non Negate
  rule vfmadd132_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI1, 24, 8) *Float MInt2Float(MI3, 24, 8)) +Float MInt2Float(MI2, 24, 8), 32)
  rule vfmadd231_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 24, 8) *Float MInt2Float(MI3, 24, 8)) +Float MInt2Float(MI1, 24, 8), 32)
  rule vfmadd213_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 24, 8) *Float MInt2Float(MI1, 24, 8)) +Float MInt2Float(MI3, 24, 8), 32)

  // Negate
  // 132
  rule vfnmadd132_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI1, 24, 8) *Float MInt2Float(MI3, 24, 8)) +Float MInt2Float(MI2, 24, 8), 32)
      requires  notBool (notBool eqMInt(MI1, mi(32, 0)) andBool notBool eqMInt(MI3, mi(32, 0)) andBool eqMInt(MI2, mi(32, 0)))

  rule vfnmadd132_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI1, 24, 8) *Float MInt2Float(MI3, 24, 8)), 32)
      requires          notBool eqMInt(MI1, mi(32, 0)) andBool notBool eqMInt(MI3, mi(32, 0)) andBool eqMInt(MI2 , mi(32, 0))

  // 231
  rule vfnmadd231_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 24, 8) *Float MInt2Float(MI3, 24, 8)) +Float MInt2Float(MI1, 24, 8), 32)
      requires  notBool (notBool eqMInt(MI2, mi(32, 0)) andBool notBool eqMInt(MI3, mi(32, 0)) andBool eqMInt(MI1, mi(32, 0)))

  rule vfnmadd231_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 24, 8) *Float MInt2Float(MI3, 24, 8)) +Float MInt2Float(MI1, 24, 8), 32)
      requires          notBool eqMInt(MI2, mi(32, 0)) andBool notBool eqMInt(MI3, mi(32, 0)) andBool eqMInt(MI1, mi(32, 0))

  // 213
  rule vfnmadd213_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 24, 8) *Float MInt2Float(MI1, 24, 8)) +Float MInt2Float(MI3, 24, 8), 32)
      requires  notBool (notBool eqMInt(MI2, mi(32, 0)) andBool notBool eqMInt(MI1, mi(32, 0)) andBool eqMInt(MI3, mi(32, 0)))

  rule vfnmadd213_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt(negateFloat(MInt2Float(MI2, 24, 8) *Float MInt2Float(MI1, 24, 8)) +Float MInt2Float(MI3, 24, 8), 32)
      requires          notBool eqMInt(MI2, mi(32, 0)) andBool notBool eqMInt(MI1, mi(32, 0)) andBool eqMInt(MI3, mi(32, 0))

  // Sub
  rule vfmsub132_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI1, 24, 8) *Float MInt2Float(MI3, 24, 8)) -Float MInt2Float(MI2, 24, 8), 32)
  rule vfmsub231_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 24, 8) *Float MInt2Float(MI3, 24, 8)) -Float MInt2Float(MI1, 24, 8), 32)
  rule vfmsub213_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((MInt2Float(MI2, 24, 8) *Float MInt2Float(MI1, 24, 8)) -Float MInt2Float(MI3, 24, 8), 32)

  rule vfnmsub132_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0f *Float (MInt2Float(MI1, 24, 8) *Float MInt2Float(MI3, 24, 8))) -Float MInt2Float(MI2, 24, 8), 32)
  rule vfnmsub231_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0f *Float (MInt2Float(MI2, 24, 8) *Float MInt2Float(MI3, 24, 8))) -Float MInt2Float(MI1, 24, 8), 32)
  rule vfnmsub213_single(MI1:MInt, MI2:MInt, MI3:MInt) => 
    Float2MInt((-1.0f *Float (MInt2Float(MI2, 24, 8) *Float MInt2Float(MI1, 24, 8))) -Float MInt2Float(MI3, 24, 8), 32)


  /*@
      Define binary uifs
  */

  // comisd
  rule comisd(MI1:MInt, MI2:MInt) => mi(2, 0)
    requires isNaN(MInt2Float(MI1, 53, 11)) orBool  isNaN(MInt2Float(MI2, 53, 11))
  rule comisd(MI1:MInt, MI2:MInt) => mi(2, 1)
    requires MInt2Float(MI1, 53, 11) >Float  MInt2Float(MI2, 53, 11)
  rule comisd(MI1:MInt, MI2:MInt) => mi(2, 2)
    requires MInt2Float(MI1, 53, 11) <Float  MInt2Float(MI2, 53, 11)
  rule comisd(MI1:MInt, MI2:MInt) => mi(2, 3)
    requires MInt2Float(MI1, 53, 11) ==Float  MInt2Float(MI2, 53, 11)

  // comiss
  rule comiss(MI1:MInt, MI2:MInt) => mi(2, 0)
    requires isNaN(MInt2Float(MI1, 24, 8)) orBool  isNaN(MInt2Float(MI2, 24, 8))
  rule comiss(MI1:MInt, MI2:MInt) => mi(2, 1)
    requires MInt2Float(MI1, 24, 8) >Float  MInt2Float(MI2, 24, 8)
  rule comiss(MI1:MInt, MI2:MInt) => mi(2, 2)
    requires MInt2Float(MI1, 24, 8) <Float  MInt2Float(MI2, 24, 8)
  rule comiss(MI1:MInt, MI2:MInt) => mi(2, 3)
    requires MInt2Float(MI1, 24, 8) ==Float  MInt2Float(MI2, 24, 8)

  rule add_double(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 53, 11) +Float MInt2Float(MI2, 53, 11), 64)
  rule sub_double(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 53, 11) -Float MInt2Float(MI2, 53, 11), 64)
  rule mul_double(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 53, 11) *Float MInt2Float(MI2, 53, 11), 64)
  rule div_double(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 53, 11) /Float MInt2Float(MI2, 53, 11), 64)

  rule maxcmp_double(MI1:MInt, MI2:MInt) => #ifMInt 
                                              maxFloat(
                                                  MInt2Float(MI1, 53, 11), 
                                                  MInt2Float(MI2, 53, 11)) 
                                              ==Float MInt2Float(MI1, 53, 11)
                                            #then mi(1, 1) #else mi(1,0) #fi
    requires notBool isNaN(MInt2Float(MI1, 53, 11))  andBool notBool isNaN(MInt2Float(MI2, 53, 11)) 


  rule maxcmp_double(MI1:MInt, MI2:MInt) => mi(1, 1)
    requires  isNaN(MInt2Float(MI1, 24, 8))  andBool (notBool isNaN(MInt2Float(MI2, 53, 11)) )

  rule maxcmp_double(MI1:MInt, MI2:MInt) => mi(1, 0)
    requires  (notBool isNaN(MInt2Float(MI1, 53, 11)))  andBool  isNaN(MInt2Float(MI2, 53, 11)) 


  rule mincmp_double(MI1:MInt, MI2:MInt) => #ifMInt 
                                              minFloat(
                                                  MInt2Float(MI1, 53, 11), 
                                                  MInt2Float(MI2, 53, 11)) 
                                              ==Float MInt2Float(MI1, 53, 11)
                                            #then mi(1, 1) #else mi(1,0) #fi
                                            
  rule add_single(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 24, 8) +Float MInt2Float(MI2, 24, 8), 32)
  rule sub_single(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 24, 8) -Float MInt2Float(MI2, 24, 8), 32)
  rule mul_single(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 24, 8) *Float MInt2Float(MI2, 24, 8), 32)
  rule div_single(MI1:MInt, MI2:MInt) => Float2MInt(MInt2Float(MI1, 24, 8) /Float MInt2Float(MI2, 24, 8), 32)

  rule maxcmp_single(MI1:MInt, MI2:MInt) => #ifMInt 
                                              maxFloat(
                                                  MInt2Float(MI1, 24, 8),
                                                  MInt2Float(MI2, 24, 8))
                                              ==Float MInt2Float(MI1, 24, 8)
                                            #then mi(1, 1) #else mi(1,0) #fi
    requires notBool isNaN(MInt2Float(MI1, 24, 8))  andBool notBool isNaN(MInt2Float(MI2, 24, 8)) 

  rule maxcmp_single(MI1:MInt, MI2:MInt) => mi(1, 1)
    requires  isNaN(MInt2Float(MI1, 24, 8))  andBool (notBool isNaN(MInt2Float(MI2, 24, 8)))

  rule maxcmp_single(MI1:MInt, MI2:MInt) => mi(1, 0)
    requires  (notBool isNaN(MInt2Float(MI1, 24, 8)))  andBool  isNaN(MInt2Float(MI2, 24, 8)) 


  // signed divs
  rule idiv_quotient_int64(MI1:MInt, MI2:MInt) => 
    extractMInt(
      miMInt(
        sdivMInt(
          MI1, 
          signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 128 andBool bitwidthMInt(MI2) ==Int 64

  rule idiv_quotient_int32(MI1:MInt, MI2:MInt) => 
    extractMInt(
    miMInt(sdivMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 64 andBool bitwidthMInt(MI2) ==Int 32

  rule idiv_quotient_int16(MI1:MInt, MI2:MInt) => 
    extractMInt(
    miMInt(sdivMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 32 andBool bitwidthMInt(MI2) ==Int 16

  rule idiv_quotient_int8(MI1:MInt, MI2:MInt)  => 
    extractMInt(
    miMInt(sdivMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 16 andBool bitwidthMInt(MI2) ==Int 8

  // signed remainders
  rule idiv_remainder_int64(MI1:MInt, MI2:MInt) => 
    extractMInt(
    miMInt(sremMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 128 andBool bitwidthMInt(MI2) ==Int 64

  rule idiv_remainder_int32(MI1:MInt, MI2:MInt) =>
    extractMInt(
    miMInt(sremMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 64 andBool bitwidthMInt(MI2) ==Int 32

  rule idiv_remainder_int16(MI1:MInt, MI2:MInt) =>
    extractMInt(
    miMInt(sremMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 32 andBool bitwidthMInt(MI2) ==Int 16

  rule idiv_remainder_int8(MI1:MInt, MI2:MInt)  =>
    extractMInt(
    miMInt(sremMInt(
        MI1, 
        signExtend(MI2, bitwidthMInt(MI1))
        )), bitwidthMInt(MI2), bitwidthMInt(MI1))
      requires bitwidthMInt(MI1) ==Int 16 andBool bitwidthMInt(MI2) ==Int 8

  // unsigned divs
  rule div_quotient_int64(MI1:MInt, MI2:MInt) =>
    extractMInt(
    udivMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 128 andBool bitwidthMInt(MI2) ==Int 64

  rule div_quotient_int32(MI1:MInt, MI2:MInt) =>
    extractMInt(
    udivMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 64 andBool bitwidthMInt(MI2) ==Int 32

  rule div_quotient_int16(MI1:MInt, MI2:MInt) =>
    extractMInt(
    udivMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 32 andBool bitwidthMInt(MI2) ==Int 16

  rule div_quotient_int8(MI1:MInt, MI2:MInt)  =>
    extractMInt(
    udivMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 16 andBool bitwidthMInt(MI2) ==Int 8

  // unsigned remainders
  rule div_remainder_int64(MI1:MInt, MI2:MInt) =>
    extractMInt(
    uremMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 128 andBool bitwidthMInt(MI2) ==Int 64

  rule div_remainder_int32(MI1:MInt, MI2:MInt) =>
    extractMInt(
    uremMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 64 andBool bitwidthMInt(MI2) ==Int 32

  rule div_remainder_int16(MI1:MInt, MI2:MInt) =>
    extractMInt(
    uremMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 32 andBool bitwidthMInt(MI2) ==Int 16

  rule div_remainder_int8(MI1:MInt, MI2:MInt)  =>
    extractMInt(
    uremMInt(
        MI1, 
        zeroExtend(MI2, bitwidthMInt(MI1))
        ), bitwidthMInt(MI2), bitwidthMInt(MI1))
    requires bitwidthMInt(MI1) ==Int 16 andBool bitwidthMInt(MI2) ==Int 8

  /*@
      Define unary uifs
  */
  // float <-> double  
  rule cvt_single_to_double(MI:MInt) =>  Float2MInt(Float2Double(MInt2Float(MI, 24,8)), 64)
  rule cvt_double_to_single(MI:MInt) =>  Float2MInt(Double2Float(MInt2Float(MI, 53,11)), 32)

  // int -> float/double
  rule cvt_int64_to_double(MI:MInt) =>  Float2MInt(Int2Float(svalueMInt(MI), 53, 11), 64)
  rule cvt_int32_to_double(MI:MInt) =>  Float2MInt(Int2Float(svalueMInt(MI), 53, 11), 64)

  rule cvt_int64_to_single(MI:MInt) =>  Float2MInt(Int2Float(svalueMInt(MI), 24, 8), 32)
  rule cvt_int32_to_single(MI:MInt) =>  Float2MInt(Int2Float(svalueMInt(MI), 24, 8), 32)

  // double -> int64
  rule cvt_double_to_int64_truncate(MI:MInt) =>  mi(64, Float2Int(MInt2Float(MI, 53,11)))
    requires Float2Int(MInt2Float(MI, 53,11)) <=Int (2 ^Int 63 -Int 1) 
      andBool Float2Int(MInt2Float(MI, 53,11)) >=Int (-1 *Int 2 ^Int 63) 

  rule cvt_double_to_int64_truncate(MI:MInt) =>  mi(64, -9223372036854775808)
    requires Float2Int(MInt2Float(MI, 53,11)) >Int (2 ^Int 63 -Int 1) 
      orBool Float2Int(MInt2Float(MI, 53,11)) <Int (-1 *Int 2 ^Int 63) 

  // double -> int32
  rule cvt_double_to_int32_truncate(MI:MInt) =>  mi(32, Float2Int(MInt2Float(MI, 53,11)))
    requires Float2Int(MInt2Float(MI, 53,11)) <=Int (2 ^Int 31 -Int 1) 
      andBool Float2Int(MInt2Float(MI, 53,11)) >=Int (-1 *Int 2 ^Int 31) 

  rule cvt_double_to_int32_truncate(MI:MInt) =>  mi(32, -2147483648)
    requires Float2Int(MInt2Float(MI, 53,11)) >Int (2 ^Int 31 -Int 1) 
      orBool Float2Int(MInt2Float(MI, 53,11)) <Int (-1 *Int 2 ^Int 31) 

  // float -> int64
  rule cvt_single_to_int64_truncate(MI:MInt) =>  mi(64, Float2Int(MInt2Float(MI, 24,8)))
    requires  Float2Int(MInt2Float(MI, 24,8)) <=Int (2 ^Int 63 -Int 1) 
      andBool Float2Int(MInt2Float(MI, 24,8)) >=Int (-1 *Int 2 ^Int 63) 

  rule cvt_single_to_int64_truncate(MI:MInt) =>  mi(64, -9223372036854775808)
    requires Float2Int(MInt2Float(MI, 24,8)) >Int (2 ^Int 63 -Int 1) 
      orBool Float2Int(MInt2Float(MI, 24,8)) <Int (-1 *Int 2 ^Int 63) 

  // float -> int32
  rule cvt_single_to_int32_truncate(MI:MInt) =>  mi(32, Float2Int(MInt2Float(MI, 24,8)))
    requires  Float2Int(MInt2Float(MI, 24,8)) <=Int (2 ^Int 31 -Int 1) 
      andBool Float2Int(MInt2Float(MI, 24,8)) >=Int (-1 *Int 2 ^Int 31) 

  rule cvt_single_to_int32_truncate(MI:MInt) =>  mi(32, -2147483648)
    requires Float2Int(MInt2Float(MI, 24,8)) >Int (2 ^Int 31 -Int 1) 
      orBool Float2Int(MInt2Float(MI, 24,8)) <Int (-1 *Int 2 ^Int 31) 

  //rule sqrt_double(MI:MInt) => Float2MInt(sqrtFloat(MInt2Float(MI1, 53, 11)), 64)

  //rule sqrt_single(MI:MInt) => Float2MInt(sqrtFloat(MInt2Float(MI1, 24, 8)), 32)

  /*@
    operateOnVector(MI1, MI2, Vop, OpW): Performs vector operation
    Vop elementwise on two lists MI1, MI2 of MInts.
    OpW: Width of the operation. Typical values: 32 or 64.
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
  */


  /*@
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

  /*@
    shiftLeftMInt(MI):
    shlMInt may generate mints of larger bitwidth
    to represent the values. For example,
    mi(4, 1) << 4 gives 4' 16 which is wrong
    as 16 cannot be represented in 4 bits
  */
  rule shiftLeftMInt(MI, I) => 
    extractMInt(shlMInt(MI, I), 0, bitwidthMInt(MI))

  /*@
    roate left/right
  */
  syntax MInt ::= rolHelper(MInt, Int, Int) [function]
  syntax MInt ::= rorHelper(MInt, Int, Int) [function]

  rule rol(MI1:MInt, MI2:MInt) => rolHelper(MI1, uvalueMInt(MI2),  0)
  rule ror(MI1:MInt, MI2:MInt) => rorHelper(MI1, uvalueMInt(MI2),  0)

  rule rolHelper(MI:MInt, N:Int, N:Int) => MI
  rule rolHelper(MI:MInt, N:Int, M:Int) =>
    rolHelper(
      addMInt( 
        shiftLeftMInt(MI, 1), 
        concatenateMInt(
          mi(bitwidthMInt(MI) -Int 1, 0), 
          extractMInt(MI, 0, 1)
        )
      ), N, M +Int 1)  
  requires M <Int N


  rule rorHelper(MI:MInt, N:Int, N:Int) => MI
  rule rorHelper(MI:MInt, N:Int, M:Int) =>
    rorHelper(
      addMInt( 
        lshrMInt(MI, 1), 
        concatenateMInt(
          extractMInt(MI, bitwidthMInt(MI) -Int 1, bitwidthMInt(MI)),
          mi(bitwidthMInt(MI) -Int 1, 0) 
        )
      ), N, M +Int 1)  
  requires M <Int N

  /*@
    pclmulqdq
  */
  /*
    For i = 0 to 63 {
        TmpB [ i ]←(TEMP1[ 0 ] and TEMP2[ i ]);
        For j = 1 to i {
            TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
        }
        DEST[ i ]←TmpB[ i ];
    }
  */   
  rule computePCLMULQDQ1(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) => DEST
      requires M >Int N

  rule computePCLMULQDQ1(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) =>
    computePCLMULQDQ1( 
        TEMP1, TEMP2, plugInMask(DEST, computePCLMULQDQ1Refine(TEMP1, TEMP2, M), M), M +Int 1, N)
      requires M <=Int N

  rule computePCLMULQDQ1Refine(TEMP1:MInt, TEMP2:MInt, M:Int) =>
  refineHelper(TEMP1, TEMP2, 1, M, 
        andMInt( 
          extractMInt(TEMP1, 63, 64), extractMInt(TEMP2, 63 -Int M, 64 -Int M) 
          )
      )

  /*
     For i = 64 to 126 {
    TmpB [ i ]←0;
    For j = i - 63 to 63 {
        TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
    }
    DEST[ i ]←TmpB[ i ];
  }
  */

  rule computePCLMULQDQ2(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) => DEST
      requires M >Int N

  rule computePCLMULQDQ2(TEMP1:MInt, TEMP2:MInt, DEST:MInt, M:Int, N:Int) =>
    computePCLMULQDQ2( 
        TEMP1, TEMP2, plugInMask(DEST, computePCLMULQDQ2Refine(TEMP1, TEMP2, M), M), M +Int 1, N)
      requires M <=Int N

  rule computePCLMULQDQ2Refine(TEMP1:MInt, TEMP2:MInt, M:Int) =>
  refineHelper(TEMP1, TEMP2, M -Int 63, 63,  mi(1, 0))


  // Utils
  syntax MInt ::= refineHelper(MInt, MInt, Int, Int, MInt) [function]
  rule refineHelper(TEMP1:MInt, TEMP2:MInt, P:Int, Q:Int,
      RES:MInt) => RES
      requires P >Int Q

  rule refineHelper(TEMP1:MInt, TEMP2:MInt, P:Int, Q:Int,
      RES:MInt) => 
    refineHelper(TEMP1, TEMP2, P +Int 1, Q, 
        xorMInt(RES, 
          andMInt(
            extractMInt(TEMP1, 63 -Int P,         64 -Int P),
            extractMInt(TEMP2, 63 -Int (P -Int Q), 64 -Int (P -Int Q))
            )))
      requires P <=Int Q


  rule selectSlice(SRC1:MInt, Imm8:MInt, CheckBit:Int, Start1:Int, Start2:Int)
  => extractMInt(SRC1, Start1, Start1 +Int 64)
    requires  eqMInt(mi(1, 0), extractMInt(Imm8, CheckBit, CheckBit +Int 1))
    
  rule selectSlice(SRC1:MInt, Imm8:MInt, CheckBit:Int, Start1:Int, Start2:Int)
  => extractMInt(SRC1, Start2, Start2 +Int 64)
    requires  eqMInt(mi(1, 1), extractMInt(Imm8, CheckBit, CheckBit +Int 1))

  /*@
    mpsad
  */  
  rule absoluteUnsignedDifference(A:MInt, B:MInt) => subMInt(A, B)
    requires ugtMInt(A, B)

  rule absoluteUnsignedDifference(A:MInt, B:MInt) => subMInt(B, A)
    requires notBool ugtMInt(A, B)

  rule selectSliceMPSAD(DEST:MInt, Offset:MInt, High:Int, Low:Int) =>
    concatenateMInt(mi(8, 0), 
        //extractMInt(DEST, (uvalueMInt(Offset) *Int 32) +Int High, (uvalueMInt(Offset) *Int 32) +Int Low))
        extractMask(DEST, High -Int Low +Int 1, (uvalueMInt(Offset) *Int 32) +Int Low))
    
endmodule

/*
module X86-GENERAL-UTILS
  imports MINT-WRAPPER
endmodule
*/
