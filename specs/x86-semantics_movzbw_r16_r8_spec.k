module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0x5, %rbx , .Typedoperands ) ~>
split2NToN(%rbx,  %r12d, %r13d , 32) ~>
execinstr ( movsbq %cl, %r12 , .Typedoperands ) ~>
combineNTo2N(%r12b,  %r13b, %bx, 08, 16, 08) ~>
restoreRegister("SPAD1", 16, 48, 0, 0, 
          0, 16, %rbx) ~>
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
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movzbw_r16_r8
instr:movzbw %cl, %bx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x5, %rbx                    #  1     0     10     OPC=movq_r64_imm64
circuit:callq .move_064_032_rbx_r12d_r13d  #  2     0xa   5      OPC=callq_label
circuit:movsbq %cl, %r12                   #  3     0xf   4      OPC=movsbq_r64_r8
circuit:callq .move_008_016_r12b_r13b_bx   #  4     0x13  5      OPC=callq_label
*/