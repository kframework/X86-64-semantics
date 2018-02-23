module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xchgb %bl, %bl , .Typedoperands ) ~>
execinstr ( cmovzw %cx, %bx , .Typedoperands ) ~>
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
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovew_r16_r16
instr:cmovew %cx, %bx
maybe read:{ %cx %zf }
must read:{ %cx %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:xchgb %bl, %bl   #  1     0    2      OPC=xchgb_r8_r8
circuit:cmovzw %cx, %bx  #  2     0x2  4      OPC=cmovzw_r16_r16
*/