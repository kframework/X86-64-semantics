module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0xffffffffffffffff, %r9 , .Typedoperands ) ~>
execinstr ( xorq %rcx, %rcx , .Typedoperands ) ~>
execinstr ( adcb %r9b, %bl , .Typedoperands ) ~>
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
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, ?I2:Int):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"ZF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"OF" |-> (mi(1, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"AF" |-> (mi(1, ?I6:Int):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:decb_r8
instr:decb %bl
maybe read:{ %bl }
must read:{ %bl }
maybe write:{ %bl %pf %af %zf %sf %of }
must write:{ %bl %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xffffffffffffffff, %r9  #  1     0     10     OPC=movq_r64_imm64
circuit:xorq %rcx, %rcx                #  2     0xa   3      OPC=xorq_r64_r64
circuit:adcb %r9b, %bl                 #  3     0xd   3      OPC=adcb_r8_r8
*/