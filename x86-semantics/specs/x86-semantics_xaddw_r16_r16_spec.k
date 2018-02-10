module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rcx, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
execinstr ( xchgw %cx, %bx , .Typedoperands ) ~>
execinstr ( addw %cx, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0,
          0, 16, %rcx) ~>
restoreRegister("SPAD2", 16, 48, 0, 0,
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
"SPAD2" |->    (mi(256, 0) => _)
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
opcode:xaddw_r16_r16
instr:xaddw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %cx %bx %cf %pf %af %zf %sf %of }
must write:{ %cx %bx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgw %cx, %bx  #  1     0    3      OPC=xchgw_r16_r16
circuit:addw %cx, %bx   #  2     0x3  3      OPC=addw_r16_r16
*/