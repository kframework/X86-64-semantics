module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( cmc  .Typedoperands ) ~>
execinstr ( notw %cx , .Typedoperands ) ~>
execinstr ( adcw %bx, %cx , .Typedoperands ) ~>
execinstr ( cmc  .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sbbw_r16_r16
instr:sbbw %cx, %bx
maybe read:{ %cx %bx %cf }
must read:{ %cx %bx %cf }
maybe write:{ %bx %cf %pf %af %zf %sf %of }
must write:{ %bx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:cmc               #  1     0    1      OPC=cmc
circuit:notw %cx          #  2     0x1  3      OPC=notw_r16
circuit:adcw %bx, %cx     #  3     0x4  3      OPC=adcw_r16_r16
circuit:cmc               #  4     0x7  1      OPC=cmc
circuit:movswq %cx, %rbx  #  5     0x8  4      OPC=movswq_r64_r16
*/