module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k> fetch => exit_0 </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem>
loc ( mi(64, 0)) |-> storedinstr ( orq %rbx, %rbx , .Typedoperands )
loc ( mi(64, 1)) |-> storedinstr ( adcq %rcx, %rbx , .Typedoperands )
loc ( mi(64, 2)) |-> storedinstr ( nop .Typedoperands )
      </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      "RIP" |->    (mi(64, 0) => _)

      "RAX" |->    (mi(64,?I1 :Int):MInt => _ )
      "RBX" |->    (mi(64,?I2 :Int):MInt => _ )
      "RCX" |->    (mi(64,?I3 :Int):MInt => _ )
      "RDX" |->    (mi(64,?I4 :Int):MInt => _ )
      "RSI" |->    (mi(64,?I5 :Int):MInt => _ )
      "RDI" |->    (mi(64,?I6 :Int):MInt => _ )
      "RSP" |->    (mi(64,?I7 :Int):MInt => _ )
      "RBP" |->    (mi(64,?I8 :Int):MInt => _ )
      "R8"  |->    (mi(64,?I9 :Int):MInt => _ )
      "R9"  |->    (mi(64,?I10:Int):MInt => _ )
      "R10" |->    (mi(64,?I11:Int):MInt => _ )
      "R11" |->    (mi(64,?I12:Int):MInt => _ )
      "R12" |->    (mi(64,?I13:Int):MInt => _ )
      "R13" |->    (mi(64,?I14:Int):MInt => _ )
      "R14" |->    (mi(64,?I15:Int):MInt => _ )
      "R15" |->    (mi(64,?I16:Int):MInt => _ )
      "CF" |->     (mi(1, ?I17:Int):MInt => _ )
      "PF" |->     (mi(1, ?I18:Int):MInt => _ )
      "AF" |->     (mi(1, ?I19:Int):MInt => _ )
      "ZF" |->     (mi(1, ?I20:Int):MInt => _ )
      "SF" |->     (mi(1, ?I21:Int):MInt => _ )
      "OF" |->     (mi(1, ?I22:Int):MInt => _ )
      /*
      "YMM0"  |->  (?MI23:MInt => _ )
      "YMM1"  |->  (?MI24:MInt => _ )
      "YMM2"  |->  (?MI25:MInt => _ )
      "YMM3"  |->  (?MI26:MInt => _ )
      "YMM4"  |->  (?MI27:MInt => _ )
      "YMM5"  |->  (?MI28:MInt => _ )
      "YMM6"  |->  (?MI29:MInt => _ )
      "YMM7"  |->  (?MI30:MInt => _ )
      "YMM8"  |->  (?MI31:MInt => _ )
      "YMM9"  |->  (?MI32:MInt => _ )
      "YMM10" |->  (?MI33:MInt => _ )
      "YMM11" |->  (?MI34:MInt => _ )
      "YMM12" |->  (?MI35:MInt => _ )
      "YMM13" |->  (?MI36:MInt => _ )
      "YMM14" |->  (?MI37:MInt => _ )
      "YMM15" |->  (?MI38:MInt => _ )
      */
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:addq_r64_r64
instr:addq %rcx, %rbx
maybe read:{ %rcx %rbx }
must read:{ %rcx %rbx }
maybe write:{ %rbx %cf %pf %af %zf %sf %of }
must write:{ %rbx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }
*/