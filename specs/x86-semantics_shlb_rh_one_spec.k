module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
execinstr ( movb %ah, %bl , .Typedoperands ) ~>
execinstr ( shlb $0x1, %bl , .Typedoperands ) ~>
execinstr ( movzbq %bl, %rcx , .Typedoperands ) ~>
execinstr ( movb %cl, %ah , .Typedoperands ) ~>
restoreRegister("SPAD1", 0, 8, 16, 48, 
          8, 8, %rax) ~>
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
"RAX" |-> (mi(64, ?I5:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I6:Int):MInt => _)
"ZF" |-> (mi(1, ?I7:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:shlb_rh_one
instr:shlb $0x1, %ah
maybe read:{ %ah }
must read:{ %ah }
maybe write:{ %ah %cf %pf %zf %sf %of }
must write:{ %ah %cf %pf %zf %sf %of }
maybe undef:{ %af }
must undef:{ %af }
required flags:{ }

circuit:movb %ah, %bl     #  1     0    2      OPC=movb_r8_rh
circuit:shlb $0x1, %bl    #  2     0x2  2      OPC=shlb_r8_one
circuit:movzbq %bl, %rcx  #  3     0x4  4      OPC=movzbq_r64_r8
circuit:movb %cl, %ah     #  4     0x8  2      OPC=movb_rh_r8
*/