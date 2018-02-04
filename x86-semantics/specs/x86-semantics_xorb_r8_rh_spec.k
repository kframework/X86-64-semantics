module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzbl %ah, %ebp , .Typedoperands ) ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( setc %bh , .Typedoperands ) ~>
execinstr ( movswq %bx, %rdx , .Typedoperands ) ~>
execinstr ( xorq %rbp, %rdx , .Typedoperands ) ~>
execinstr ( movslq %edx, %rbx , .Typedoperands ) ~>
setSZPForRegister( %bl ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xorb_r8_rh
instr:xorb %ah, %bl
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %bl %cf %pf %zf %sf %of }
must write:{ %bl %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movzbl %ah, %ebp       #  1     0     3      OPC=movzbl_r32_rh
circuit:xorq %rax, %rax        #  2     0x3   3      OPC=xorq_r64_r64
circuit:setc %bh               #  3     0x6   3      OPC=setc_rh
circuit:movswq %bx, %rdx       #  4     0x9   4      OPC=movswq_r64_r16
circuit:xorq %rbp, %rdx        #  5     0xd   3      OPC=xorq_r64_r64
circuit:movslq %edx, %rbx      #  6     0x10  3      OPC=movslq_r64_r32
circuit:callq .set_szp_for_bl  #  7     0x13  5      OPC=callq_label
*/