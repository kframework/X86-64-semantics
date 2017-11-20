module MINT-WRAPPER
  imports MINT

  /*@ 
    Adding MInt List.
  */  
  syntax MInts ::= List{MInt, ""}
  syntax MInt ::= addListMInt(Int, MInts) [function]

  rule addListMInt(W:Int, MI1:MInt MI2:MInt Rest:MInts) => 
    addMInt(addMInt(MI1, MI2), addListMInt(W, Rest))
  rule addListMInt(W:Int, MI:MInt .MInts) => MI
  rule addListMInt(W:Int, .MInts) => mi(W,0) 

  /*@ 
    Conversion from/to MInt and Bool
  */  
  syntax Bool ::= toBool(MInt) [function]
  rule toBool(MI) => true
    requires uvalueMInt(MI) =/=Int 0
  rule toBool(MI) => false
    requires uvalueMInt(MI) ==Int 0

  syntax MInt ::= fromBool(Bool, Int) [function]
  rule fromBool(B:Bool, W:Int) => mi(W,1)
    requires B
  rule fromBool(B:Bool, W:Int) => mi(W,0)
    requires notBool B

  /*@ truncateMtoN: Truncates a MInt(M,V1) to MInt(N,V2)
    Todo : type check
  */
  syntax MInt ::= truncate64to8(MInt) [function]
  syntax MInt ::= truncate64to16(MInt) [function]
  syntax MInt ::= truncate64to32(MInt) [function]

  rule truncate64to8(MI) => mi(8, svalueMInt(andMInt(MI, mi(64,255))))
  rule truncate64to16(MI) => mi(16, svalueMInt(andMInt(MI, mi(64,65535))))
  rule truncate64to32(MI) => mi(32, svalueMInt(andMInt(MI, mi(64,4294967295))))

  /*@ zeroExtendMtoN: Zero extend MInt(M, V1) to MInt(N,V2)
  */
  syntax MInt ::= zeroExtend1to8(MInt) [function]
  syntax MInt ::= zeroExtend8to64(MInt) [function]

  rule zeroExtend1to8(MI) => mi(8, uvalueMInt(MI))
  rule zeroExtend8to64(MI) => mi(64, uvalueMInt(MI))

endmodule


module X86-GENERAL-UTILS
  imports MINT-WRAPPER
endmodule
