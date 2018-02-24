module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzwq %cx, %rsi , .Typedoperands ) ~>
execinstr ( cmovnsl %esi, %ebx , .Typedoperands ) ~>
execinstr ( xorq %r11, %r11 , .Typedoperands ) ~>
execinstr ( cmovnbel %esi, %ebx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnsw_r16_r16
instr:cmovnsw %cx, %bx
maybe read:{ %cx %sf }
must read:{ %cx %sf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movzwq %cx, %rsi     #  1     0    4      OPC=movzwq_r64_r16
circuit:cmovnsl %esi, %ebx   #  2     0x4  3      OPC=cmovnsl_r32_r32
circuit:xorq %r11, %r11      #  3     0x7  3      OPC=xorq_r64_r64
circuit:cmovnbel %esi, %ebx  #  4     0xa  3      OPC=cmovnbel_r32_r32
*/