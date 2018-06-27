module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> mi(64, 7)
        L3    |-> mi(64, 8)
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
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, 0))
      </regstate>

      <memstate>
        <text> 
          code ( 
           iloc(mi(64, 0)) |-> storedInstr(movq -8(%rbp), %rdx, .Operands)
           iloc(mi(64, 1)) |-> storedInstr(movq -16(%rbp), %rax, .Operands)
           iloc(mi(64, 2)) |-> storedInstr(addq %rdx, %rax, .Operands)
           iloc(mi(64, 3)) |-> storedInstr(cmpq -8(%rbp), %rax, .Operands)
           iloc(mi(64, 4)) |-> storedInstr(jnb L2, .Operands)
           iloc(mi(64, 5)) |-> storedInstr(movl $1, %eax, .Operands)
           iloc(mi(64, 6)) |-> storedInstr(jmp L3, .Operands)
           iloc(mi(64, 7)) |-> storedInstr(movl $0, %eax, .Operands)
           iloc(mi(64, 8)) |-> storedInstr(ret .Operands)
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                   
                    40 |-> (byte ( 0 , mi(64, B)))
                    41 |-> (byte ( 1 , mi(64, B)))
                    42 |-> (byte ( 2 , mi(64, B)))
                    43 |-> (byte ( 3 , mi(64, B)))
                    44 |-> (byte ( 4 , mi(64, B)))
                    45 |-> (byte ( 5 , mi(64, B)))
                    46 |-> (byte ( 6 , mi(64, B)))
                    47 |-> (byte ( 7 , mi(64, B)))

                    48 |-> (byte ( 0 , mi(64, A))) 
                    49 |-> (byte ( 1 , mi(64, A))) 
                    50 |-> (byte ( 2 , mi(64, A))) 
                    51 |-> (byte ( 3 , mi(64, A))) 
                    52 |-> (byte ( 4 , mi(64, A))) 
                    53 |-> (byte ( 5 , mi(64, A))) 
                    54 |-> (byte ( 6 , mi(64, A))) 
                    55 |-> (byte ( 7 , mi(64, A))) 

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
        requires  A >=Int 0 andBool A <Int 2 ^Int 64 
        andBool   B >=Int 0 andBool B <Int 2 ^Int 64 

        ensures   A +Int B >=Int 2 ^Int 64
endmodule

