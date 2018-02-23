module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( movq $0x8, %rbx , .Typedoperands ) ~>
split2NToN(%ebx,  %r10w, %r11w , 16) ~>
execinstr ( addw %bx, %r10w , .Typedoperands ) ~>
readFlagToRegister( "PF", %rbx ) ~>
execinstr ( adcb %cl, %bl , .Typedoperands ) ~>
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
"AF" |-> (mi(1, 0):MInt => _)
"CF" |-> (mi(1, 0):MInt => _)
"OF" |-> (mi(1, 0):MInt => _)
"PF" |-> (mi(1, 0):MInt => _)
"R10" |-> (mi(64, 0):MInt => _)
"R11" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"RCX" |-> (mi(64, ?I2:Int):MInt => _)
"SF" |-> (mi(1, 0):MInt => _)
"ZF" |-> (mi(1, 0):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:movzbl_r32_r8
instr:movzbl %cl, %ebx
maybe read:{ %cl }
must read:{ %cl }
maybe write:{ %rbx }
must write:{ %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:movq $0x8, %rbx                    #  1     0     10     OPC=movq_r64_imm64
circuit:callq .move_032_016_ebx_r10w_r11w  #  2     0xa   5      OPC=callq_label
circuit:addw %bx, %r10w                    #  3     0xf   4      OPC=addw_r16_r16
circuit:callq .read_pf_into_rbx            #  4     0x13  5      OPC=callq_label
circuit:adcb %cl, %bl                      #  5     0x18  2      OPC=adcb_r8_r8
*/