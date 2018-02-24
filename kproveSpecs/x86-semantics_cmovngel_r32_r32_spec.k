module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movslq %ecx, %r8 , .Typedoperands ) ~>
execinstr ( setl %cl , .Typedoperands ) ~>
writeRegisterToFlag( %cl, "ZF") ~>
execinstr ( cmovel %r8d, %ebx , .Typedoperands ) ~>
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
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"R8" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)
"RCX" |-> (mi(64, ?I3:Int):MInt => _)
"SF" |-> (mi(1, ?I4:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:cmovngel_r32_r32
instr:cmovngel %ecx, %ebx
maybe read:{ %ecx %sf %of }
must read:{ %ecx %sf %of }
maybe write:{ %rbx }
must write:{ }
maybe undef:{ }
must undef:{ }
required flags:{ cmov }

circuit:movslq %ecx, %r8       #  1     0    3      OPC=movslq_r64_r32
circuit:setl %cl               #  2     0x3  3      OPC=setl_r8
circuit:callq .write_cl_to_zf  #  3     0x6  5      OPC=callq_label
circuit:cmovel %r8d, %ebx      #  4     0xb  4      OPC=cmovel_r32_r32
*/