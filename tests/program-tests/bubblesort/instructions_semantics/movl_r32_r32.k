// Autogenerated using stratification.
requires "x86-configuration.k"

module MOVL-R32-R32
  imports X86-CONFIGURATION

  rule <k>
    execinstr (movl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))
)

    </regstate>
    
endmodule

module MOVL-R32-R32-SEMANTICS
  imports MOVL-R32-R32
endmodule
