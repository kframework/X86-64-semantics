module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( orl %ebx, %ebx , .Typedoperands ) ~>
execinstr ( setge %r10b , .Typedoperands ) ~>
execinstr ( xorb %r10b, %bl , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnc_r8
instr:setnc %bl
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label
circuit:orl %ebx, %ebx           #  2     0x5  2      OPC=orl_r32_r32
circuit:setge %r10b              #  3     0x7  4      OPC=setge_r8
circuit:xorb %r10b, %bl          #  4     0xb  3      OPC=xorb_r8_r8
*/