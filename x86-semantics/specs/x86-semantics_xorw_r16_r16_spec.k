module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %cx, %r8b, %r9b ) ~>
execinstr ( movswq %bx, %r12 , .Typedoperands ) ~>
combineNTo2N( %r8b, %r9b, %bx ) ~>
setSZPForRegister( %bx ) ~>
readFlagToRegister( "SF", %rbx ) ~>
combineNTo2N( %r8b, %r9b, %bx ) ~>
execinstr ( xorq %rbx, %r12 , .Typedoperands ) ~>
execinstr ( movswq %r12w, %rbx , .Typedoperands ) ~>
setSZPForRegister( %bx ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"RBX" |-> (mi(64, ?I4:Int):MInt => _)
"CF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, ?I7:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"PF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xorw_r16_r16
instr:xorw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %bx %cf %pf %zf %sf %of }
must write:{ %bx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:callq .move_016_008_cx_r8b_r9b  #  1     0     5      OPC=callq_label
circuit:movswq %bx, %r12                #  2     0x5   4      OPC=movswq_r64_r16
circuit:callq .move_008_016_r8b_r9b_bx  #  3     0x9   5      OPC=callq_label
circuit:callq .set_szp_for_bx           #  4     0xe   5      OPC=callq_label
circuit:callq .read_sf_into_rbx         #  5     0x13  5      OPC=callq_label
circuit:callq .move_008_016_r8b_r9b_bx  #  6     0x18  5      OPC=callq_label
circuit:xorq %rbx, %r12                 #  7     0x1d  3      OPC=xorq_r64_r64
circuit:movswq %r12w, %rbx              #  8     0x20  4      OPC=movswq_r64_r16
circuit:callq .set_szp_for_bx           #  9     0x24  5      OPC=callq_label
*/