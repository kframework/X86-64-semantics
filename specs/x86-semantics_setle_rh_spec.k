module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "ZF", %rbx ) ~>
execinstr ( setnge %bh , .Typedoperands ) ~>
setSZPForRegister( %bx ) ~>
execinstr ( setne %ah , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48, 
          8, 8, %rax) ~>
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
"SPAD1" |->    (mi(256, 0) => _)
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setle_rh
instr:setle %ah
maybe read:{ %zf %sf %of }
must read:{ %zf %sf %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label
circuit:setnge %bh               #  2     0x5   3      OPC=setnge_rh
circuit:callq .set_szp_for_bx    #  3     0x8   5      OPC=callq_label
circuit:setne %ah                #  4     0xd   3      OPC=setne_rh
*/