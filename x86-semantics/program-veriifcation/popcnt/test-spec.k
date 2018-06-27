module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> mi(64, 2)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <regstate>
        "RIP" |-> (mi(64, 0) => mi(64, 18446744073709551615))
        "RSP" |-> (mi(64, 56) => mi(64, 64))
        "RBP" |-> (mi(64, 56))
        "AF" |-> (_:MInt => _:MInt)
        "CF" |-> (_:MInt => _:MInt)
        "OF" |-> (_:MInt => _:MInt)
        "PF" |-> (_:MInt => _:MInt)
        "SF" |-> (_:MInt => _:MInt)
        "ZF" |-> (_:MInt => _:MInt)
           
         // Main Claim
        "RDI" |-> (mi(64, X:Int):MInt => mi(64, 0))
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, _))
        "RDX" |-> (mi(64, _:Int):MInt => mi(64, _))
        "RCX" |-> (mi(64, _:Int):MInt => mi(64, _))
      </regstate>

      <memstate>
        <text> 
          code ( 
            iloc(mi(64,0)) |-> storedInstr(movl $64, %edx, .Operands)
            iloc(mi(64,1)) |-> storedInstr(xorl %eax, %eax, .Operands)
            iloc(mi(64,2)) |-> storedInstr(movl %edi, %ecx, .Operands)
            iloc(mi(64,3)) |-> storedInstr(shrq $0x1, %rdi, .Operands)
            iloc(mi(64,4)) |-> storedInstr(andl $1, %ecx, .Operands)
            iloc(mi(64,5)) |-> storedInstr(addl %ecx, %eax, .Operands)
            iloc(mi(64,6)) |-> storedInstr(decl %edx, .Operands)
            iloc(mi(64,7)) |-> storedInstr(jne L2, .Operands)
            iloc(mi(64,8)) |-> storedInstr(ret .Operands)
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
            mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                    56 |-> byte ( 0 , mi(64,-1) )
                    57 |-> byte ( 1 , mi(64,-1) )
                    58 |-> byte ( 2 , mi(64,-1) )
                    59 |-> byte ( 3 , mi(64,-1) )
                    60 |-> byte ( 4 , mi(64,-1) )
                    61 |-> byte ( 5 , mi(64,-1) )
                    62 |-> byte ( 6 , mi(64,-1) )
                    63 |-> byte ( 7 , mi(64,-1) ) 
                  ))

            </objects>
          </memory>
          <stackbase>
            stackBaseInfo ( symloc ( 1 , 128 ) , _ )
          </stackbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires   X >=Int 0 andBool X <Int (2 ^Int 64)
endmodule

