module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rax, "SPAD1") ~>
readFlagToRegister( "OF", %rcx ) ~>
readFlagToRegister( "SF", %rbx ) ~>
execinstr ( xorw %bx, %cx , .Typedoperands ) ~>
execinstr ( movslq %ecx, %rdx , .Typedoperands ) ~>
execinstr ( movb %dl, %ah , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I1:Int):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"RAX" |-> (mi(64, ?I2:Int):MInt => _)
"RBX" |-> (mi(64, 0):MInt => _)
"RCX" |-> (mi(64, 0):MInt => _)
"RDX" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I3:Int):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:setnge_rh
instr:setnge %ah
maybe read:{ %sf %of }
must read:{ %sf %of }
maybe write:{ %ah }
must write:{ %ah }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rcx  #  1     0     5      OPC=callq_label
circuit:callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label
circuit:xorw %bx, %cx            #  3     0xa   3      OPC=xorw_r16_r16
circuit:movslq %ecx, %rdx        #  4     0xd   3      OPC=movslq_r64_r32
circuit:movb %dl, %ah            #  5     0x10  2      OPC=movb_rh_r8
*/