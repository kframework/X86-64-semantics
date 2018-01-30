module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN( %bx, %r10b, %r11b ) ~>
split2NToN( %cx, %r8b, %r9b ) ~>
combineNTo2N( %r10b, %r11b, %cx ) ~>
combineNTo2N( %r8b, %r9b, %bx ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgw_r16_r16
instr:xchgw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %cx %bx }
must write:{ %cx %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_016_008_bx_r10b_r11b  #  1     0     5      OPC=callq_label
circuit:callq .move_016_008_cx_r8b_r9b    #  2     0x5   5      OPC=callq_label
circuit:callq .move_008_016_r10b_r11b_cx  #  3     0xa   5      OPC=callq_label
circuit:callq .move_008_016_r8b_r9b_bx    #  4     0xf   5      OPC=callq_label
*/