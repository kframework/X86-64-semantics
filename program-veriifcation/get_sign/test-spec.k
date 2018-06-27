module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> mi(64, 5)
        L3    |-> mi(64, 10)
        L4    |-> mi(64, 9)
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
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, 1))
      </regstate>

      <memstate>
        <text> 
          code ( 
      iloc ( mi(64,0 )) |-> storedInstr ( movl %edi , -4 ( %rbp ) , .Operands )
      iloc ( mi(64,1 )) |-> storedInstr ( cmpl $ 0 , -4 ( %rbp ) , .Operands )
      iloc ( mi(64,2 )) |-> storedInstr ( jne L2 , .Operands )
      iloc ( mi(64,3 )) |-> storedInstr ( movl $ 0 , %eax , .Operands )
      iloc ( mi(64,4 )) |-> storedInstr ( jmp L3 , .Operands )
      iloc ( mi(64,5 )) |-> storedInstr ( cmpl $ 0 , -4 ( %rbp ) , .Operands )
      iloc ( mi(64,6 )) |-> storedInstr ( jns L4 , .Operands )
      iloc ( mi(64,7 )) |-> storedInstr ( movl $ -1 , %eax , .Operands )
      iloc ( mi(64,8 )) |-> storedInstr ( jmp L3 , .Operands )
      iloc ( mi(64,9 )) |-> storedInstr ( movl $ 1 , %eax , .Operands )
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
                    36 |-> (byte ( 0 , undefMInt ))
                    37 |-> (byte ( 0 , undefMInt ))
                    38 |-> (byte ( 0 , undefMInt ))
                    39 |-> (byte ( 0 , undefMInt ))
                    40 |-> (byte ( 0 , undefMInt ))
                    41 |-> (byte ( 0 , undefMInt ))
                    42 |-> (byte ( 0 , undefMInt ))
                    43 |-> (byte ( 0 , undefMInt ))
                    44 |-> (byte ( 0 , undefMInt ))
                    45 |-> (byte ( 0 , undefMInt ))
                    46 |-> (byte ( 0 , undefMInt ))
                    47 |-> (byte ( 0 , undefMInt ))
                    48 |-> (byte ( 0 , undefMInt ))
                    49 |-> (byte ( 0 , undefMInt ))
                    50 |-> (byte ( 0 , undefMInt ))
                    51 |-> (byte ( 0 , undefMInt ))
                    52 |-> (byte ( 0 , undefMInt ) => byte(0, _))
                    53 |-> (byte ( 0 , undefMInt ) => byte(1, _))
                    54 |-> (byte ( 0 , undefMInt ) => byte(2, _))
                    55 |-> (byte ( 0 , undefMInt ) => byte(3, _))
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
endmodule

