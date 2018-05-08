module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movsbl %bl, %ebx , .Typedoperands ) ~>
execinstr ( movsbl %cl, %r11d , .Typedoperands ) ~>
execinstr ( testl %r11d, %ebx , .Typedoperands ) ~>
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
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:testb_r8_r8
instr:testb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %cf %pf %zf %sf %of }
must write:{ %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movsbl %bl, %ebx   #  1     0    3      OPC=movsbl_r32_r8
circuit:movsbl %cl, %r11d  #  2     0x3  4      OPC=movsbl_r32_r8
circuit:testl %r11d, %ebx  #  3     0x7  3      OPC=testl_r32_r32
*/