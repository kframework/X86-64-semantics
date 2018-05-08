module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0x0, %rbx , .Typedoperands ) ~>
execinstr ( setne %bh , .Typedoperands ) ~>
split2NToN(%bx,  %r8b, %r9b , 08) ~>
movByteToPosOfReg( %r9b, 6, %rbx ) ~>
execinstr ( xaddb %bh, %bl , .Typedoperands ) ~>
movByteToPosOfReg( %r8b, 5, %rbx ) ~>
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
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setne_r8
instr:setne %bl
maybe read:{ %zf }
must read:{ %zf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64
circuit:setne %bh                         #  2     0xa   3      OPC=setne_rh
circuit:callq .move_016_008_bx_r8b_r9b    #  3     0xd   5      OPC=callq_label
circuit:callq .move_r9b_to_byte_6_of_rbx  #  4     0x12  5      OPC=callq_label
circuit:xaddb %bh, %bl                    #  5     0x17  3      OPC=xaddb_r8_rh
circuit:callq .move_r8b_to_byte_5_of_rbx  #  6     0x1a  5      OPC=callq_label
*/