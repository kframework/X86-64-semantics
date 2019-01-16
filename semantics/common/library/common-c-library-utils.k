module COMMON-C-LIBRARY-UTILS-SYNTAX
  imports LIST
  imports STRING

  syntax KItem ::= "success"
  syntax KItem ::= "eof"
  syntax Int ::= "valueOfEOF" [function]
  syntax KItem ::= "discard"
  syntax String ::= toUpperCase(String) [function]
  syntax String ::= firstChar(String) [function]
  syntax String ::= lastChar(String) [function]
  syntax String ::= nthChar(String, Int) [function]
  syntax String ::= butFirstChar(String) [function]
  syntax List ::= stringToList(String) [function]
  syntax String ::= listToString(List) [function]
endmodule


module COMMON-C-LIBRARY-UTILS
  imports COMMON-C-LIBRARY-UTILS-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SYNTAX

  rule success => asCInt(0)
  rule eof => asCInt(valueOfEOF)
  rule valueOfEOF => -1

  rule _:LibCValue ~> discard => .K

  rule toUpperCase("") => ""
  rule toUpperCase(C:String) => C
    requires (lengthString(C) ==Int 1) andBool
             (ordChar(C) <Int ordChar("a") orBool ordChar(C) >Int ordChar("z"))
  rule toUpperCase(C:String)
       =>
       chrChar(absInt(ordChar(C) -Int (ordChar("a") -Int ordChar("A"))))
    requires (lengthString(C) ==Int 1) andBool
             (ordChar(C) >=Int ordChar("a") andBool
              ordChar(C) <=Int ordChar("z"))
  rule toUpperCase(S:String)
       =>
       toUpperCase(firstChar(S:String)) +String
       toUpperCase(butFirstChar(S:String))
    requires lengthString(S) >Int 1

  rule firstChar(S:String) => substrString(S, 0, 1)
    requires lengthString(S) >=Int 1
  rule firstChar(_) => "" [owise]

  rule lastChar(S:String) => nthChar(S, lengthString(S) -Int 1)
    requires lengthString(S) >=Int 1
  rule lastChar(_) => "" [owise]

  rule nthChar(S:String, N::Int) => substrString(S, N, N +Int 1)
    requires N <Int lengthString(S) andBool N >=Int 0
  rule nthChar(_, _) => "" [owise]

  rule butFirstChar(S:String)
       =>
       substrString(S, 1, lengthString(S:String))
    requires lengthString(S) >=Int 2
  rule butFirstChar(_) => "" [owise]

  rule stringToList("") => .List
  rule stringToList(S:String)
       =>
       ListItem(firstChar(S:String)) stringToList(butFirstChar(S:String))
    requires S:String =/=String ""

  rule listToString(.List) => ""
  rule listToString((ListItem(S:String) L:List))
       =>
       S:String +String listToString(L:List)
endmodule


