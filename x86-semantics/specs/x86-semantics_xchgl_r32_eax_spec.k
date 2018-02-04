module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
split2NToN(%ebx,  %r8w, %r9w , 16) ~>
movByteToPosOfReg( %r9b, 2, %rbx ) ~>
execinstr ( xchgl %eax, %ebx , .Typedoperands ) ~>
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
"R8" |-> (mi(64, 0):MInt => _)
"R9" |-> (mi(64, 0):MInt => _)
"RAX" |-> (mi(64, ?I1:Int):MInt => _)
"RBX" |-> (mi(64, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:xchgl_r32_eax
instr:xchgl %eax, %ebx
maybe read:{ %eax %ebx }
must read:{ %eax %ebx }
maybe write:{ %rax %rbx }
must write:{ %rax %rbx }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .move_032_016_ebx_r8w_r9w   #  1     0    5      OPC=callq_label
circuit:callq .move_r9b_to_byte_2_of_rbx  #  2     0x5  5      OPC=callq_label
circuit:xchgl %eax, %ebx                  #  3     0xa  2      OPC=xchgl_r32_r32
*/