module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0x0, %rbx , .Typedoperands ) ~>
execinstr ( vmovmskps %xmm1, %r13d , .Typedoperands ) ~>
execinstr ( xchgw %bx, %r13w , .Typedoperands ) ~>
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
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"YMM1" |-> (mi(256, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movmskps_r32_xmm
instr:movmskps %xmm1, %ebx
maybe read:{ %xmm1 }
must read:{ %xmm1 }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ sse }

circuit:movq $0x0, %rbx         #  1     0     10     OPC=movq_r64_imm64
circuit:vmovmskps %xmm1, %r13d  #  2     0xa   4      OPC=vmovmskps_r32_xmm
circuit:xchgw %bx, %r13w        #  3     0xe   4      OPC=xchgw_r16_r16
*/