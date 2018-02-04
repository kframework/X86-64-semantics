module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0xffffffffffffffff, %rbp , .Typedoperands ) ~>
execinstr ( addw %bx, %bp , .Typedoperands ) ~>
execinstr ( notw %bx , .Typedoperands ) ~>
execinstr ( incw %bx , .Typedoperands ) ~>
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
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:negw_r16
instr:negw %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %cf %pf %af %zf %sf %of }
must write:{ %bx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xffffffffffffffff, %rbp  #  1     0     10     OPC=movq_r64_imm64
circuit:addw %bx, %bp                   #  2     0xa   3      OPC=addw_r16_r16
circuit:notw %bx                        #  3     0xd   3      OPC=notw_r16
circuit:incw %bx                        #  4     0x10  3      OPC=incw_r16
*/