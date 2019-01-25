module COMMON-UTILS-SYNTAX
  imports INT
  imports MAP

  syntax Map ::= Int ".." Int "|->" K [function]

  syntax Int ::= fromBool(Bool) [function]
endmodule


module COMMON-UTILS
  imports COMMON-UTILS-SYNTAX

  rule N:Int .. M:Int |-> _:K => .Map
    requires N >Int M
  rule N:Int .. M:Int |-> V:K => N |-> V (N +Int 1) .. M |-> V
    requires N <=Int M

  rule fromBool(B:Bool) => #if B #then 1 #else 0 #fi
endmodule
