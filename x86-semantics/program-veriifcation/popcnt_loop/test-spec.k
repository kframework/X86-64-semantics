module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> ptr ( symloc ( -1 , 0 ) , mi(64, 1))
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
           
         // Main Claim
        "RDI" |-> (mi(64, X:Int):MInt => mi(64, 0))
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, _))
        "RDX" |-> (mi(64, _:Int):MInt => mi(64, _))
        "RCX" |-> (mi(64, _:Int):MInt => mi(64, _))
      </regstate>

      <memstate>
        <text> 
          code ( 

            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,0)) |-> storedInstr(xorl    %eax, %eax, .Operands)
            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,1)) |-> storedInstr(movl    %edi, %edx, .Operands)
            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,2)) |-> storedInstr(andl    $1, %edx, .Operands)
            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,3)) |-> storedInstr(addl    %edx, %eax, .Operands)
            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,4)) |-> storedInstr(shrq  $0x1,  %rdi, .Operands)

            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,5)) |-> storedInstr(jne     L2, .Operands)
            ptr ( symloc (-1, 0, 0, 0, 0), mi(64,6)) |-> storedInstr(ret .Operands)
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
            mem( 
                    symloc( 1, 128, 64, 8, 56) |-> byte ( 0 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 57) |-> byte ( 1 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 58) |-> byte ( 2 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 59) |-> byte ( 3 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 60) |-> byte ( 4 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 61) |-> byte ( 5 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 62) |-> byte ( 6 , mi(64,-1) )
                    symloc( 1, 128, 64, 8, 63) |-> byte ( 7 , mi(64,-1) )
                  )

            </objects>
            <freed>
              .Set
            </freed>
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
        requires   X >=Int 0 andBool X <Int (2 ^Int 64)
endmodule

