module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movsbq %al, %r8 , .Typedoperands ) ~>
execinstr ( movq $0x10, %r9 , .Typedoperands ) ~>
combineNTo2N(%r8,  %r9, %xmm1, 64, 128, 64) ~>
splitXmmToR32( %xmm1, %eax, %edx, %r8d, %r9d, 32 ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0, 
          0, 16, %rax) ~>
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
"SPAD1" |->    (mi(256, 0) => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"YMM1" |-> (mi(256, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cbtw
instr:cbtw
maybe read:{ %al }
must read:{ %al }
maybe write:{ %ax }
must write:{ %ax }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movsbq %al, %r8                           #  1     0     4      OPC=movsbq_r64_r8
circuit:movq $0x10, %r9                           #  2     0x4   10     OPC=movq_r64_imm64
circuit:callq .move_064_128_r8_r9_xmm1            #  3     0xe   5      OPC=callq_label
circuit:callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x13  5      OPC=callq_label
*/