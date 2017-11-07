requires "x86-syntax.k"

module X86-CONFIGURATION
  imports X86-SYNTAX

  configuration <T>
    <k> $PGM:Code </k>
    <regstate>
      <rsp> 255 </rsp>
      <rip> 0 </rip>
      <rbp> 0 </rbp>
      <rax> 0 </rax>
      <rdx> 0 </rdx>
      <rsi> 0 </rsi>
      <rdi> 0 </rdi>
      <eflags>
        <sf> 0 </sf>
        <zf> 0 </zf>
        <cf> 0 </cf>
      </eflags>
    </regstate>

    <labels> .Map </labels>
  </T>
endmodule

module X86-SEMANTICS
  imports X86-CONFIGURATION


endmodule
