module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movb %ah, %dh , .Typedoperands ) ~>
execinstr ( movb %dh, %al , .Typedoperands ) ~>
execinstr ( rorb $0x1, %al , .Typedoperands ) ~>
execinstr ( movswq %ax, %rbx , .Typedoperands ) ~>
execinstr ( xchgb %ah, %bl , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"RAX" |-> (mi(64, ?I3:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:rorb_rh_one
instr:rorb $0x1, %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah %cf %of }
must write:{ %ah %cf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %ah, %dh     #  1     0    2      OPC=movb_rh_rh
circuit:movb %dh, %al     #  2     0x2  2      OPC=movb_r8_rh
circuit:rorb $0x1, %al    #  3     0x4  2      OPC=rorb_r8_one
circuit:movswq %ax, %rbx  #  4     0x6  4      OPC=movswq_r64_r16
circuit:xchgb %ah, %bl    #  5     0xa  2      OPC=xchgb_r8_rh
*/