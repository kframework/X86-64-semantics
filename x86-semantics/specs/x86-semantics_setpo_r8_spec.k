module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "PF", %rbx ) ~>
split2NToN(%rbx,  %r8d, %r9d , 32) ~>
movPosOfRegToByte( 3, %rbx, %r9b ) ~>
execinstr ( xchgl %r8d, %r9d , .Typedoperands ) ~>
execinstr ( xorq %rbx, %rbx , .Typedoperands ) ~>
readFlagToRegister( "PF", %rbx ) ~>
execinstr ( xorq %r9, %rbx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setpo_r8
instr:setpo %bl
maybe read:{ %pf }
must read:{ %pf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label
circuit:callq .move_064_032_rbx_r8d_r9d   #  2     0x5   5      OPC=callq_label
circuit:callq .move_byte_3_of_rbx_to_r9b  #  3     0xa   5      OPC=callq_label
circuit:xchgl %r8d, %r9d                  #  4     0xf   3      OPC=xchgl_r32_r32
circuit:xorq %rbx, %rbx                   #  5     0x12  3      OPC=xorq_r64_r64
circuit:callq .read_pf_into_rbx           #  6     0x15  5      OPC=callq_label
circuit:xorq %r9, %rbx                    #  7     0x1a  3      OPC=xorq_r64_r64
*/