module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xchgb %bl, %ah , .Typedoperands ) ~>
execinstr ( sbbb %bl, %ah , .Typedoperands ) ~>
execinstr ( movsbw %ah, %bx , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:sbbb_r8_rh
instr:sbbb %ah, %bl
maybe read:{ %ah %bl %cf }
must read:{ %ah %bl %cf }
maybe write:{ %bl %cf %pf %af %zf %sf %of }
must write:{ %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xchgb %bl, %ah   #  1     0    2      OPC=xchgb_rh_r8
circuit:sbbb %bl, %ah    #  2     0x2  2      OPC=sbbb_rh_r8
circuit:movsbw %ah, %bx  #  3     0x4  4      OPC=movsbw_r16_rh
*/