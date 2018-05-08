module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0xfffffffffffffff8, %rbx , .Typedoperands ) ~>
execinstr ( xchgb %cl, %bh , .Typedoperands ) ~>
execinstr ( movsbl %bh, %eax , .Typedoperands ) ~>
execinstr ( movw %ax, %bx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movsbw_r16_r8
instr:movsbw %cl, %bx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xfffffffffffffff8, %rbx  #  1     0     10     OPC=movq_r64_imm64
circuit:xchgb %cl, %bh                  #  2     0xa   2      OPC=xchgb_rh_r8
circuit:movsbl %bh, %eax                #  3     0xc   3      OPC=movsbl_r32_rh
circuit:movw %ax, %bx                   #  4     0xf   3      OPC=movw_r16_r16
*/