module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzwl %bx, %eax , .Typedoperands ) ~>
execinstr ( cmovbel %eax, %ecx , .Typedoperands ) ~>
execinstr ( movswq %cx, %rbx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovaw_r16_r16
instr:cmovaw %cx, %bx
maybe read:{ %cx %cf %zf }
must read:{ %cx %cf %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movzwl %bx, %eax    #  1     0    3      OPC=movzwl_r32_r16
circuit:cmovbel %eax, %ecx  #  2     0x3  3      OPC=cmovbel_r32_r32
circuit:movswq %cx, %rbx    #  3     0x6  4      OPC=movswq_r64_r16
*/