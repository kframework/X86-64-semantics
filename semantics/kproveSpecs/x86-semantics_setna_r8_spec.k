module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0x5, %rbx , .Typedoperands ) ~>
execinstr ( setna %dh , .Typedoperands ) ~>
execinstr ( xchgb %bl, %dh , .Typedoperands ) ~>
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
"CF" |-> (mi(1, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setna_r8
instr:setna %bl
maybe read:{ %cf %zf }
must read:{ %cf %zf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x5, %rbx  #  1     0    10     OPC=movq_r64_imm64
circuit:setna %dh        #  2     0xa  3      OPC=setna_rh
circuit:xchgb %bl, %dh   #  3     0xd  2      OPC=xchgb_rh_r8
*/