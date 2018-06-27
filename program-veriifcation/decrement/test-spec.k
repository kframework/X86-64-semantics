module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        String2X86Id("L2")    |-> mi(64, 9)
        String2X86Id("L3")    |-> mi(64, 4)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <regstate>
        "RIP" |-> (mi(64, 0) => mi(64, 18446744073709551615))
        "RSP" |-> (mi(64, 56) => mi(64, 64))
        "RBP" |-> (mi(64, 56))
        "AF" |-> (mi(1, _) => mi(1, _))
        "CF" |-> (mi(1, _) => mi(1, _))
        "OF" |-> (mi(1, _) => mi(1, _))
        "PF" |-> (mi(1, _) => mi(1, _))
        "SF" |-> (mi(1, _) => mi(1, _))
        "ZF" |-> (mi(1, _) => mi(1, _))
           
         // Main Claim
        "RDI" |-> (mi(64, N:Int):MInt)
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, N))
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

              iloc ( mi(64,9 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,10)) |-> storedInstr ( ret .Operands )
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
                    48 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, N -Int 2)))
                    49 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, N -Int 2)))
                    50 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, N -Int 2)))
                    51 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, N -Int 2)))
                    52 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, N)))
                    53 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, N)))
                    54 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, N)))
                    55 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, N)))
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
        <argc> .K => _ </argc>
        <argv> .K => _ </argv>
      </environment>
        requires N >=Int 0 andBool N <Int (2 ^Int 31)


  // Other Configuration
  rule
    <k> fetch => fetch </k>
      <functargets>  
        String2X86Id("L2")    |-> mi(64, 9)
        String2X86Id("L3")    |-> mi(64, 4)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <regstate>
        "RIP" |-> (mi(64, 4) => mi(64,9))
        "RSP" |-> (mi(64, 56))
        "RBP" |-> (mi(64, 56))
        "AF" |-> (mi(1, _) => mi(1, _))
        "CF" |-> (mi(1, _) => mi(1, _))
        "OF" |-> (mi(1, _) => mi(1, _))
        "PF" |-> (mi(1, _) => mi(1, _))
        "SF" |-> (mi(1, _) => mi(1, _))
        "ZF" |-> (mi(1, _) => mi(1, _))
           
         // Other Claim
        "RDI" |-> (mi(64, M:Int):MInt)
        "RAX" |-> (mi(64, IRAX:Int):MInt => _)
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

              iloc ( mi(64,9 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,10)) |-> storedInstr ( ret .Operands )
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
                    48 |-> (byte ( 0 , mi(32, A)) => byte(0, mi(32, A -Int 2)))
                    49 |-> (byte ( 1 , mi(32, A)) => byte(1, mi(32, A -Int 2)))
                    50 |-> (byte ( 2 , mi(32, A)) => byte(2, mi(32, A -Int 2)))
                    51 |-> (byte ( 3 , mi(32, A)) => byte(3, mi(32, A -Int 2)))
                    52 |-> (byte ( 0 , mi(32, B)) => byte(0, mi(32, A +Int B)))
                    53 |-> (byte ( 1 , mi(32, B)) => byte(1, mi(32, A +Int B)))
                    54 |-> (byte ( 2 , mi(32, B)) => byte(2, mi(32, A +Int B)))
                    55 |-> (byte ( 3 , mi(32, B)) => byte(3, mi(32, A +Int B)))
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
        <argc> .K => _ </argc>
        <argv> .K => _ </argv>
      </environment>
        requires M >=Int 0 andBool M <Int (2 ^Int 31)

        andBool A >=Int 0 andBool A <Int (2 ^Int 31)
        andBool B >=Int 0 andBool B <Int (2 ^Int 31)

        andBool IRAX >=Int 0 andBool IRAX <Int (2^Int 31)

  /*
        andBool (IAF ==Int 0 orBool IAF ==Int 1)
        andBool (ICF ==Int 0 orBool ICF ==Int 1)
        andBool (IOF ==Int 0 orBool IOF ==Int 1)
        andBool (IPF ==Int 0 orBool IPF ==Int 1)
        andBool (ISF ==Int 0 orBool ISF ==Int 1)
        andBool (IZF ==Int 0 orBool IZF ==Int 1)
        */
  [trusted]
endmodule

