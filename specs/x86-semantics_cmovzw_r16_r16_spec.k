module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movswq %cx, %r13 , .Typedoperands ) ~>
execinstr ( movslq %r13d, %r13 , .Typedoperands ) ~>
execinstr ( cmoveq %r13, %rbx , .Typedoperands ) ~>
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
"ZF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"R13" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovzw_r16_r16
instr:cmovzw %cx, %bx
maybe read:{ %cx %zf }
must read:{ %cx %zf }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movswq %cx, %r13    #  1     0    4      OPC=movswq_r64_r16
circuit:movslq %r13d, %r13  #  2     0x4  3      OPC=movslq_r64_r32
circuit:cmoveq %r13, %rbx   #  3     0x7  4      OPC=cmoveq_r64_r64
*/