module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L1    |-> ptr ( symloc ( -1 , 0 ) , mi(64, 1))
        L2    |-> ptr ( symloc ( -1 , 0 ) , mi(64, 2))
        main  |-> ptr ( symloc ( -1 , 0 ) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>

      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0), mi(64, 0))  => mi(64, 18446744073709551615))
        "RSP" |-> ( ptr (symloc(1, 128), mi(64, 56))  => ptr(symloc(1, 128), mi(64, 64)))
        "RBP" |-> ( ptr (symloc(1, 128), mi(64, 56)))
        "AF" |-> (_:MInt => _:MInt)
        "CF" |-> (_:MInt => _:MInt)
        "OF" |-> (_:MInt => _:MInt)
        "PF" |-> (_:MInt => _:MInt)
        "SF" |-> (_:MInt => _:MInt)
        "ZF" |-> (_:MInt => _:MInt)
           
         // TODO: Other constraints
      </regstate>

      <memstate>
        <text> 
          code ( 
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (pushq          %rbp, .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (movq     %rsp, %rbp, .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (movl   (%rdi), %eax, .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (movl   (%rsi), %ecx, .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (movl   %ecx, (%rdi), .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (movl   %eax, (%rsi), .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (popq           %rbp, .Operands )
            ptr( symloc (-1, 0), mi(64, 0)) |-> storedInstr (retq                 .Operands )
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
                    52 |-> (byte ( 0 , undefMInt ))
                    53 |-> (byte ( 0 , undefMInt ))
                    54 |-> (byte ( 0 , undefMInt ))
                    55 |-> (byte ( 0 , undefMInt ))
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
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
      // TODO: requires

endmodule

