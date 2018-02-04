module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
split2NToN(%bx,  %r12b, %r13b , 08) ~>
execinstr ( movswq %ax, %rbx , .Typedoperands ) ~>
combineNTo2N(%r12b,  %r13b, %cx, 08, 16, 08) ~>
execinstr ( movzwl %cx, %eax , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0, 
          0, 16, %rax) ~>
restoreRegister("SPAD2", 16, 48, 0, 0, 
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
"SPAD2" |->    (mi(256, 0) => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgw_r16_ax
instr:xchgw %ax, %bx
maybe read:{ %ax %bx }
must read:{ %ax %bx }
maybe write:{ %ax %bx }
must write:{ %ax %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label
circuit:movswq %ax, %rbx                  #  2     0x5   4      OPC=movswq_r64_r16
circuit:callq .move_008_016_r12b_r13b_cx  #  3     0x9   5      OPC=callq_label
circuit:movzwl %cx, %eax                  #  4     0xe   3      OPC=movzwl_r32_r16
*/