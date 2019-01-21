module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> ptr ( symloc ( -1 , 0) , mi(64, 10))
        L3    |-> ptr ( symloc ( -1 , 0) , mi(64, 11))
        main  |-> ptr ( symloc ( -1 , 0) , mi(64, 0))
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
           
         // Main Claim
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, 0))
      </regstate>

      <memstate>
        <text> 
          code ( 
                ptr ( symloc (-1, 0), mi(64, 0)) |-> storedInstr(movl -8(%rbp), %edx, .Operands)
                ptr ( symloc (-1, 0), mi(64, 1)) |-> storedInstr(movl -16(%rbp), %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 2)) |-> storedInstr(addl %edx, %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 3)) |-> storedInstr(movl $0, %edx, .Operands)
                ptr ( symloc (-1, 0), mi(64, 4)) |-> storedInstr(cmpl -8(%rbp), %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 5)) |-> storedInstr(movl %edx, %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 6)) |-> storedInstr(sbbl -4(%rbp), %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 7)) |-> storedInstr(jnc L2, .Operands)
                ptr ( symloc (-1, 0), mi(64, 8)) |-> storedInstr(movl $1, %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 9)) |-> storedInstr(jmp L3, .Operands)
                ptr ( symloc (-1, 0), mi(64, 10)) |-> storedInstr(movl $0, %eax, .Operands)
                ptr ( symloc (-1, 0), mi(64, 11)) |-> storedInstr(ret .Operands)
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
            stackBaseInfo ( symloc ( 1 , 128) , _ )
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
        requires  A >=Int 0 andBool A <Int 2 ^Int 64 
        andBool   B >=Int 0 andBool B <Int 2 ^Int 64 

        ensures   A +Int B >=Int 2 ^Int 32
endmodule

