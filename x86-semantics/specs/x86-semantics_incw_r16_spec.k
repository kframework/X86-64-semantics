module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
setFlag( mi(1, 1), "CF") ~>
execinstr ( adcw %ax, %bx , .Typedoperands ) ~>
setSZPForRegister( %bx ) ~>
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
opcode:incw_r16
instr:incw %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %pf %af %zf %sf %of }
must write:{ %bx %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax        #  1     0     3      OPC=xorq_r64_r64
circuit:callq .set_cf          #  2     0x3   5      OPC=callq_label
circuit:adcw %ax, %bx          #  3     0x8   3      OPC=adcw_r16_r16
circuit:callq .set_szp_for_bx  #  4     0xb   5      OPC=callq_label
*/