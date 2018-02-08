module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( cmovaw %cx, %bx , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnbew_r16_r16
instr:cmovnbew %cx, %bx
maybe read:{ %cx %cf %zf }
must read:{ %cx %cf %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:cmovaw %cx, %bx  #  1     0    4      OPC=cmovaw_r16_r16
*/