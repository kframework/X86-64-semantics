module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( movq $0xffffffffffffffff, %rsi , .Typedoperands ) ~>
execinstr ( xchgw %ax, %bx , .Typedoperands ) ~>
readFlagToRegister( "CF", %rbx ) ~>
execinstr ( adcw %bx, %ax , .Typedoperands ) ~>
execinstr ( addw %ax, %si , .Typedoperands ) ~>
execinstr ( movswq %si, %rbx , .Typedoperands ) ~>
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
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)
"PF" |-> (mi(1, ?I3:Int):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I4:Int):MInt => _)
"RSI" |-> (mi(64, 0):MInt => _)
"SF" |-> (mi(1, ?I5:Int):MInt => _)
"ZF" |-> (mi(1, ?I6:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:decw_r16
instr:decw %bx
maybe read:{ %bx }
must read:{ %bx }
maybe write:{ %bx %pf %af %zf %sf %of }
must write:{ %bx %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:xorq %rax, %rax                 #  1     0     3      OPC=xorq_r64_r64
circuit:movq $0xffffffffffffffff, %rsi  #  2     0x3   10     OPC=movq_r64_imm64
circuit:xchgw %ax, %bx                  #  3     0xd   3      OPC=xchgw_r16_r16
circuit:callq .read_cf_into_rbx         #  4     0x10  5      OPC=callq_label
circuit:adcw %bx, %ax                   #  5     0x15  3      OPC=adcw_r16_r16
circuit:addw %ax, %si                   #  6     0x18  3      OPC=addw_r16_r16
circuit:movswq %si, %rbx                #  7     0x1b  4      OPC=movswq_r64_r16
*/