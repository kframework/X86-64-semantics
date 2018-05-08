module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r8d, %r9d , 32) ~>
execinstr ( xchgl %r8d, %r9d , .Typedoperands ) ~>
execinstr ( bswap %r9d , .Typedoperands ) ~>
execinstr ( xorb %bh, %bh , .Typedoperands ) ~>
execinstr ( cmovew %r8w, %r8w , .Typedoperands ) ~>
execinstr ( bswap %r8d , .Typedoperands ) ~>
combineNTo2N(%r8d,  %r9d, %rbx, 32, 64, 32) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:bswap_r64
instr:bswap %rbx
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label
circuit:xchgl %r8d, %r9d                 #  2     0x5   3      OPC=xchgl_r32_r32
circuit:bswap %r9d                       #  3     0x8   3      OPC=bswap_r32
circuit:xorb %bh, %bh                    #  4     0xb   2      OPC=xorb_rh_rh
circuit:cmovew %r8w, %r8w                #  5     0xd   5      OPC=cmovew_r16_r16
circuit:bswap %r8d                       #  6     0x12  3      OPC=bswap_r32
circuit:callq .move_032_064_r8d_r9d_rbx  #  7     0x15  5      OPC=callq_label
*/