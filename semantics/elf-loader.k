require "hex-token.k"
require "elf-syntax.k"
require "x86-configuration.k"

module ELF-LOADER
  imports MINT
  imports ELF-SYNTAX
  imports HEX-TOKEN
  imports X86-CONFIGURATION

  rule Cs:Commands ; => Cs [structural]
  rule C:Command ; Cs:Commands => C ~> Cs [structural]
  rule .Commands => . [structural]

  rule <k> Load(Base:HexConstant, Mem:HexConstant, Len:HexConstant) => . ... </k>
       <ROM> ... (.List => ListItem(StringSegment(HexConstant2Int(Base), HexConstant2Int(Base) + HexConstant2Int(Len), HexConstant2StringNoPrefix(Mem)))) </ROM>

  // TODO: This rule might be unwise.  Right now the *parser* implicitly defines the entry point... should be the semantics job.
  rule <k> Entry(E:HexConstant) => . ... </k>
       <regstate> RSMap => RSMap["RIP" <- mi(64, HexConstant2Int(E))] </regstate>

  // TODO: Log these? Emit warnings? Halt?
  rule <k> NamedSymbol(_, NotPresentInFile) => . ... </k>

  rule <k> NamedSymbol(N:String, Addr:HexConstant) => . ... </k>
       <symbols> SymMap => SymMap[N <- mi(64, HexConstant2Int(Addr))] </symbols>
endmodule
