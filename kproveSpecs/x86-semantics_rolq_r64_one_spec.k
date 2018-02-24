module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%rbx,  %r12d, %r13d , 32) ~>
combineNTo2N(%r12d,  %r13d, %rcx, 32, 64, 32) ~>
execinstr ( movq %rcx, %r9 , .Typedoperands ) ~>
execinstr ( addq %rcx, %r9 , .Typedoperands ) ~>
execinstr ( xchgw %bx, %bx , .Typedoperands ) ~>
execinstr ( adcq %rbx, %rbx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rolq_r64_one
instr:rolq $0x1, %rbx
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %rbx %cf %of }
must write:{ %rbx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label
circuit:callq .move_032_064_r12d_r13d_rcx  #  2     0x5   5      OPC=callq_label
circuit:movq %rcx, %r9                     #  3     0xa   3      OPC=movq_r64_r64
circuit:addq %rcx, %r9                     #  4     0xd   3      OPC=addq_r64_r64
circuit:xchgw %bx, %bx                     #  5     0x10  3      OPC=xchgw_r16_r16
circuit:adcq %rbx, %rbx                    #  6     0x13  3      OPC=adcq_r64_r64
*/