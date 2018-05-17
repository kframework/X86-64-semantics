requires "x86-configuration.k"

module INCL-M32
  imports X86-CONFIGURATION


  context execinstr(incl:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (incl memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (incl memOffset( MemOff), .Operands)
  ...</k>


    rule <k>
      memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (incl memOffset( MemOff), .Operands)
      =>  storeToMemory(
        extractMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33)), 32, 64), MemOff, 32)                         
    ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(32, 1), MemVal), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(MemVal, 0, 1))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
endmodule
