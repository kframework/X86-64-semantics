requires "x86-configuration.k"

module X86-FLOAT-TEST-OPCODES
  imports X86-CONFIGURATION
  imports FLOAT

  rule <k>
    execinstr (pseudofloattestopcode1:Opcode I:Int, F:Float,  W:Int, P:Int, E:Int, .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,

"ZF" |-> (#ifMInt
             eqMInt(mi(W, I), Float2MInt(MInt2Float(mi(W,I), P,E), W))
                                andBool F ==Float MInt2Float(Float2MInt(F,W), P, E)
                                andBool MInt2Float(mi(W,I), P,E) ==Float F
                                andBool eqMInt(Float2MInt(F,W), mi(W,I))
          #then mi(1, 1) #else mi(1, 0) #fi)
)
    </regstate>
endmodule
