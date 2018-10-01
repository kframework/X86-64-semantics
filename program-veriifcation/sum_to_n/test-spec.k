module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> mi(64, 10)
        L3    |-> mi(64, 4)
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
        "RDI" |-> (mi(64, N:Int):MInt)
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, (N *Int (N +Int 1)) /Int 2))
      </regstate>

      <memstate>
        <text> 
          code ( 
              iloc ( mi(64,0)) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              iloc ( mi(64,1)) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,2)) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,3)) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )

              iloc ( mi(64,4  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              iloc ( mi(64,5  )) |-> storedInstr ( jle L2 , .Operands )
              iloc ( mi(64,6  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,7  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,8 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
              iloc ( mi(64,9 )) |-> storedInstr ( jmp L3 , .Operands )

              iloc ( mi(64,10 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,11)) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                    36 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, N)))
                    37 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, N)))
                    38 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, N)))
                    39 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, N)))
                    40 |-> (byte ( 0 , undefMInt ))
                    41 |-> (byte ( 0 , undefMInt ))
                    42 |-> (byte ( 0 , undefMInt ))
                    43 |-> (byte ( 0 , undefMInt ))
                    44 |-> (byte ( 0 , undefMInt ))
                    45 |-> (byte ( 0 , undefMInt ))
                    46 |-> (byte ( 0 , undefMInt ))
                    47 |-> (byte ( 0 , undefMInt ))
                    48 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, 0)))
                    49 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, 0)))
                    50 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, 0)))
                    51 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, 0)))
                    52 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    53 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    54 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    55 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    56 |-> byte ( 0 , mi(64,-1) )
                    57 |-> byte ( 1 , mi(64,-1) )
                    58 |-> byte ( 2 , mi(64,-1) )
                    59 |-> byte ( 3 , mi(64,-1) )
                    60 |-> byte ( 4 , mi(64,-1) )
                    61 |-> byte ( 5 , mi(64,-1) )
                    62 |-> byte ( 6 , mi(64,-1) )
                    63 |-> byte ( 7 , mi(64,-1) ) ) )
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
        requires N >=Int 0 andBool N <Int 255
        andBool (N *Int (N +Int 1)) /Int 2 >=Int 0  
        andBool (N *Int (N +Int 1)) /Int 2 <Int 255 //[trusted]


  // Other Configuration
  rule
    <k> fetch => fetch </k>
      <functargets>  
        L2    |-> mi(64, 10)
        L3    |-> mi(64, 4)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <regstate>
        "RIP" |-> (mi(64, 4) => mi(64,10))
        "RSP" |-> (mi(64, 56))
        "RBP" |-> (mi(64, 56))
        "AF" |-> (_:MInt => _:MInt)
        "CF" |-> (_:MInt => _:MInt)
        "OF" |-> (_:MInt => _:MInt)
        "PF" |-> (_:MInt => _:MInt)
        "SF" |-> (_:MInt => _:MInt)
        "ZF" |-> (_:MInt => _:MInt)

           
         // Other Claim
        "RDI" |-> (mi(64, M:Int):MInt)
        "RAX" |-> (_:MInt => _:MInt)
      </regstate>

      <memstate>
        <text> 
          code ( 
              iloc ( mi(64,0)) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              iloc ( mi(64,1)) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,2)) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,3)) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )

              iloc ( mi(64,4  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              iloc ( mi(64,5  )) |-> storedInstr ( jle L2 , .Operands )
              iloc ( mi(64,6  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,7  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,8 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
              iloc ( mi(64,9 )) |-> storedInstr ( jmp L3 , .Operands )

              iloc ( mi(64,10 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,11)) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                    36 |-> byte(0, mi(32, M))
                    37 |-> byte(1, mi(32, M))
                    38 |-> byte(2, mi(32, M))
                    39 |-> byte(3, mi(32, M))
                    40 |-> (byte ( 0 , undefMInt ))
                    41 |-> (byte ( 0 , undefMInt ))
                    42 |-> (byte ( 0 , undefMInt ))
                    43 |-> (byte ( 0 , undefMInt ))
                    44 |-> (byte ( 0 , undefMInt ))
                    45 |-> (byte ( 0 , undefMInt ))
                    46 |-> (byte ( 0 , undefMInt ))
                    47 |-> (byte ( 0 , undefMInt ))
                    48 |-> (byte ( 0 , mi(32, A) ) => byte(0, mi(32, 0)))
                    49 |-> (byte ( 1 , mi(32, A) ) => byte(1, mi(32, 0)))
                    50 |-> (byte ( 2 , mi(32, A) ) => byte(2, mi(32, 0)))
                    51 |-> (byte ( 3 , mi(32, A) ) => byte(3, mi(32, 0)))
                    52 |-> (byte ( 0 , mi(32, B) ) => byte(0, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    53 |-> (byte ( 1 , mi(32, B) ) => byte(1, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    54 |-> (byte ( 2 , mi(32, B) ) => byte(2, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    55 |-> (byte ( 3 , mi(32, B) ) => byte(3, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    56 |-> byte ( 0 , mi(64,-1) )
                    57 |-> byte ( 1 , mi(64,-1) )
                    58 |-> byte ( 2 , mi(64,-1) )
                    59 |-> byte ( 3 , mi(64,-1) )
                    60 |-> byte ( 4 , mi(64,-1) )
                    61 |-> byte ( 5 , mi(64,-1) )
                    62 |-> byte ( 6 , mi(64,-1) )
                    63 |-> byte ( 7 , mi(64,-1) ) ) )
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
        requires M >=Int 0 andBool M <Int 255

        andBool A >=Int 0 andBool A <Int 255
        andBool B >=Int 0 andBool B <Int 255 

        andBool B +Int ((A *Int (A +Int 1)) /Int 2) >=Int 0  
        andBool B +Int ((A *Int (A +Int 1)) /Int 2) <Int 255 


endmodule

