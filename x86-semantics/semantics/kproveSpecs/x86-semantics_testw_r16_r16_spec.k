module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movswq %bx, %r10 , .Typedoperands ) ~>
execinstr ( movswl %cx, %edi , .Typedoperands ) ~>
execinstr ( xchgl %edi, %r10d , .Typedoperands ) ~>
execinstr ( andl %r10d, %edi , .Typedoperands ) ~>
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
"R10" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"RDI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:testw_r16_r16
instr:testw %cx, %bx
maybe read:{ %cx %bx }
must read:{ %cx %bx }
maybe write:{ %cf %pf %zf %sf %of }
must write:{ %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movswq %bx, %r10   #  1     0    4      OPC=movswq_r64_r16
circuit:movswl %cx, %edi   #  2     0x4  3      OPC=movswl_r32_r16
circuit:xchgl %edi, %r10d  #  3     0x7  3      OPC=xchgl_r32_r32
circuit:andl %r10d, %edi   #  4     0xa  3      OPC=andl_r32_r32
*/