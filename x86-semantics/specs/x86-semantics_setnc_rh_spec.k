module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( decb %bl , .Typedoperands ) ~>
execinstr ( movq $0x4, %rax , .Typedoperands ) ~>
execinstr ( addw %bx, %ax , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnc_rh
instr:setnc %ah
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label
circuit:decb %bl                 #  2     0x5   2      OPC=decb_r8
circuit:movq $0x4, %rax          #  3     0x7   10     OPC=movq_r64_imm64
circuit:addw %bx, %ax            #  4     0x11  3      OPC=addw_r16_r16
*/