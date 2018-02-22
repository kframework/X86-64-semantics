module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( movq $0xffffffffffffffff, %r14 , .Typedoperands ) ~>
execinstr ( movswq %bx, %r12 , .Typedoperands ) ~>
execinstr ( xorw %r14w, %r12w , .Typedoperands ) ~>
execinstr ( movslq %r12d, %rbx , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R12" |-> (mi(64, 0):MInt => _)
"R14" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:notw_r16
instr:notw %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx }
must write:{ %bx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0xffffffffffffffff, %r14  #  1     0     10     OPC=movq_r64_imm64
circuit:movswq %bx, %r12                #  2     0xa   4      OPC=movswq_r64_r16
circuit:xorw %r14w, %r12w               #  3     0xe   4      OPC=xorw_r16_r16
circuit:movslq %r12d, %rbx              #  4     0x12  3      OPC=movslq_r64_r32
*/