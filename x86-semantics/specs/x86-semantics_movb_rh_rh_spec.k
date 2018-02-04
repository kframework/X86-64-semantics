module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movzbl %bh, %edx , .Typedoperands ) ~>
split2NToN(%rdx,  %r8d, %r9d , 32) ~>
combineNTo2N(%r8d,  %r9d, %rcx, 32, 64, 32) ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48, 
          8, 8, %rax) ~>
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
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movb_rh_rh
instr:movb %bh, %ah
maybe read:{ %bh }
must read:{ %bh }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbl %bh, %edx                 #  1     0    3      OPC=movzbl_r32_rh
circuit:callq .move_064_032_rdx_r8d_r9d  #  2     0x3  5      OPC=callq_label
circuit:callq .move_032_064_r8d_r9d_rcx  #  3     0x8  5      OPC=callq_label
circuit:movb %cl, %ah                    #  4     0xd  2      OPC=movb_rh_r8
*/