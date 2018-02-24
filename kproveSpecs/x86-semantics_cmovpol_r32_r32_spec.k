module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ecx,  %r10w, %r11w , 16) ~>
execinstr ( movl %ebx, %esi , .Typedoperands ) ~>
readFlagToRegister( "PF", %rbx ) ~>
execinstr ( popcntw %bx, %bx , .Typedoperands ) ~>
combineNTo2N(%r10w,  %r11w, %ebx, 16, 32, 16) ~>
execinstr ( cmovnzl %esi, %ebx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovpol_r32_r32
instr:cmovpol %ecx, %ebx
maybe read:{ %ecx %pf }
must read:{ %ecx %pf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:callq .move_032_016_ecx_r10w_r11w  #  1     0     5      OPC=callq_label
circuit:movl %ebx, %esi                    #  2     0x5   2      OPC=movl_r32_r32
circuit:callq .read_pf_into_rbx            #  3     0x7   5      OPC=callq_label
circuit:popcntw %bx, %bx                   #  4     0xc   5      OPC=popcntw_r16_r16
circuit:callq .move_016_032_r10w_r11w_ebx  #  5     0x11  5      OPC=callq_label
circuit:cmovnzl %esi, %ebx                 #  6     0x16  3      OPC=cmovnzl_r32_r32
*/