module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( setnle %cl , .Typedoperands ) ~>
execinstr ( setne %ah , .Typedoperands ) ~>
execinstr ( xchgb %cl, %ah , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, ?I4:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnle_rh
instr:setnle %ah
maybe read:{ %zf %sf %of }
must read:{ %zf %sf %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:setnle %cl      #  1     0    3      OPC=setnle_r8
circuit:setne %ah       #  2     0x3  3      OPC=setne_rh
circuit:xchgb %cl, %ah  #  3     0x6  2      OPC=xchgb_rh_r8
*/