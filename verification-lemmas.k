requires "x86-general-utils.k"

module INTEGER-LEMMAS
  rule 0 +Int I:Int => I
  rule I:Int +Int 0 => I
  rule I:Int -Int 0 => I
  rule 0 *Int _:Int => 0
  rule _:Int *Int 0 => 0
  rule 1 *Int I:Int => I
  rule I:Int *Int 1 => I

  // These rules are needed because K doesn't support smt translations for
  // the LHS operators.
  rule I:Int >>Int 1 => I /Int 2
    requires I >=Int 0

  rule I:Int &Int I => I
  rule I:Int &Int 1 => 0
    requires I >=Int 0 andBool I %Int 2 ==Int 0
  rule I:Int &Int 1 => 1
    requires I >=Int 0 andBool I %Int 2 ==Int 1
endmodule

module BOOLEAN-LEMMAS
  rule true orBool _ => true
  rule _ orBool true => true
  rule false andBool _ => false
  rule _ andBool false => false
endmodule

module MINT-LEMMAS
  imports MINT
  imports FLOAT
  imports MINT-WRAPPER-SYNTAX

  // bitwidthMInt    
  // Recursive rules
  rule bitwidthMInt(addMInt(MIC,  _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(xorMInt(MIC,  _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(orMInt(MIC,   _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(andMInt(MIC,  _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(mulMInt(MIC,  _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(lshrMInt(MIC, _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(ashrMInt(MIC, _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(shlMInt(MIC,  _)) => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(negMInt(MIC))     => bitwidthMInt(MIC) [lemma]
  rule bitwidthMInt(concatenateMInt(MI1:MInt, MI2:MInt)) => bitwidthMInt(MI1) +Int bitwidthMInt(MI2) [lemma]
  rule bitwidthMInt(#ifMInt B:Bool #then MI1 #else MI2 #fi) => bitwidthMInt(MI1) [lemma]

  // Base Rules
  rule bitwidthMInt(mi(W:Int, _)) => W [lemma]
  rule bitwidthMInt(extractMask(_, W:Int, _)) => W [lemma]
  rule bitwidthMInt(extractMInt(_, S:Int, E:Int)) => E -Int S [lemma]
  rule bitwidthMInt(Float2MInt(_:Float, W:Int)) => W [lemma]
  rule bitwidthMInt(zeroExtend(_:MInt, W:Int)) => W [lemma]
  rule bitwidthMInt(signExtend(_:MInt, W:Int)) => W [lemma]

  //rule bitwidthMInt(addMInt(extractMask(_,_,_), mi(W,_))) => W [lemma]  
  //rule bitwidthMInt(addMInt(extractMask(_,_,_), MIC)) => bitwidthMInt(MIC) [lemma]  

  // xorMInt
  rule xorMInt(mi(W:Int, I:Int), mi(W:Int, I:Int)) => mi(W, 0) [lemma]
  rule xorMInt(MI:MInt, MI:MInt) => mi(bitwidthMInt(MI), 0) [lemma]

  // orMInt
  rule orMInt(mi(W:Int, I:Int), mi(W:Int, I:Int)) => mi(W, I) [lemma]
  rule orMInt(MI:MInt, MI:MInt) =>  MI [lemma]
  rule orMInt(MIZ, MI:MInt) =>  MI 
    requires zeroMInt(MIZ)

  // ultMInt
  rule ultMInt(_, MI) =>  false                         
    requires  eqMInt(MI, mi(bitwidthMInt(MI), 0))
  rule ultMInt(MI:MInt, MI:MInt) =>  false                         


  // addMInt
  rule subMInt(mi(W, I), mi(W, I)) => mi(W, 0) [lemma]

  rule addMInt(MI:MInt, ZMI:MInt) => MI                   
    requires eqMInt(ZMI, mi(bitwidthMInt(ZMI), 0))

  rule addMInt(ZMI:MInt, MI:MInt) => MI                  
    requires eqMInt(ZMI, mi(bitwidthMInt(ZMI), 0))

  // minFloat
  rule minFloat(F:Float, F:Float) => F [lemma]
  rule maxFloat(F:Float, F:Float) => F [lemma]

  // Float2MInt/MInt2Float
  rule Float2MInt(MInt2Float(MI:MInt, 53, 11), 64) => MI [lemma]
  rule MInt2Float(Float2MInt(F:Float, 64), 53, 11) => F [lemma]
  rule Float2MInt(MInt2Float(MI:MInt, 24, 8), 32)  => MI [lemma]
  rule MInt2Float(Float2MInt(F:Float, 32), 24, 8)  => F [lemma]

  // shlMInt / ashrMInt / lshrMInt
  rule shlMInt(MI:MInt, 0) => MI  [lemma]
  rule ashrMInt(MI:MInt, 0) => MI [lemma]
  rule lshrMInt(MI:MInt, 0) => MI [lemma]

  // concatenateMInt / extractMInt
  rule concatenateMInt(extractMInt(MI, S1, E1), extractMInt(MI, S2, E2)) => extractMInt(MI, S1, E2) 
    requires E1 ==Int S2
  rule extractMInt(MI, S, E) => MI
    requires (bitwidthMInt(MI) ==Int E) andBool (S ==Int 0)

endmodule

module VERIFICATION-LEMMAS
  imports INTEGER-LEMMAS
  imports BOOLEAN-LEMMAS
  imports MINT-LEMMAS
endmodule
