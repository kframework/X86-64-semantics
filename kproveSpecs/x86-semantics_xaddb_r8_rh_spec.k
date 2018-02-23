module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( movzbw %ah, %si , .Typedoperands ) ~>
execinstr ( movzbq %bl, %r12 , .Typedoperands ) ~>
execinstr ( movslq %r12d, %rdx , .Typedoperands ) ~>
split2NToN(%dx,  %r8b, %r9b , 08) ~>
execinstr ( movsbl %r12b, %ebx , .Typedoperands ) ~>
execinstr ( movb %dl, %ah , .Typedoperands ) ~>
movByteToPosOfReg( %r9b, 6, %rbx ) ~>
execinstr ( popcntq %rdx, %r9 , .Typedoperands ) ~>
execinstr ( adcb %sil, %bl , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
restoreRegister("SPAD2", 0, 8, 16, 48,
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
"SPAD2" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xaddb_r8_rh
instr:xaddb %ah, %bl
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %ah %bl %cf %pf %af %zf %sf %of }
must write:{ %ah %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movzbw %ah, %si                   #  1     0     4      OPC=movzbw_r16_rh
circuit:movzbq %bl, %r12                  #  2     0x4   4      OPC=movzbq_r64_r8
circuit:movslq %r12d, %rdx                #  3     0x8   3      OPC=movslq_r64_r32
circuit:callq .move_016_008_dx_r8b_r9b    #  4     0xb   5      OPC=callq_label
circuit:movsbl %r12b, %ebx                #  5     0x10  4      OPC=movsbl_r32_r8
circuit:movb %dl, %ah                     #  6     0x14  2      OPC=movb_rh_r8
circuit:callq .move_r9b_to_byte_6_of_rbx  #  7     0x16  5      OPC=callq_label
circuit:popcntq %rdx, %r9                 #  8     0x1b  5      OPC=popcntq_r64_r64
circuit:adcb %sil, %bl                    #  9     0x20  3      OPC=adcb_r8_r8
*/