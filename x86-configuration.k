requires "x86-syntax.k"
requires "x86-general-utils.k"

module X86-CONFIGURATION
  imports X86-SYNTAX
  imports MINT-WRAPPER-SYNTAX

  syntax AbstractValue ::= Int | MInt
  syntax KResult ::= AbstractValue
  syntax KItem ::= "fetch"
  syntax Opcode ::= "sentinal"

  configuration <T>
    <k> $PGM:Instructions ~> fetch </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64 </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>
    <regstate>
      <gpr>
        <rip> zeroMIntW64 </rip>
        <rax> zeroMIntW64 </rax>
        <rbx> zeroMIntW64 </rbx>
        <rcx> zeroMIntW64 </rcx>
        <rdx> zeroMIntW64 </rdx>
        <rsi> zeroMIntW64 </rsi>
        <rdi> zeroMIntW64 </rdi>
        <rsp> zeroMIntW64 </rsp>
        <rbp> zeroMIntW64 </rbp>
        <r8>  zeroMIntW64 </r8>
        <r9>  zeroMIntW64 </r9>
        <r10> zeroMIntW64 </r10>
        <r11> zeroMIntW64 </r11>
        <r12> zeroMIntW64 </r12>
        <r13> zeroMIntW64 </r13>
        <r14> zeroMIntW64 </r14>
        <r15> zeroMIntW64 </r15>
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
        <cf> zeroMIntW1 </cf>
        <pf> zeroMIntW1 </pf>
        <af> zeroMIntW1 </af>
        <zf> zeroMIntW1 </zf>
        <sf> zeroMIntW1 </sf>
        <of> zeroMIntW1 </of>
      </arithflags>

      /*@ 256 bit ymm registers
      */
      <ymm>
        <ymm0>  zeroMIntW256 </ymm0>
        <ymm1>  zeroMIntW256 </ymm1>
        <ymm2>  zeroMIntW256 </ymm2>
        <ymm3>  zeroMIntW256 </ymm3>
        <ymm4>  zeroMIntW256 </ymm4>
        <ymm5>  zeroMIntW256 </ymm5>
        <ymm6>  zeroMIntW256 </ymm6>
        <ymm7>  zeroMIntW256 </ymm7>
        <ymm8>  zeroMIntW256 </ymm8>
        <ymm9>  zeroMIntW256 </ymm9>
        <ymm10> zeroMIntW256 </ymm10>
        <ymm11> zeroMIntW256 </ymm11>
        <ymm12> zeroMIntW256 </ymm12>
        <ymm14> zeroMIntW256 </ymm14>
        <ymm13> zeroMIntW256 </ymm13>
        <ymm15> zeroMIntW256 </ymm15>
      </ymm>
    </regstate>

    <labels> .Map </labels>
  </T>


endmodule
