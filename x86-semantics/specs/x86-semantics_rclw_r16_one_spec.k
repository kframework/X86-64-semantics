module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( adcw %bx, %bx , .Typedoperands ) ~>
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
opcode:rclw_r16_one
instr:rclw $0x1, %bx
maybe read:{ %bx %cf }
must read:{ %bx %cf }
maybe write:{ %bx %cf %of }
must write:{ %bx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:adcw %bx, %bx  #  1     0    3      OPC=adcw_r16_r16
*/