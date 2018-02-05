module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "OF", %rbx ) ~>
split2NToN(%ebx,  %r12w, %r13w , 16) ~>
split2NToN(%ebx,  %r8w, %r9w , 16) ~>
readFlagToRegister( "SF", %rcx ) ~>
execinstr ( rolb $0x1, %r13b , .Typedoperands ) ~>
execinstr ( xorl %ecx, %ebx , .Typedoperands ) ~>
execinstr ( xaddw %r9w, %r13w , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 5, %rbx ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnge_r8
instr:setnge %bl
maybe read:{ %sf %of }
must read:{ %sf %of }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rbx            #  1     0     5      OPC=callq_label
circuit:callq .move_032_016_ebx_r12w_r13w  #  2     0x5   5      OPC=callq_label
circuit:callq .move_032_016_ebx_r8w_r9w    #  3     0xa   5      OPC=callq_label
circuit:callq .read_sf_into_rcx            #  4     0xf   5      OPC=callq_label
circuit:rolb $0x1, %r13b                   #  5     0x14  3      OPC=rolb_r8_one
circuit:xorl %ecx, %ebx                    #  6     0x17  2      OPC=xorl_r32_r32
circuit:xaddw %r9w, %r13w                  #  7     0x19  5      OPC=xaddw_r16_r16
circuit:callq .move_r9b_to_byte_5_of_rbx   #  8     0x1e  5      OPC=callq_label
*/