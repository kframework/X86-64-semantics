module HEX-TOKEN-SYNTAX
  syntax HexConstant ::= r"0x[0-9a-fA-F]+" [token]
endmodule

module HEX-TOKEN
  imports HEX-TOKEN-SYNTAX
  imports STRING
  imports INT

  syntax String ::= HexConstant2String(HexConstant) [function, hook(STRING.token2string)]

  // Remove 0x hex prefix.
  syntax String ::= HexConstant2StringNoPrefix(HexConstant) [function]
  rule HexConstant2StringNoPrefix(H) => substrString(HexConstant2String(H), 2, lengthString(HexConstant2String(H)))

  syntax Int ::= HexConstant2Int(HexConstant) [function]
  rule HexConstant2Int(H) => String2Base(HexConstant2StringNoPrefix(H), 16)
endmodule
