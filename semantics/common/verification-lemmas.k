module INTEGER-LEMMAS
  import DOMAINS
  rule 0 +Int I:Int => I
  rule I:Int +Int 0 => I
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

module VERIFICATION-LEMMAS
  imports INTEGER-LEMMAS
  imports BOOLEAN-LEMMAS
endmodule
