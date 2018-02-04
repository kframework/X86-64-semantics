module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "ZF", %rbx ) ~>
execinstr ( setnae %bh , .Typedoperands ) ~>
split2NToN(%rbx,  %r12d, %r13d , 32) ~>
combineNTo2N(%r12d,  %r13d, %rbx, 32, 64, 32) ~>
execinstr ( xaddl %r13d, %ebx , .Typedoperands ) ~>
readFlagToRegister( "ZF", %rbx ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0, 
          0, 8, %rbx) ~>
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
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnbe_r8
instr:setnbe %bl
maybe read:{ %cf %zf }
must read:{ %cf %zf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label
circuit:setnae %bh                         #  2     0x5   3      OPC=setnae_rh
circuit:callq .move_064_032_rbx_r12d_r13d  #  3     0x8   5      OPC=callq_label
circuit:callq .move_032_064_r12d_r13d_rbx  #  4     0xd   5      OPC=callq_label
circuit:xaddl %r13d, %ebx                  #  5     0x12  4      OPC=xaddl_r32_r32
circuit:callq .read_zf_into_rbx            #  6     0x16  5      OPC=callq_label
*/