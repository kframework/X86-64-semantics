module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( sarw $0x1, %bx , .Typedoperands ) ~>
execinstr ( rclb $0x1, %bh , .Typedoperands ) ~>
execinstr ( rorb $0x1, %bh , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rorw_r16_one
instr:rorw $0x1, %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %cf %of }
must write:{ %bx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:sarw $0x1, %bx  #  1     0    3      OPC=sarw_r16_one
circuit:rclb $0x1, %bh  #  2     0x3  2      OPC=rclb_rh_one
circuit:rorb $0x1, %bh  #  3     0x5  2      OPC=rorb_rh_one
*/