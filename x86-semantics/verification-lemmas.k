module INTEGER-LEMMAS
  import DOMAINS
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
  import DOMAINS
  rule true orBool _ => true
  rule _ orBool true => true
  rule false andBool _ => false
  rule _ andBool false => false
endmodule

module MINT-LEMMAS
  import MINT

  // bitwidthMInt    
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
  rule bitwidthMInt(Float2MInt(_:Float, W:Int)) => W [lemma]

  rule bitwidthMInt(mi(W:Int, _)) => W [lemma]
  rule bitwidthMInt(extractMask(_, W:Int, _)) => W [lemma]
  rule bitwidthMInt(extractMInt(_, S:Int, E:Int)) => E -Int S [lemma]

  //rule bitwidthMInt(addMInt(extractMask(_,_,_), mi(W,_))) => W [lemma]  
  //rule bitwidthMInt(addMInt(extractMask(_,_,_), MIC)) => bitwidthMInt(MIC) [lemma]  

  // xorMInt
  rule xorMInt(mi(W:Int, I:Int), mi(W:Int, I:Int)) => mi(W, 0) [lemma]
  rule xorMInt(MI:MInt, MI:MInt) => mi(bitwidthMInt(MI), 0) [lemma]

  // orMInt
  rule orMInt(mi(W:Int, I:Int), mi(W:Int, I:Int)) => mi(W, I) [lemma]
  rule orMInt(MI:MInt, MI:MInt) =>  MI [lemma]

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

endmodule

module VERIFICATION-LEMMAS
  imports INTEGER-LEMMAS
  imports BOOLEAN-LEMMAS
  imports MINT-LEMMAS
endmodule
