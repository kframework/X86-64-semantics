module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0x0, %rbx , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
execinstr ( movsbq %cl, %rdi , .Typedoperands ) ~>
execinstr ( adcb %dil, %bl , .Typedoperands ) ~>
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
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movzbq_r64_r8
instr:movzbq %cl, %rbx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x0, %rbx   #  1     0     10     OPC=movq_r64_imm64
circuit:clc               #  2     0xa   1      OPC=clc
circuit:movsbq %cl, %rdi  #  3     0xb   4      OPC=movsbq_r64_r8
circuit:adcb %dil, %bl    #  4     0xf   3      OPC=adcb_r8_r8
*/