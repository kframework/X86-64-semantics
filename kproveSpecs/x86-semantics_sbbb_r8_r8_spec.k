module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movb %bl, %dh , .Typedoperands ) ~>
execinstr ( xchgb %dh, %bl , .Typedoperands ) ~>
execinstr ( sbbb %cl, %dh , .Typedoperands ) ~>
execinstr ( movzbw %dh, %bx , .Typedoperands ) ~>
restoreRegister("SPAD1", 8, 56, 0, 0,
          0, 8, %rbx) ~>
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
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sbbb_r8_r8
instr:sbbb %cl, %bl
maybe read:{ %cl %bl %cf }
must read:{ %cl %bl %cf }
maybe write:{ %bl %cf %pf %af %zf %sf %of }
must write:{ %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movb %bl, %dh    #  1     0    2      OPC=movb_rh_r8
circuit:xchgb %dh, %bl   #  2     0x2  2      OPC=xchgb_r8_rh
circuit:sbbb %cl, %dh    #  3     0x4  2      OPC=sbbb_rh_r8
circuit:movzbw %dh, %bx  #  4     0x6  4      OPC=movzbw_r16_rh
*/