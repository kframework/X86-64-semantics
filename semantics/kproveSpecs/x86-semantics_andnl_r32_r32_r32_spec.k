module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %edx, %rbx , .Typedoperands ) ~>
execinstr ( orl %ecx, %edx , .Typedoperands ) ~>
split2NToN(%ecx,  %r12w, %r13w , 16) ~>
combineNTo2N(%r12w,  %r13w, %ecx, 16, 32, 16) ~>
execinstr ( xorl %edx, %ecx , .Typedoperands ) ~>
execinstr ( xchgl %ebx, %ecx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, ?I7:Int):MInt => _)
"SF" |-> (mi(1, ?I8:Int):MInt => _)
"ZF" |-> (mi(1, ?I9:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:andnl_r32_r32_r32
instr:andnl %edx, %ecx, %ebx
maybe read:{ %ecx %edx }
must read:{ %ecx %edx }
maybe write:{ %rbx %cf %zf %sf %of }
must write:{ %rbx %cf %zf %sf %of }
maybe undef:{ %pf %af }
must undef:{ %pf %af }
required flags:{ bmi1 }

circuit:movslq %edx, %rbx                  #  1     0     3      OPC=movslq_r64_r32
circuit:orl %ecx, %edx                     #  2     0x3   2      OPC=orl_r32_r32
circuit:callq .move_032_016_ecx_r12w_r13w  #  3     0x5   5      OPC=callq_label
circuit:callq .move_016_032_r12w_r13w_ecx  #  4     0xa   5      OPC=callq_label
circuit:xorl %edx, %ecx                    #  5     0xf   2      OPC=xorl_r32_r32
circuit:xchgl %ebx, %ecx                   #  6     0x11  2      OPC=xchgl_r32_r32
*/