module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
readFlagToRegister( "OF", %rbx ) ~>
execinstr ( setnl %r9b , .Typedoperands ) ~>
execinstr ( xchgb %bh, %bl , .Typedoperands ) ~>
execinstr ( movzbl %r9b, %edi , .Typedoperands ) ~>
execinstr ( cmovnel %edi, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnle_r8
instr:setnle %bl
maybe read:{ %zf %sf %of }
must read:{ %zf %sf %of }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rbx  #  1     0     5      OPC=callq_label
circuit:setnl %r9b               #  2     0x5   4      OPC=setnl_r8
circuit:xchgb %bh, %bl           #  3     0x9   2      OPC=xchgb_r8_rh
circuit:movzbl %r9b, %edi        #  4     0xb   4      OPC=movzbl_r32_r8
circuit:cmovnel %edi, %ebx       #  5     0xf   3      OPC=cmovnel_r32_r32
*/