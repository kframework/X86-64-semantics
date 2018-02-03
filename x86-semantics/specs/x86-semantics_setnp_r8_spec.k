module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "PF", %rbx ) ~>
setSZPForRegister( %bx ) ~>
readFlagToRegister( "ZF", %rbx ) ~>
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
"PF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnp_r8
instr:setnp %bl
maybe read:{ %pf }
must read:{ %pf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label
circuit:callq .set_szp_for_bx    #  2     0x5  5      OPC=callq_label
circuit:callq .read_zf_into_rbx  #  3     0xa  5      OPC=callq_label
*/