module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzbl %bl, %eax , .Typedoperands ) ~>
execinstr ( movq %rax, %rbx , .Typedoperands ) ~>
execinstr ( adcb %bl, %bl , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rclb_r8_one
instr:rclb $0x1, %bl
maybe read:{ %bl %cf }
must read:{ %bl %cf }
maybe write:{ %bl %cf %of }
must write:{ %bl %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbl %bl, %eax  #  1     0    3      OPC=movzbl_r32_r8
circuit:movq %rax, %rbx   #  2     0x3  3      OPC=movq_r64_r64
circuit:adcb %bl, %bl     #  3     0x6  2      OPC=adcb_r8_r8
*/