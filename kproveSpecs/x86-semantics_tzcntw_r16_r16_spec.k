module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movswl %cx, %eax , .Typedoperands ) ~>
execinstr ( tzcntl %eax, %ebx , .Typedoperands ) ~>
execinstr ( movq $0x10, %r12 , .Typedoperands ) ~>
execinstr ( cmovnael %r12d, %ebx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:tzcntw_r16_r16
instr:tzcntw %cx, %bx
maybe read:{ %cx }
must read:{ %cx }
maybe write:{ %bx %cf %zf }
must write:{ %bx %cf %zf }
maybe undef:{ %pf %af %sf %of }
must undef:{ %pf %af %sf %of }
required flags:{ bmi1 }

circuit:movswl %cx, %eax      #  1     0     3      OPC=movswl_r32_r16
circuit:tzcntl %eax, %ebx     #  2     0x3   4      OPC=tzcntl_r32_r32
circuit:movq $0x10, %r12      #  3     0x7   10     OPC=movq_r64_imm64
circuit:cmovnael %r12d, %ebx  #  4     0x11  4      OPC=cmovnael_r32_r32
*/