module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0xfffffffffffffffe, %rdx , .Typedoperands ) ~>
execinstr ( incb %dl , .Typedoperands ) ~>
execinstr ( xorq %rdx, %rbx , .Typedoperands ) ~>
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
"PF" |-> (mi(1, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:notq_r64
instr:notq %rbx
maybe read:{ %rbx }
must read:{ %rbx }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xfffffffffffffffe, %rdx  #  1     0    10     OPC=movq_r64_imm64
circuit:incb %dl                        #  2     0xa  2      OPC=incb_r8
circuit:xorq %rdx, %rbx                 #  3     0xc  3      OPC=xorq_r64_r64
*/