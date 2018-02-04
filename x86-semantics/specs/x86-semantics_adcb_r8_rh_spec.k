module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movsbw %ah, %cx , .Typedoperands ) ~>
execinstr ( adcb %cl, %bl , .Typedoperands ) ~>
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
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:adcb_r8_rh
instr:adcb %ah, %bl
maybe read:{ %ah %bl %cf }
must read:{ %ah %bl %cf }
maybe write:{ %bl %cf %pf %af %zf %sf %of }
must write:{ %bl %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movsbw %ah, %cx  #  1     0    4      OPC=movsbw_r16_rh
circuit:adcb %cl, %bl    #  2     0x4  2      OPC=adcb_r8_r8
*/