module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movswq %bx, %r8 , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
execinstr ( adcw %r8w, %r8w , .Typedoperands ) ~>
execinstr ( adcw %bx, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0,
          0, 16, %rbx) ~>
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
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rolw_r16_one
instr:rolw $0x1, %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %cf %of }
must write:{ %bx %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswq %bx, %r8  #  1     0    4      OPC=movswq_r64_r16
circuit:clc              #  2     0x4  1      OPC=clc
circuit:adcw %r8w, %r8w  #  3     0x5  4      OPC=adcw_r16_r16
circuit:adcw %bx, %bx    #  4     0x9  3      OPC=adcw_r16_r16
*/