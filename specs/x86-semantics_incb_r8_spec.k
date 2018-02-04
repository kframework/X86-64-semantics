module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
readFlagToRegister( "ZF", %rcx ) ~>
execinstr ( adcb %cl, %bl , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I4:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:incb_r8
instr:incb %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %pf %af %zf %sf %of }
must write:{ %bl %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64
circuit:clc                      #  2     0x3  1      OPC=clc
circuit:callq .read_zf_into_rcx  #  3     0x4  5      OPC=callq_label
circuit:adcb %cl, %bl            #  4     0x9  2      OPC=adcb_r8_r8
*/