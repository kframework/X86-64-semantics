require "hex-token.k"

module ELF-SYNTAX
  imports STRING-SYNTAX
  imports HEX-TOKEN-SYNTAX

  syntax Command ::= "Load" "(" HexConstant "," HexConstant "," HexConstant ")" /* BaseAddress, MemoryContents, SegmentLength */
                   // Note: SegmentLength may be "too large," remaining bytes are implicitly zero. 
                   | "Entry" "(" HexConstant ")"
                   | "NamedSymbol" "(" String "," "NotPresentInFile" ")"
                   | "NamedSymbol" "(" String "," HexConstant ")"

  syntax Commands ::= List{Command, ";"}

  syntax Elf ::= Commands ";"
endmodule
