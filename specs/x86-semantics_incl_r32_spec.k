module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
setFlag( mi(1, 0), "CF") ~>
setFlag( mi(1, 1), "PF") ~>
readFlagToRegister( "PF", %rcx ) ~>
execinstr ( adcl %ecx, %ebx , .Typedoperands ) ~>
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
"SF" |-> (mi(1, ?I1:Int):MInt => _)
"ZF" |-> (mi(1, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I5:Int):MInt => _)
"AF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:incl_r32
instr:incl %ebx
maybe read:{ %ebx }
must read:{ %ebx }
maybe write:{ %rbx %pf %af %zf %sf %of }
must write:{ %rbx %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .clear_cf          #  1     0     5      OPC=callq_label
circuit:callq .set_pf            #  2     0x5   5      OPC=callq_label
circuit:callq .read_pf_into_rcx  #  3     0xa   5      OPC=callq_label
circuit:adcl %ecx, %ebx          #  4     0xf   2      OPC=adcl_r32_r32
circuit:callq .set_szp_for_ebx   #  5     0x11  5      OPC=callq_label
*/