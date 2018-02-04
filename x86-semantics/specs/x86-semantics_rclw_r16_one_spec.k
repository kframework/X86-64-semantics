module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( adcw %bx, %bx , .Typedoperands ) ~>
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
opcode:rclw_r16_one
instr:rclw $0x1, %bx
maybe read:{ %bx %cf }
must read:{ %bx %cf }
maybe write:{ %bx %cf %of }
must write:{ %bx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:adcw %bx, %bx  #  1     0    3      OPC=adcw_r16_r16
*/