module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( setnc %al , .Typedoperands ) ~>
execinstr ( cwtl  .Typedoperands ) ~>
execinstr ( cltq  .Typedoperands ) ~>
execinstr ( adcb %ah, %ah , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48,
          8, 8, %rax) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rclb_rh_one
instr:rclb $0x1, %ah
maybe read:{ %ah %cf }
must read:{ %ah %cf }
maybe write:{ %ah %cf %of }
must write:{ %ah %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:setnc %al      #  1     0    3      OPC=setnc_r8
circuit:cwtl           #  2     0x3  1      OPC=cwtl
circuit:cltq           #  3     0x4  2      OPC=cltq
circuit:adcb %ah, %ah  #  4     0x6  2      OPC=adcb_rh_rh
*/