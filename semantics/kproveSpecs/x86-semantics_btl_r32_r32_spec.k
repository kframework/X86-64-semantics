module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( shrxl %ecx, %ebx, %esi , .Typedoperands ) ~>
execinstr ( sarq $0x1, %rsi , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:btl_r32_r32
instr:btl %ecx, %ebx
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %cf }
must write:{ %cf }
maybe undef:{ %pf %af %sf %of }
must undef:{ %pf %af %sf %of }
required flags:{ }

circuit:shrxl %ecx, %ebx, %esi  #  1     0    5      OPC=shrxl_r32_r32_r32
circuit:sarq $0x1, %rsi         #  2     0x5  3      OPC=sarq_r64_one
*/