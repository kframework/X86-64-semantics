module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "CF", %rbx ) ~>
split2NToN(%rbx,  %r8d, %r9d , 32) ~>
movByteToPosOfReg( %r8b, 5, %rbx ) ~>
execinstr ( decw %bx , .Typedoperands ) ~>
execinstr ( xorb %bh, %bh , .Typedoperands ) ~>
execinstr ( adcb %bl, %bl , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmc
instr:cmc
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %cf }
must write:{ %cf }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_cf_into_rbx           #  1     0     5      OPC=callq_label
circuit:callq .move_064_032_rbx_r8d_r9d   #  2     0x5   5      OPC=callq_label
circuit:callq .move_r8b_to_byte_5_of_rbx  #  3     0xa   5      OPC=callq_label
circuit:decw %bx                          #  4     0xf   3      OPC=decw_r16
circuit:xorb %bh, %bh                     #  5     0x12  2      OPC=xorb_rh_rh
circuit:adcb %bl, %bl                     #  6     0x14  2      OPC=adcb_r8_r8
*/