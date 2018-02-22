module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movswq %cx, %rdx , .Typedoperands ) ~>
execinstr ( xchgw %cx, %bx , .Typedoperands ) ~>
execinstr ( movswq %cx, %rax , .Typedoperands ) ~>
execinstr ( orq %rax, %rdx , .Typedoperands ) ~>
execinstr ( movslq %edx, %rbx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:orw_r16_r16
instr:orw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %bx %cf %pf %zf %sf %of }
must write:{ %bx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movswq %cx, %rdx   #  1     0     4      OPC=movswq_r64_r16
circuit:xchgw %cx, %bx     #  2     0x4   3      OPC=xchgw_r16_r16
circuit:movswq %cx, %rax   #  3     0x7   4      OPC=movswq_r64_r16
circuit:orq %rax, %rdx     #  4     0xb   3      OPC=orq_r64_r64
circuit:movslq %edx, %rbx  #  5     0xe   3      OPC=movslq_r64_r32
*/