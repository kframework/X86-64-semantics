module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 10))
        L3    |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 4))
        main  |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>

      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0, 0, 0, 0), mi(64, 0))  => mi(64, 18446744073709551615))
        "RSP" |-> ( ptr (symloc(1, 128, 64, 8, 56), mi(64, 56))  => ptr(symloc(1, 128, 64, 8, 64), mi(64, 64)))
        "RBP" |-> ( ptr (symloc(1, 128, 64, 8, 56), mi(64, 56)))
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
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,0)) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,1)) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,2)) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,3)) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )

              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,4  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,5  )) |-> storedInstr ( jle L2 , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,6  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,7  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,8 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,9 )) |-> storedInstr ( jmp L3 , .Operands )

              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,10 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,11)) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    symloc ( 1, 128, 64, 8, 36) |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, N)))
                    symloc ( 1, 128, 64, 8, 37) |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, N)))
                    symloc ( 1, 128, 64, 8, 38) |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, N)))
                    symloc ( 1, 128, 64, 8, 39) |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, N)))
                    symloc ( 1, 128, 64, 8, 40) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 41) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 42) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 43) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 44) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 45) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 46) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 47) |-> (byte ( 0 , undefMInt ))
                    symloc ( 1, 128, 64, 8, 48) |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, 0)))
                    symloc ( 1, 128, 64, 8, 49) |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, 0)))
                    symloc ( 1, 128, 64, 8, 50) |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, 0)))
                    symloc ( 1, 128, 64, 8, 51) |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, 0)))
                    symloc ( 1, 128, 64, 8, 52) |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    symloc ( 1, 128, 64, 8, 53) |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    symloc ( 1, 128, 64, 8, 54) |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    symloc ( 1, 128, 64, 8, 55) |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, (N *Int (N +Int 1)) /Int 2)))
                    symloc ( 1, 128, 64, 8, 56) |-> byte ( 0 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 57) |-> byte ( 1 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 58) |-> byte ( 2 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 59) |-> byte ( 3 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 60) |-> byte ( 4 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 61) |-> byte ( 5 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 62) |-> byte ( 6 , mi(64,-1) )
                    symloc ( 1, 128, 64, 8, 63) |-> byte ( 7 , mi(64,-1) )  )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo (_ ,  _ )
          </stackbase>
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires N >=Int 0 andBool N <Int (2 ^Int 31) 
        andBool (N *Int (N +Int 1)) /Int 2 >=Int 0  
        andBool (N *Int (N +Int 1)) /Int 2 <Int  (2 ^Int 31) //[trusted]


  // Other Configuration
  rule
    <k> fetch => fetch </k>
      <functargets>  
        L2    |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 10))
        L3    |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 4))
        main  |-> ptr ( symloc ( -1 , 0, 0, 0, 0 ) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>
      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0, 0, 0, 0 ), mi(64, 4))  => ptr(symloc(-1, 0, 0, 0, 0 ), mi(64, 10)))
        "RSP" |-> ( ptr (symloc(1, 128, 64, 8, 56), mi(64, 56)))
        "RBP" |-> ( ptr (symloc(1, 128, 64, 8, 56), mi(64, 56)))
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
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,0)) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,1)) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,2)) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,3)) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )

              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,4  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,5  )) |-> storedInstr ( jle L2 , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,6  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,7  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,8 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,9 )) |-> storedInstr ( jmp L3 , .Operands )

              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,10 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              ptr ( symloc (-1, 0, 0, 0, 0),  mi(64,11)) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    symloc(1, 128, 64, 8, 36) |-> byte(0, mi(32, M))
                    symloc(1, 128, 64, 8, 37) |-> byte(1, mi(32, M))
                    symloc(1, 128, 64, 8, 38) |-> byte(2, mi(32, M))
                    symloc(1, 128, 64, 8, 39) |-> byte(3, mi(32, M))
                    symloc(1, 128, 64, 8, 40) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 41) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 42) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 43) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 44) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 45) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 46) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 47) |-> (byte ( 0 , undefMInt ))
                    symloc(1, 128, 64, 8, 48) |-> (byte ( 0 , mi(32, A) ) => byte(0, mi(32, 0)))
                    symloc(1, 128, 64, 8, 49) |-> (byte ( 1 , mi(32, A) ) => byte(1, mi(32, 0)))
                    symloc(1, 128, 64, 8, 50) |-> (byte ( 2 , mi(32, A) ) => byte(2, mi(32, 0)))
                    symloc(1, 128, 64, 8, 51) |-> (byte ( 3 , mi(32, A) ) => byte(3, mi(32, 0)))
                    symloc(1, 128, 64, 8, 52) |-> (byte ( 0 , mi(32, B) ) => byte(0, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    symloc(1, 128, 64, 8, 53) |-> (byte ( 1 , mi(32, B) ) => byte(1, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    symloc(1, 128, 64, 8, 54) |-> (byte ( 2 , mi(32, B) ) => byte(2, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    symloc(1, 128, 64, 8, 55) |-> (byte ( 3 , mi(32, B) ) => byte(3, mi(32, B +Int ((A *Int (A +Int 1)) /Int 2))))
                    symloc(1, 128, 64, 8, 56) |-> byte ( 0 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 57) |-> byte ( 1 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 58) |-> byte ( 2 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 59) |-> byte ( 3 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 60) |-> byte ( 4 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 61) |-> byte ( 5 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 62) |-> byte ( 6 , mi(64,-1) )
                    symloc(1, 128, 64, 8, 63) |-> byte ( 7 , mi(64,-1) ) )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo (_ ,  _ )
          </stackbase>
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires M >=Int 0 andBool M <Int (2 ^Int 31)

        andBool A >=Int 0 andBool A <Int (2 ^Int 31)
        andBool B >=Int 0 andBool B <Int (2 ^Int 31) 

        andBool B +Int ((A *Int (A +Int 1)) /Int 2) >=Int 0  
        andBool B +Int ((A *Int (A +Int 1)) /Int 2) <Int (2 ^Int 31)  // [trusted]


endmodule

