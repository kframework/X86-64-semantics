module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movswq %bx, %r12 , .Typedoperands ) ~>
execinstr ( sarq $0x1, %r12 , .Typedoperands ) ~>
execinstr ( xchgw %r12w, %bx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sarw_r16_one
instr:sarw $0x1, %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %cf %pf %zf %sf %of }
must write:{ %bx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movswq %bx, %r12  #  1     0    4      OPC=movswq_r64_r16
circuit:sarq $0x1, %r12   #  2     0x4  3      OPC=sarq_r64_one
circuit:xchgw %r12w, %bx  #  3     0x7  4      OPC=xchgw_r16_r16
*/