requires "x86-syntax.k"

module X86-CONFIGURATION
  imports X86-SYNTAX
  imports MINT

  syntax KResult ::= AbstractValue
  syntax KItem ::= "fetch"
  syntax Opcode ::= "sentinal"

  configuration <T>
    <k> $PGM:Instructions ~> fetch </k>
    <entrypoint> mi(64,0) </entrypoint>
    <nextLoc> mi(64,0) </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>
    <regstate>
      <gpr>
        <rip> mi(64,0) </rip>
        <rax> mi(64,0) </rax>
        <rbx> mi(64,0) </rbx>
        <rcx> mi(64,0) </rcx>
        <rdx> mi(64,0) </rdx>
        <rsi> mi(64,0) </rsi>
        <rdi> mi(64,0) </rdi>
        <rsp> mi(64,0) </rsp>
        <rbp> mi(64,0) </rbp>
        <r8> mi(64,0) </r8>
        <r9> mi(64,0) </r9>
        <r10> mi(64,0) </r10>
        <r11> mi(64,0) </r11>
        <r12> mi(64,0) </r12>
        <r13> mi(64,0) </r13>
        <r14> mi(64,0) </r14>
        <r15> mi(64,0) </r15>
      </gpr>

      <arithflags>
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
        <cf> mi(1,0) </cf>
        <pf> mi(1,0) </pf>
        <af> mi(1,0) </af>
        <zf> mi(1,0) </zf>
        <sf> mi(1,0) </sf>
        <of> mi(1,0) </of>
        <df> mi(1,0) </df>
      </arithflags>

      /*@ 128 bit xmm registers
      */
      <xmm>
        <xmm0>  mi(128,0)   </xmm0>
        <xmm1>  mi(128,0)   </xmm1>
        <xmm2>  mi(128,0)   </xmm2>
        <xmm3>  mi(128,0)   </xmm3>
        <xmm4>  mi(128,0)   </xmm4>
        <xmm5>  mi(128,0)   </xmm5>
        <xmm6>  mi(128,0)   </xmm6>
        <xmm7>  mi(128,0)   </xmm7>
        <xmm8>  mi(128,0)   </xmm8>
        <xmm9>  mi(128,0)   </xmm9>
        <xmm11> mi(128,0)   </xmm11>
        <xmm12> mi(128,0)   </xmm12>
        <xmm14> mi(128,0)   </xmm14>
        <xmm13> mi(128,0)   </xmm13>
        <xmm15> mi(128,0)   </xmm15>
      </xmm>
    </regstate>

    <labels> .Map </labels>
  </T>


endmodule
