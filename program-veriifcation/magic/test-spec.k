module TEST-SPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetch => exit_0 </k>
      <functargets>  
        L2    |-> mi(64, 29)
        L3    |-> mi(64, 27)
        L4    |-> mi(64, 30)
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
        "RDI" |-> mi(64, 36)
        "RAX" |-> (mi(64, _:Int):MInt => mi(64, 0))
      </regstate>

      <memstate>
        <text> 
          code ( 
                iloc ( mi(64, 0)) |-> storedInstr (movq %rdi, -8(%rbp), .Operands )
                iloc ( mi(64, 1)) |-> storedInstr (movq -8(%rbp), %rax, .Operands )
                iloc ( mi(64, 2)) |-> storedInstr (movzbl 0(%rax), %eax, .Operands )
                iloc ( mi(64, 3)) |-> storedInstr (cmpb $109, %al, .Operands )
                iloc ( mi(64, 4)) |-> storedInstr (jne L2, .Operands )
                iloc ( mi(64, 5)) |-> storedInstr (movq -8(%rbp), %rax, .Operands )
                iloc ( mi(64, 6)) |-> storedInstr (incq %rax, .Operands )
                iloc ( mi(64, 7)) |-> storedInstr (movzbl 0(%rax), %eax, .Operands )
                iloc ( mi(64, 8)) |-> storedInstr (cmpb $97, %al, .Operands )
                iloc ( mi(64, 9)) |-> storedInstr (jne L2, .Operands )
                iloc ( mi(64, 10)) |-> storedInstr (movq -8(%rbp), %rax, .Operands )
                iloc ( mi(64, 11)) |-> storedInstr (addq $2, %rax, .Operands )
                iloc ( mi(64, 12)) |-> storedInstr (movzbl 0(%rax), %eax, .Operands )
                iloc ( mi(64, 13)) |-> storedInstr (cmpb $103, %al, .Operands )
                iloc ( mi(64, 14)) |-> storedInstr (jne L2, .Operands )
                iloc ( mi(64, 15)) |-> storedInstr (movq -8(%rbp), %rax, .Operands )
                iloc ( mi(64, 16)) |-> storedInstr (addq $3, %rax, .Operands )
                iloc ( mi(64, 17)) |-> storedInstr (movzbl 0(%rax), %eax, .Operands )
                iloc ( mi(64, 18)) |-> storedInstr (cmpb $105, %al, .Operands )
                iloc ( mi(64, 19)) |-> storedInstr (jne L2, .Operands )
                iloc ( mi(64, 20)) |-> storedInstr (movq -8(%rbp), %rax, .Operands )
                iloc ( mi(64, 21)) |-> storedInstr (addq $4, %rax, .Operands )
                iloc ( mi(64, 22)) |-> storedInstr (movzbl 0(%rax), %eax, .Operands )
                iloc ( mi(64, 23)) |-> storedInstr (cmpb $99, %al, .Operands )
                iloc ( mi(64, 24)) |-> storedInstr (jne L3, .Operands )
                iloc ( mi(64, 25)) |-> storedInstr (movl $0, %eax, .Operands )
                iloc ( mi(64, 26)) |-> storedInstr (jmp L4, .Operands )
                iloc ( mi(64, 27)) |-> storedInstr (movl $1, %eax, .Operands )
                iloc ( mi(64, 28)) |-> storedInstr (jmp L4, .Operands )
                iloc ( mi(64, 29)) |-> storedInstr (movl $-1, %eax, .Operands )
                iloc ( mi(64, 30)) |-> storedInstr (ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
              symloc ( 1 , 128 ) |-> 
                mVector(64, 8, 
                    36 |-> (byte ( 0 , mi(8, I0:Int) ))
                    37 |-> (byte ( 0 , mi(8, I1:Int) ))
                    38 |-> (byte ( 0 , mi(8, I2:Int) ))
                    39 |-> (byte ( 0 , mi(8, I3:Int) ))
                    40 |-> (byte ( 0 , mi(8, I4:Int) ))
                    41 |-> (byte ( 0 , mi(8, I5:Int) ))
                    42 |-> (byte ( 0 , mi(8, I6:Int) ))
                    43 |-> (byte ( 0 , mi(8, I7:Int) ))
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
        requires I0 >=Int 0 andBool I0 <Int 256 
        andBool I1 >=Int 0 andBool I1 <Int 256 
        andBool I2 >=Int 0 andBool I2 <Int 256 
        andBool I3 >=Int 0 andBool I3 <Int 256 
        andBool I4 >=Int 0 andBool I4 <Int 256 
        andBool I5 >=Int 0 andBool I5 <Int 256 
        andBool I6 >=Int 0 andBool I6 <Int 256 
        andBool I7 >=Int 0 andBool I7 <Int 256 
endmodule

