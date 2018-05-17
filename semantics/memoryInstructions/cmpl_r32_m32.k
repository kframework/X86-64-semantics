requires "x86-configuration.k"

module CMPL-R32-M32
  imports X86-CONFIGURATION

  context execinstr(cmpl:Opcode ( HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (cmpl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (cmpl memOffset( MemOff), R2:R32,  .Operands)
  ...</k>

  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (cmpl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => .
  ...</k>
    <regstate>       
      RSMap:Map => updateMap(RSMap,
       "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )
      
       "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )
      
       "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), MemVal), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )
      )
    </regstate>
endmodule
