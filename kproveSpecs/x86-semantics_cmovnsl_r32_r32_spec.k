module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movl %ecx, %esi , .Typedoperands ) ~>
readFlagToRegister( "SF", %rcx ) ~>
execinstr ( decl %ecx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovnsl_r32_r32
instr:cmovnsl %ecx, %ebx
maybe read:{ %ecx %sf }
must read:{ %ecx %sf }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movl %ecx, %esi          #  1     0    2      OPC=movl_r32_r32
circuit:callq .read_sf_into_rcx  #  2     0x2  5      OPC=callq_label
circuit:decl %ecx                #  3     0x7  2      OPC=decl_r32
circuit:cmovnzl %esi, %ebx       #  4     0x9  3      OPC=cmovnzl_r32_r32
*/