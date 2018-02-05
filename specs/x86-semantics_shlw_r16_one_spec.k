module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( sall $0x1, %eax , .Typedoperands ) ~>
execinstr ( cltq  .Typedoperands ) ~>
execinstr ( cltq  .Typedoperands ) ~>
execinstr ( adcw %ax, %bx , .Typedoperands ) ~>
execinstr ( addw %bx, %bx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shlw_r16_one
instr:shlw $0x1, %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %cf %pf %zf %sf %of }
must write:{ %bx %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64
circuit:sall $0x1, %eax  #  2     0x3  2      OPC=sall_r32_one
circuit:cltq             #  3     0x5  2      OPC=cltq
circuit:cltq             #  4     0x7  2      OPC=cltq
circuit:adcw %ax, %bx    #  5     0x9  3      OPC=adcw_r16_r16
circuit:addw %bx, %bx    #  6     0xc  3      OPC=addw_r16_r16
*/