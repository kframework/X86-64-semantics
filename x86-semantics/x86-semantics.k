requires "x86-syntax.k"

module X86-CONFIGURATION
  imports X86-SYNTAX

  configuration <T>
    <k> $PGM:Code </k>
    <regstate>
      <rip> 0 </rip>
      <rax> 0 </rax>
      <rbx> 0 </rbx>
      <rcx> 0 </rcx>
      <rdx> 0 </rdx>
      <rsi> 0 </rsi>
      <rdi> 0 </rdi>
      <rsp> 0 </rsp>
      <rbp> 0 </rbp>
      <r8> 0 </r8>
      <r9> 0 </r9>
      <r10> 0 </r10>
      <r11> 0 </r11>
      <r12> 0 </r12>
      <r13> 0 </r13>
      <r14> 0 </r14>
      <r15> 0 </r15>

      <eflags>
      /*@
        The FLAGS register is the status register in Intel x86 microprocessors
        that contains the current state of the processor. This register is 16
        bits wide. Its successors, the EFLAGS and RFLAGS registers, are 32 bits
        and 64 bits wide, respectively. The wider registers retain
        compatibility with their smaller predecessors.

        Bit #	Abbreviation	Description	Category
        0	CF	Carry flag	        Status
        2	PF	Parity flag	        Status
        4	AF	Adjust flag	        Status
        6	ZF	Zero flag	        Status
        7	SF	Sign flag	        Status
        10	DF	Direction flag          Status
        11	OF	Overflow flag           Status

        Following is the mention of only the status flags (not of Control or
        System flags)

      */  
        <cf> 0 </cf>
        <pf> 0 </pf>
        <af> 0 </af>
        <zf> 0 </zf>
        <sf> 0 </sf>
        <of> 0 </of>
        <df> 0 </df>
      </eflags>

      /*@
        // Floating point stack

        float80_type ST0;
        float80_type ST1;
        float80_type ST2;
        float80_type ST3;
        float80_type ST4;
        float80_type ST5;
        float80_type ST6;
        float80_type ST7;

        // Floating point flags

        uint8_t FPU_FLAG_BUSY;
        uint8_t FPU_FLAG_C3;
        uint8_t FPU_FLAG_C2;
        uint8_t FPU_FLAG_C1;
        uint8_t FPU_FLAG_C0;
        uint8_t FPU_FLAG_ES;
        uint8_t FPU_FLAG_SF;
        uint8_t FPU_FLAG_PE;
        uint8_t FPU_FLAG_UE;
        uint8_t FPU_FLAG_OE;
        uint8_t FPU_FLAG_ZE;
        uint8_t FPU_FLAG_DE;
        uint8_t FPU_FLAG_IE;

      */  

      /*@ 128 bit xmm registers
      */
      <xmm>   
        <xmm0>  0   </xmm0>
        <xmm1>  0   </xmm1>
        <xmm2>  0   </xmm2>
        <xmm3>  0   </xmm3>
        <xmm4>  0   </xmm4>
        <xmm5>  0   </xmm5>
        <xmm6>  0   </xmm6>
        <xmm7>  0   </xmm7>
        <xmm8>  0   </xmm8>
        <xmm9>  0   </xmm9>
        <xmm10> 0   </xmm10>
        <xmm11> 0   </xmm11>
        <xmm12> 0   </xmm12>
        <xmm13> 0   </xmm13>
        <xmm14> 0   </xmm14>
        <xmm15> 0   </xmm15>
      </xmm>   
    </regstate>

    <labels> .Map </labels>
  </T>
endmodule

module X86-SEMANTICS
  imports X86-CONFIGURATION


endmodule
