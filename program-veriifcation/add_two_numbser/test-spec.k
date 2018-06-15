module TEST-SPEC
  imports X86-SEMANTICS

  rule
    <k>
execinstr ( addq %rax, %rbx, .Operands ) 
 ~>
execinstr ( addq %rbx, %rcx, .Operands )
 => exit_0
    </k>
    <functargets> .Map  </functargets> 
    <entrypoint> .K  </entrypoint>
    <nextLocPc> mi(64, 0)  </nextLocPc>
    <memstate>
      <text> code(.Map) </text>
      <stack> 
        <memory>
          <nextLoc> 1   </nextLoc> 
          <objects> mem(.Map) </objects>
        </memory>
        <stackbase> stackBaseInfo(.K, .K) </stackbase>
      </stack>
    </memstate>

    <environment>
      <argc> .K </argc>
      <argv> .K </argv>
    </environment>

    <regstate>
"RIP" |-> (mi(64, 0) => _)
"RAX" |-> (mi(64, I1:Int):MInt)
"RBX" |-> (
    mi(64, I2:Int):MInt => 
      addMInt(mi(64, I1), mi(64, I2))
    )
"RCX" |-> (
    mi(64, I3:Int):MInt => 
      addMInt(mi(64, I1), addMInt(mi(64, I2), mi(64, I3)))
    )
"AF" |-> (mi(1, F1) => _)
"CF" |-> (mi(1, F2) => _)
"OF" |-> (mi(1, F3) => _)
"PF" |-> (mi(1, F4) => _)
"SF" |-> (mi(1, F5) => _)
"ZF" |-> (mi(1, F6) => _)
    </regstate>
    <regstatequeue> .List </regstatequeue>
endmodule
