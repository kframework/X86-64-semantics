module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, 48, "SPAD1") ~>
execinstr ( movswq %cx, %rbx , .Typedoperands ) ~>
restoreRegister("SPAD1", 48, 16, %rbx) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movw_r16_r16
instr:movw %cx, %bx
maybe read:{ %cx }
must read:{ %cx }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswq %cx, %rbx  #  1     0    4      OPC=movswq_r64_r16
*/