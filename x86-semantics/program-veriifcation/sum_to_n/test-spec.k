/*@
 *  
  int sumToN(int N) {
    int s = 0;
    int n = N;
    while (n > 0) {
      s = s + n;
      n = n - 1;
    }
    return s;
  }
 */
module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets> .Map </functargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <regstate>
        "RIP" |-> (mi(64, 0) => _)
        "RSP" |-> (mi(64, 56) => _)
        "RBP" |-> (mi(64, 56) => _)
        "AF" |-> (mi(1, _) => _)
        "CF" |-> (mi(1, _) => _)
        "OF" |-> (mi(1, _) => _)
        "PF" |-> (mi(1, _) => _)
        "SF" |-> (mi(1, _) => _)
        "ZF" |-> (mi(1, _) => _)
           
         // Main Claim
        "RDI" |-> (mi(64, N:Int):MInt => _)
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, N:Int):MInt)
      </regstate>

      <memstate>
        <text> 
          code ( 
              iloc ( mi(64,0)) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              iloc ( mi(64,1)) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,2)) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,3)) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )

              iloc ( mi(64,4  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              iloc ( mi(64,5  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,6  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,7 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )

              iloc ( mi(64,8 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,9)) |-> storedInstr ( ret .Operands )

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
                    48 |-> (byte ( 0 , undefMInt ) => byte(0, mi(32, N -Int 1)))
                    49 |-> (byte ( 0 , undefMInt ) => byte(1, mi(32, N -Int 1)))
                    50 |-> (byte ( 0 , undefMInt ) => byte(2, mi(32, N -Int 1)))
                    51 |-> (byte ( 0 , undefMInt ) => byte(3, mi(32, N -Int 1)))
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
        requires N >=Int 0 
          andBool N <Int (2 ^Int 31)


endmodule
