module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0xffffffffffffffff, %r8 , .Typedoperands ) ~>
execinstr ( sarxq %r8, %rax, %rdx , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RDX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cqto
instr:cqto
maybe read:{ %rax }
must read:{ %rax }
maybe write:{ %rdx }
must write:{ %rdx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xffffffffffffffff, %r8  #  1     0    10     OPC=movq_r64_imm64
circuit:sarxq %r8, %rax, %rdx          #  2     0xa  5      OPC=sarxq_r64_r64_r64
*/