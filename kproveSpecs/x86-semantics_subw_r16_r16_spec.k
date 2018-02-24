module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movswl %cx, %esp , .Typedoperands ) ~>
execinstr ( xorw %ax, %ax , .Typedoperands ) ~>
execinstr ( rclb $0x1, %ch , .Typedoperands ) ~>
execinstr ( xorb %ah, %ch , .Typedoperands ) ~>
execinstr ( adcb %ah, %bh , .Typedoperands ) ~>
execinstr ( sbbw %sp, %bx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RSP" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:subw_r16_r16
instr:subw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %bx %cf %pf %af %zf %sf %of }
must write:{ %bx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movswl %cx, %esp  #  1     0    3      OPC=movswl_r32_r16
circuit:xorw %ax, %ax     #  2     0x3  3      OPC=xorw_r16_r16
circuit:rclb $0x1, %ch    #  3     0x6  2      OPC=rclb_rh_one
circuit:xorb %ah, %ch     #  4     0x8  2      OPC=xorb_rh_rh
circuit:adcb %ah, %bh     #  5     0xa  2      OPC=adcb_rh_rh
circuit:sbbw %sp, %bx     #  6     0xc  3      OPC=sbbw_r16_r16
*/