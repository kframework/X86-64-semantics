module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( vmovq %xmm1, %r10 , .Typedoperands ) ~>
execinstr ( movq %r10, %rbx , .Typedoperands ) ~>
execinstr ( nop .Typedoperands ) ~> inforegisters ~> fetch
 => exit_0
    </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
"RIP" |->    (mi(64, 0) => _)
"R10" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movq_r64_xmm
instr:movq %xmm1, %rbx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ sse2 }

circuit:vmovq %xmm1, %r10  #  1     0    5      OPC=vmovq_r64_xmm
circuit:movq %r10, %rbx    #  2     0x5  3      OPC=movq_r64_r64
*/