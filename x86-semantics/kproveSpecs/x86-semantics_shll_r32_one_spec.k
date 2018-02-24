module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
execinstr ( adcb %al, %bl , .Typedoperands ) ~>
execinstr ( rcll $0x1, %ebx , .Typedoperands ) ~>
setSZPForRegister( %ebx ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shll_r32_one
instr:shll $0x1, %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %cf %pf %zf %sf %of }
must write:{ %rbx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:xorq %rax, %rax         #  1     0    3      OPC=xorq_r64_r64
circuit:clc                     #  2     0x3  1      OPC=clc
circuit:adcb %al, %bl           #  3     0x4  2      OPC=adcb_r8_r8
circuit:rcll $0x1, %ebx         #  4     0x6  2      OPC=rcll_r32_one
circuit:callq .set_szp_for_ebx  #  5     0x8  5      OPC=callq_label
*/