module BV
  imports INT
  imports K-EQUAL

  /*@ Machine integer of bit width and value. */
  syntax BV ::= bv(Int, Int)

  /*@ Function returning the bit width of this machine integer. */
  
	
  syntax BV ::= addBV(BV, BV)   [function, smtlib(bvadd)]

  syntax MInt ::= chop(BV) [function]
  rule chop(bv(W, I)) => bv(W, I %Int (2 ^Int W))
  rule addMBV(bv(W, I1), bv(W, I2)) => chop(bv(W, (I1 +Int I2)))
endmodule
