module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( setb %bl , .Typedoperands ) ~>
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

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setc_r8
instr:setc %bl
maybe read:{ %cf }
must read:{ %cf }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:setb %bl  #  1     0    3      OPC=setb_r8
*/