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
              iloc ( mi(64,4)) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                    36 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    37 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    38 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    39 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    40 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    41 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    42 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    43 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    44 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    45 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    46 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    47 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    48 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    49 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    50 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    51 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    52 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    53 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    54 |-> (byte ( 0 , undefMInt ) => byte(_,_))
                    55 |-> (byte ( 0 , undefMInt ) => byte(_,_))
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
          andBool N <Int (2 ^Int 32)


endmodule
