require "hex-token.k"
require "elf-syntax.k"
require "x86-configuration.k"
require "x86-syntax.k"

module ELF-LOADER
  imports MINT
  imports ELF-SYNTAX
  imports HEX-TOKEN
  imports X86-CONFIGURATION
  imports X86-SYNTAX

  rule Cs:Commands ; => Cs [structural]
  rule C:Command ; Cs:Commands => C ~> Cs [structural]
  rule .Commands => . [structural]

  rule <k> Load(Base:HexConstant, Mem:HexConstant, Len:HexConstant) => . ... </k>
       <ROM> ... (.List => ListItem(StringSegment(HexConstant2Int(Base), HexConstant2Int(Base) +Int HexConstant2Int(Len), HexConstant2StringNoPrefix(Mem)))) </ROM>

  // TODO: This rule might be unwise.  Right now the *parser* implicitly defines the entry point... should be the semantics job.
  rule <k> Entry(E:HexConstant) => . ... </k>
       <regstate> RSMap => RSMap["RIP" <- mi(64, HexConstant2Int(E))] </regstate>

  // TODO: Log these? Emit warnings? Halt?
  rule <k> NamedSymbol(_, NotPresentInFile) => . ... </k>

  rule <k> NamedSymbol(B:Builtin, Addr:HexConstant) => . ... </k>
       <symbols> SymMap => SymMap[mi(64, HexConstant2Int(Addr)) <- B] </symbols>
endmodule
