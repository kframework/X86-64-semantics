module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, 48, "SPAD1") ~>
execinstr ( xorq %rcx, %rcx , .Typedoperands ) ~>
readFlagToRegister( "SF", %rbx ) ~>
execinstr ( movb %ah, %bl , .Typedoperands ) ~>
restoreRegister("SPAD1", 48, 16, %rbx) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movzbw_r16_rh
instr:movzbw %ah, %bx
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rcx, %rcx          #  1     0    3      OPC=xorq_r64_r64
circuit:callq .read_sf_into_rbx  #  2     0x3  5      OPC=callq_label
circuit:movb %ah, %bl            #  3     0x8  2      OPC=movb_r8_rh
*/