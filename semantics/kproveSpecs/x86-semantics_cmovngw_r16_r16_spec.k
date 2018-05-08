module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movzwl %cx, %edi , .Typedoperands ) ~>
execinstr ( cmovngl %edi, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, ?I5:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovngw_r16_r16
instr:cmovngw %cx, %bx
maybe read:{ %cx %zf %sf %of }
must read:{ %cx %zf %sf %of }
maybe write:{ %bx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movzwl %cx, %edi    #  1     0    3      OPC=movzwl_r32_r16
circuit:cmovngl %edi, %ebx  #  2     0x3  3      OPC=cmovngl_r32_r32
*/