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

  rule bitwidthMInt(mi(W:Int, _:Int)) => W                     [lemma]

  rule xorMInt(mi(W:Int, I:Int), mi(W:Int, I:Int)) => mi(W, 0) [lemma]
  rule xorMInt(MI:MInt, MI:MInt) => mi(bitwidthMInt(MI), 0)    [lemma]


  rule subMInt(mi(W, I), mi(W, I)) => mi(W, 0)                 [lemma]

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
