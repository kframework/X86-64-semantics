requires "x86-configuration.k"

module LEAQ-R32-M32
  imports X86-CONFIGURATION

  context execinstr(leal:Opcode (HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (leal memOffset( MemOff:MInt ):MemOffset,  R2:R32, .Operands) => .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap, 
          convToRegKeys(R2) |-> concatenateMInt(mi(32, 0), extractMInt(MemOff, 32, 64)))
    </regstate>

endmodule
