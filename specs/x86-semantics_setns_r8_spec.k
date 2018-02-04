module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "SF", %rcx ) ~>
split2NToN(%ecx,  %r12w, %r13w , 16) ~>
combineNTo2N(%r12w,  %r13w, %edx, 16, 32, 16) ~>
split2NToN(%edx,  %r10w, %r11w , 16) ~>
execinstr ( popcntw %r10w, %r10w , .Typedoperands ) ~>
execinstr ( sete %bl , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I2:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setns_r8
instr:setns %bl
maybe read:{ %sf }
must read:{ %sf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_sf_into_rcx            #  1     0     5      OPC=callq_label
circuit:callq .move_032_016_ecx_r12w_r13w  #  2     0x5   5      OPC=callq_label
circuit:callq .move_016_032_r12w_r13w_edx  #  3     0xa   5      OPC=callq_label
circuit:callq .move_032_016_edx_r10w_r11w  #  4     0xf   5      OPC=callq_label
circuit:popcntw %r10w, %r10w               #  5     0x14  6      OPC=popcntw_r16_r16
circuit:sete %bl                           #  6     0x1a  3      OPC=sete_r8
*/