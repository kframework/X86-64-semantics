module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
saveRegister(%rax, "SPAD2") ~>
execinstr ( xchgw %ax, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0, 
          0, 16, %rbx) ~>
restoreRegister("SPAD2", 16, 48, 0, 0, 
          0, 16, %rax) ~>
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
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgw_ax_r16
instr:xchgw %bx, %ax
maybe read:{ %ax %bx }
must read:{ %ax %bx }
maybe write:{ %ax %bx }
must write:{ %ax %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgw %ax, %bx  #  1     0    2      OPC=xchgw_r16_ax
*/