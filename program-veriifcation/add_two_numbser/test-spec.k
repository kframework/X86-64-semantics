module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
      .Map
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
        "RSP" |-> ( ptr (symloc(1, 128, 64, 8, 0), mi(64, 56))  => ptr(symloc(1, 128, 64, 8, 0), mi(64, 64)))
        "RBP" |-> ( ptr (symloc(1, 128, 64, 8, 0), mi(64, 56)))
         // Main Claim
        "RDI" |-> mi(64, X:Int):MInt
        "RSI" |-> mi(64, Y:Int):MInt
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, _))
      </regstate>

      <memstate>
        <text> 
          code (
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 0)) |-> storedInstr(pushq   %rbp, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 1)) |-> storedInstr(movq    %rsp, %rbp, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 2)) |-> storedInstr(movl    %edi, -4(%rbp), .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 3)) |-> storedInstr(movl    %esi, -8(%rbp), .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 4)) |-> storedInstr(movl    -4(%rbp), %esi, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 5)) |-> storedInstr(addl    -8(%rbp), %esi, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 6)) |-> storedInstr(movl    %esi, %eax, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 7)) |-> storedInstr(popq    %rbp, .Operands)
        ptr ( symloc (-1, 0, 0, 0, 0), mi(64, 8)) |-> storedInstr(retq   .Operands)
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
            stackBaseInfo ( symloc ( 1 , 128, 64, 8, 0) , _ )
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
