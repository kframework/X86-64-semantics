module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movswl %ax, %edi , .Typedoperands ) ~>
execinstr ( movswl %di, %eax , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cwtl
instr:cwtl
maybe read:{ %ax }
must read:{ %ax }
maybe write:{ %rax }
must write:{ %rax }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswl %ax, %edi  #  1     0    3      OPC=movswl_r32_r16
circuit:movswl %di, %eax  #  2     0x3  3      OPC=movswl_r32_r16
*/