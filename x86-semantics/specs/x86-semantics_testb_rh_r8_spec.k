module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorl %edx, %edx , .Typedoperands ) ~>
setFlag( mi(1, 0), "CF") ~>
execinstr ( setg %bh , .Typedoperands ) ~>
execinstr ( adcw %bx, %dx , .Typedoperands ) ~>
execinstr ( testb %ah, %dl , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, ?I6:Int):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:testb_rh_r8
instr:testb %bl, %ah
maybe read:{ %ah %bl }
must read:{ %ah %bl }
maybe write:{ %cf %pf %zf %sf %of }
must write:{ %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:xorl %edx, %edx  #  1     0    2      OPC=xorl_r32_r32
circuit:callq .clear_cf  #  2     0x2  5      OPC=callq_label
circuit:setg %bh         #  3     0x7  3      OPC=setg_rh
circuit:adcw %bx, %dx    #  4     0xa  3      OPC=adcw_r16_r16
circuit:testb %ah, %dl   #  5     0xd  2      OPC=testb_r8_rh
*/