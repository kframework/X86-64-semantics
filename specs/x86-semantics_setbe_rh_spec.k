module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( setbe %dl , .Typedoperands ) ~>
execinstr ( xorw %ax, %ax , .Typedoperands ) ~>
execinstr ( xaddb %ah, %dl , .Typedoperands ) ~>
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
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setbe_rh
instr:setbe %ah
maybe read:{ %cf %zf }
must read:{ %cf %zf }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:setbe %dl       #  1     0    3      OPC=setbe_r8
circuit:xorw %ax, %ax   #  2     0x3  3      OPC=xorw_r16_r16
circuit:xaddb %ah, %dl  #  3     0x6  3      OPC=xaddb_r8_rh
*/