module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "OF", %rcx ) ~>
setFlag( mi(1, 1), "CF") ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( movslq %ecx, %r8 , .Typedoperands ) ~>
execinstr ( xorw %r8w, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setno_r8
instr:setno %bl
maybe read:{ %of }
must read:{ %of }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rcx  #  1     0     5      OPC=callq_label
circuit:callq .set_cf            #  2     0x5   5      OPC=callq_label
circuit:callq .read_cf_into_rbx  #  3     0xa   5      OPC=callq_label
circuit:movslq %ecx, %r8         #  4     0xf   3      OPC=movslq_r64_r32
circuit:xorw %r8w, %bx           #  5     0x12  4      OPC=xorw_r16_r16
*/