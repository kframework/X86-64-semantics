module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
saveRegister(%rbx, "SPAD2") ~>
execinstr ( xorl %esi, %esi , .Typedoperands ) ~>
execinstr ( decb %sil , .Typedoperands ) ~>
execinstr ( setae %al , .Typedoperands ) ~>
execinstr ( setpo %bl , .Typedoperands ) ~>
execinstr ( xchgw %ax, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48, 
          8, 8, %rax) ~>
restoreRegister("SPAD2", 0, 8, 16, 48, 
          8, 8, %rbx) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgb_rh_rh
instr:xchgb %bh, %ah
maybe read:{ %ah %bh }
must read:{ %ah %bh }
maybe write:{ %ah %bh }
must write:{ %ah %bh }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorl %esi, %esi  #  1     0    2      OPC=xorl_r32_r32
circuit:decb %sil        #  2     0x2  2      OPC=decb_r8
circuit:setae %al        #  3     0x4  3      OPC=setae_r8
circuit:setpo %bl        #  4     0x7  3      OPC=setpo_r8
circuit:xchgw %ax, %bx   #  5     0xa  3      OPC=xchgw_r16_r16
*/