module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
readFlagToRegister( "OF", %rbx ) ~>
movPosOfRegToByte( 6, %rbx, %r9b ) ~>
movByteToPosOfReg( %r9b, 6, %rbx ) ~>
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
"R9" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I1:Int):MInt => _)
"OF" |-> (mi(1, ?I2:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:seto_r8
instr:seto %bl
maybe read:{ %of }
must read:{ %of }
maybe write:{ %bl }
must write:{ %bl }
maybe undef:{ }
must undef:{ }
required flags:{ }

circuit:callq .read_of_into_rbx           #  1     0    5      OPC=callq_label
circuit:callq .move_byte_6_of_rbx_to_r9b  #  2     0x5  5      OPC=callq_label
circuit:callq .move_r9b_to_byte_6_of_rbx  #  3     0xa  5      OPC=callq_label
*/