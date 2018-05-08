module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( andnl %ebx, %ebx, %esi , .Typedoperands ) ~>
execinstr ( movl %esi, %esi , .Typedoperands ) ~>
execinstr ( setns %cl , .Typedoperands ) ~>
execinstr ( sarq %cl, %rbx , .Typedoperands ) ~>
execinstr ( movzwl %si, %r12d , .Typedoperands ) ~>
execinstr ( decl %r12d , .Typedoperands ) ~>
setSZPForRegister( %rbx ) ~>
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
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sarq_r64_one
instr:sarq $0x1, %rbx
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:andnl %ebx, %ebx, %esi  #  1     0     5      OPC=andnl_r32_r32_r32
circuit:movl %esi, %esi         #  2     0x5   2      OPC=movl_r32_r32
circuit:setns %cl               #  3     0x7   3      OPC=setns_r8
circuit:sarq %cl, %rbx          #  4     0xa   3      OPC=sarq_r64_cl
circuit:movzwl %si, %r12d       #  5     0xd   4      OPC=movzwl_r32_r16
circuit:decl %r12d              #  6     0x11  3      OPC=decl_r32
circuit:callq .set_szp_for_rbx  #  7     0x14  5      OPC=callq_label
*/