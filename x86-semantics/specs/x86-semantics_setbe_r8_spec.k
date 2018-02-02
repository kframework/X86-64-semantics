module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "ZF", %rcx ) ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( cmoveq %rcx, %rbx , .Typedoperands ) ~>
split2NToN( %ecx, %r8w, %r9w ) ~>
movByteToPosOfReg( %r8b, 7, %rbx ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"CF" |-> (mi(1, ?I3:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setbe_r8
instr:setbe %bl
maybe read:{ %cf %zf }
must read:{ %cf %zf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label
circuit:callq .read_cf_into_rbx           #  2     0x5   5      OPC=callq_label
circuit:cmoveq %rcx, %rbx                 #  3     0xa   4      OPC=cmoveq_r64_r64
circuit:callq .move_032_016_ecx_r8w_r9w   #  4     0xe   5      OPC=callq_label
circuit:callq .move_r8b_to_byte_7_of_rbx  #  5     0x13  5      OPC=callq_label
*/