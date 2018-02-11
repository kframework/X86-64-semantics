module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rdx, %rdx , .Typedoperands ) ~>
execinstr ( adcb %bl, %dl , .Typedoperands ) ~>
execinstr ( notl %edx , .Typedoperands ) ~>
execinstr ( movswl %dx, %ebx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:notb_r8
instr:notb %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rdx, %rdx   #  1     0    3      OPC=xorq_r64_r64
circuit:adcb %bl, %dl     #  2     0x3  2      OPC=adcb_r8_r8
circuit:notl %edx         #  3     0x5  2      OPC=notl_r32
circuit:movswl %dx, %ebx  #  4     0x7  3      OPC=movswl_r32_r16
*/