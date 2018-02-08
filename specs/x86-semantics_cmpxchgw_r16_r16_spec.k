module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( movzwl %bx, %r13d , .Typedoperands ) ~>
execinstr ( movzwq %ax, %r14 , .Typedoperands ) ~>
execinstr ( xaddw %ax, %r13w , .Typedoperands ) ~>
execinstr ( cmpw %ax, %r14w , .Typedoperands ) ~>
execinstr ( cmovzw %cx, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0,
          0, 16, %rbx) ~>
restoreRegister("SPAD2", 16, 48, 0, 0,
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
"SPAD2" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R14" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RCX" |-> (mi(64, ?I7:Int):MInt => _)
"SF" |-> (mi(1, ?I8:Int):MInt => _)
"ZF" |-> (mi(1, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmpxchgw_r16_r16
instr:cmpxchgw %cx, %bx
maybe read:{ %ax %cx %bx }
must read:{ %ax %cx %bx }
maybe write:{ %ax %bx %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzwl %bx, %r13d  #  1     0     4      OPC=movzwl_r32_r16
circuit:movzwq %ax, %r14   #  2     0x4   4      OPC=movzwq_r64_r16
circuit:xaddw %ax, %r13w   #  3     0x8   5      OPC=xaddw_r16_r16
circuit:cmpw %ax, %r14w    #  4     0xd   4      OPC=cmpw_r16_r16
circuit:cmovzw %cx, %bx    #  5     0x11  4      OPC=cmovzw_r16_r16
*/