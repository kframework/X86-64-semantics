module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( adcq %rbx, %rbx , .Typedoperands ) ~>
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
      regstateInitConfig => regstateFinalConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rclq_r64_one
instr:rclq $0x1, %rbx
maybe read:{ %rbx %cf }
must read:{ %rbx %cf }
maybe write:{ %rbx %cf %of }
must write:{ %rbx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:adcq %rbx, %rbx  #  1     0    3      OPC=adcq_r64_r64
*/