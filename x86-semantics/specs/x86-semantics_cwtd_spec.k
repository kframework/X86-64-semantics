module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rdx, "SPAD1") ~>
execinstr ( movswq %ax, %rbx , .Typedoperands ) ~>
split2NToN(%rbx,  %r10d, %r11d , 32) ~>
execinstr ( movq $0xffffffffffffffff, %rdx , .Typedoperands ) ~>
execinstr ( xaddw %dx, %r11w , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0, 
          0, 16, %rdx) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cwtd
instr:cwtd
maybe read:{ %ax }
must read:{ %ax }
maybe write:{ %dx }
must write:{ %dx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswq %ax, %rbx                   #  1     0     4      OPC=movswq_r64_r16
circuit:callq .move_064_032_rbx_r10d_r11d  #  2     0x4   5      OPC=callq_label
circuit:movq $0xffffffffffffffff, %rdx     #  3     0x9   10     OPC=movq_r64_imm64
circuit:xaddw %dx, %r11w                   #  4     0x13  5      OPC=xaddw_r16_r16
*/