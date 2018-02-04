module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movsbq %bl, %rbp , .Typedoperands ) ~>
execinstr ( movsbq %bpl, %rbx , .Typedoperands ) ~>
execinstr ( shlb $0x1, %bl , .Typedoperands ) ~>
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
"RBP" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:salb_r8_one
instr:salb $0x1, %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %cf %pf %zf %sf %of }
must write:{ %bl %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movsbq %bl, %rbp   #  1     0    4      OPC=movsbq_r64_r8
circuit:movsbq %bpl, %rbx  #  2     0x4  4      OPC=movsbq_r64_r8
circuit:shlb $0x1, %bl     #  3     0x8  2      OPC=shlb_r8_one
*/