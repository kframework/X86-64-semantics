module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzwq %cx, %rsi , .Typedoperands ) ~>
execinstr ( cmovnzl %esi, %ebx , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnew_r16_r16
instr:cmovnew %cx, %bx
maybe read:{ %cx %zf }
must read:{ %cx %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movzwq %cx, %rsi    #  1     0    4      OPC=movzwq_r64_r16
circuit:cmovnzl %esi, %ebx  #  2     0x4  3      OPC=cmovnzl_r32_r32
*/