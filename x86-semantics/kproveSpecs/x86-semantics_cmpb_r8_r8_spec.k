module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( salw $0x1, %ax , .Typedoperands ) ~>
execinstr ( xchgb %ah, %cl , .Typedoperands ) ~>
execinstr ( cmpb %ah, %bl , .Typedoperands ) ~>
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
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmpb_r8_r8
instr:cmpb %cl, %bl
maybe read:{ %cl %bl }
must read:{ %cl %bl }
maybe write:{ %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64
circuit:salw $0x1, %ax   #  2     0x3  3      OPC=salw_r16_one
circuit:xchgb %ah, %cl   #  3     0x6  2      OPC=xchgb_r8_rh
circuit:cmpb %ah, %bl    #  4     0x8  2      OPC=cmpb_r8_rh
*/