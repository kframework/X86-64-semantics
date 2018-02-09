module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzbl %ch, %ebp , .Typedoperands ) ~>
execinstr ( movw %bx, %bp , .Typedoperands ) ~>
split2NToN(%cx,  %r8b, %r9b , 08) ~>
combineNTo2N(%r8b,  %r9b, %bx, 08, 16, 08) ~>
execinstr ( cmoveq %rbp, %rbx , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnzw_r16_r16
instr:cmovnzw %cx, %bx
maybe read:{ %cx %zf }
must read:{ %cx %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movzbl %ch, %ebp                #  1     0     3      OPC=movzbl_r32_rh
circuit:movw %bx, %bp                   #  2     0x3   3      OPC=movw_r16_r16
circuit:callq .move_016_008_cx_r8b_r9b  #  3     0x6   5      OPC=callq_label
circuit:callq .move_008_016_r8b_r9b_bx  #  4     0xb   5      OPC=callq_label
circuit:cmoveq %rbp, %rbx               #  5     0x10  4      OPC=cmoveq_r64_r64
*/