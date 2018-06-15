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
      <functargets>  
        L2    |-> mi(64, 12)
        L3    |-> mi(64, 6)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint> mi(64, 0) </entrypoint>
      <nextLocPc> _:MInt   </nextLocPc>
      <memstate>
        <text> 
          code ( 
              iloc ( mi(64,0  )) |-> storedInstr ( pushq %rbp , .Operands )
              iloc ( mi(64,1  )) |-> storedInstr ( movq %rsp , %rbp , .Operands )
              // Initial Value of n, .Operands)
              iloc ( mi(64,2  )) |-> storedInstr ( movl %edi , -20 ( %rbp ) , .Operands )
              // Setting s to 0 , .Operands)
              iloc ( mi(64,3  )) |-> storedInstr ( movl $ 0 , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,4  )) |-> storedInstr ( movl -20 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,5  )) |-> storedInstr ( movl %eax , -8 ( %rbp ) , .Operands )
              // L3:  Loop head, .Operands) 
              iloc ( mi(64,6  )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
              iloc ( mi(64,7  )) |-> storedInstr ( jle L2 , .Operands )
              iloc ( mi(64,8  )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,9  )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
              iloc ( mi(64,10 )) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
              iloc ( mi(64,11 )) |-> storedInstr ( jmp L3 , .Operands )
              // L2:, .Operands)
              iloc ( mi(64,12 )) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
              iloc ( mi(64,13 )) |-> storedInstr ( popq %rbp , .Operands )
              iloc ( mi(64,14 )) |-> storedInstr ( ret .Operands )
          )
        </text>
        <stack> 
          <memory>
            <nextLoc> _  </nextLoc> 
            <objects>  
               mem(
              symloc ( 1 , 128 ) |-> 
                mVector(256, 8, 
                  160 |-> byte ( 0 , undefMInt) => byte(_,_)
                  161 |-> byte ( 0 , undefMInt) => byte(_,_)
                  162 |-> byte ( 0 , undefMInt) => byte(_,_)
                  163 |-> byte ( 0 , undefMInt) => byte(_,_)
                  164 |-> byte ( 0 , undefMInt) => byte(_,_)
                  165 |-> byte ( 0 , undefMInt) => byte(_,_)
                  166 |-> byte ( 0 , undefMInt) => byte(_,_)
                  167 |-> byte ( 0 , undefMInt) => byte(_,_)
                  168 |-> byte ( 0 , undefMInt) => byte(_,_)
                  169 |-> byte ( 0 , undefMInt) => byte(_,_)
                  170 |-> byte ( 0 , undefMInt) => byte(_,_)
                  171 |-> byte ( 0 , undefMInt) => byte(_,_)
                  172 |-> byte ( 0 , undefMInt) => byte(_,_)
                  173 |-> byte ( 0 , undefMInt) => byte(_,_)
                  174 |-> byte ( 0 , undefMInt) => byte(_,_)
                  175 |-> byte ( 0 , undefMInt) => byte(_,_)
                  176 |-> byte ( 0 , undefMInt) => byte(_,_) 
                  177 |-> byte ( 0 , undefMInt) => byte(_,_)
                  178 |-> byte ( 0 , undefMInt) => byte(_,_)
                  179 |-> byte ( 0 , undefMInt) => byte(_,_)
                  180 |-> byte ( 0 , undefMInt) => byte(_,_)
                  181 |-> byte ( 0 , undefMInt) => byte(_,_)
                  182 |-> byte ( 0 , undefMInt) => byte(_,_)
                  183 |-> byte ( 0 , undefMInt) => byte(_,_)
                  184 |-> byte ( 0 , undefMInt) => byte(_,_)
                  185 |-> byte ( 0 , undefMInt) => byte(_,_)
                  186 |-> byte ( 0 , undefMInt) => byte(_,_)
                  187 |-> byte ( 0 , undefMInt) => byte(_,_)
                  188 |-> byte ( 0 , undefMInt) => byte(_,_)
                  189 |-> byte ( 0 , undefMInt) => byte(_,_)
                  190 |-> byte ( 0 , undefMInt) => byte(_,_)
                  191 |-> byte ( 0 , undefMInt) => byte(_,_)
                  // Return Address
                  192 |-> byte ( 0 , mi(64,-1))
                  193 |-> byte ( 1 , mi(64,-1))
                  194 |-> byte ( 2 , mi(64,-1))
                  195 |-> byte ( 3 , mi(64,-1))
                  196 |-> byte ( 4 , mi(64,-1))
                  197 |-> byte ( 5 , mi(64,-1))
                  198 |-> byte ( 6 , mi(64,-1))
                  199 |-> byte ( 7 , mi(64,-1))
                  _:Map
                )
            )
            </objects>
          </memory>
          <stackbase> _ </stackbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K => _ </argc>
        <argv> .K => _ </argv>
      </environment>
      <regstatequeue> .List => _ </regstatequeue>

      <regstate>
          "RIP" |-> (mi(64, 0) => _)
          "RSP" |-> (mi(64, 192) => _)
          "RBP" |-> (mi(64, 192) => _)
          "AF" |-> (mi(1, _) => _)
          "CF" |-> (mi(1, _) => _)
          "OF" |-> (mi(1, _) => _)
          "PF" |-> (mi(1, _) => _)
          "SF" |-> (mi(1, _) => _)
          "ZF" |-> (mi(1, _) => _)
             
          
           // Main Claim
          "RDI" |-> (mi(64, N:Int):MInt => _)
          "RAX" |-> (mi(64, _:Int):MInt => mi(64, (N *Int (N +Int 1)) /Int 2))
    </regstate>
      requires N >=Int 0 
       andBool N <Int 255


  // Loop Invariant                       
  rule 
    <k> fetch => _ </k>
     <functargets>  
        L2    |-> mi(64, 12)
        L3    |-> mi(64, 6)
        main  |-> mi(64, 0)
      </functargets> 
      <entrypoint>  _:MInt </entrypoint>
      <nextLocPc>  _:MInt </nextLocPc>
      <memstate>
        <text> 
        code(
          iloc ( mi(64,6 )) |-> storedInstr ( cmpl $ 0 , -8 ( %rbp ) , .Operands )
          iloc ( mi(64,7 )) |-> storedInstr ( jle L2 , .Operands )
          iloc ( mi(64,8 )) |-> storedInstr ( movl -8 ( %rbp ) , %eax , .Operands )
          iloc ( mi(64,9 )) |-> storedInstr ( addl %eax , -4 ( %rbp ) , .Operands )
          iloc ( mi(64,10)) |-> storedInstr ( decl -8 ( %rbp ) , .Operands )
          iloc ( mi(64,11)) |-> storedInstr ( jmp L3 , .Operands )
          iloc ( mi(64,12)) |-> storedInstr ( movl -4 ( %rbp ) , %eax , .Operands )
          _:Map
        )
              </text>
        <stack> 
          <memory>
            <nextLoc> _:Int  </nextLoc> 
            <objects> 
            mem(
              symloc ( 1 , 128 ) |-> 
                mVector(256, 8, 
                  160 |-> byte ( 0 , undefMInt )
                  161 |-> byte ( 0 , undefMInt )
                  162 |-> byte ( 0 , undefMInt )
                  163 |-> byte ( 0 , undefMInt )
                  164 |-> byte ( 0 , mi(32, N) )
                  165 |-> byte ( 1 , mi(32, N) )
                  166 |-> byte ( 2 , mi(32, N) )
                  167 |-> byte ( 3 , mi(32, N) )
                  168 |-> byte ( 0 , undefMInt )
                  169 |-> byte ( 0 , undefMInt )
                  170 |-> byte ( 0 , undefMInt )
                  171 |-> byte ( 0 , undefMInt )
                  172 |-> byte ( 0 , undefMInt )
                  173 |-> byte ( 0 , undefMInt )
                  174 |-> byte ( 0 , undefMInt )
                  175 |-> byte ( 0 , undefMInt )
                  // Loop Invariant
                  176 |-> byte ( 0 , mi(32, M) => mi(32, 0)) 
                  177 |-> byte ( 1 , mi(32, M) => mi(32, 0))
                  178 |-> byte ( 2 , mi(32, M) => mi(32, 0))
                  179 |-> byte ( 3 , mi(32, M) => mi(32, 0))
                  180 |-> byte ( 0 , mi(32, S) => mi(32, S +Int M *Int (M +Int 1) /Int 2))
                  181 |-> byte ( 1 , mi(32, S) => mi(32, S +Int M *Int (M +Int 1) /Int 2))
                  182 |-> byte ( 2 , mi(32, S) => mi(32, S +Int M *Int (M +Int 1) /Int 2))
                  183 |-> byte ( 3 , mi(32, S) => mi(32, S +Int M *Int (M +Int 1) /Int 2))
                  184 |-> byte ( 0 , mi(64,192) )
                  185 |-> byte ( 1 , mi(64,192) )
                  186 |-> byte ( 2 , mi(64,192) )
                  187 |-> byte ( 3 , mi(64,192) )
                  188 |-> byte ( 4 , mi(64,192) )
                  189 |-> byte ( 5 , mi(64,192) )
                  190 |-> byte ( 6 , mi(64,192) )
                  191 |-> byte ( 7 , mi(64,192) )
                  // Return Address
                  192 |-> byte ( 0 , mi(64,-1) )
                  193 |-> byte ( 1 , mi(64,-1) )
                  194 |-> byte ( 2 , mi(64,-1) )
                  195 |-> byte ( 3 , mi(64,-1) )
                  196 |-> byte ( 4 , mi(64,-1) )
                  197 |-> byte ( 5 , mi(64,-1) )
                  198 |-> byte ( 6 , mi(64,-1) )
                  199 |-> byte ( 7 , mi(64,-1) )
                  _:Map
                )
            )
            </objects>
          </memory>
          <stackbase> _:StackBaseInfo </stackbase>
        </stack>
      </memstate>

      <environment>
        <argc> _:K </argc>
        <argv> _:K </argv>
      </environment>
      <regstatequeue> _ => _ </regstatequeue>

      <regstate>
          // Loop Invariant
          "RIP" |-> (mi(64, 6) => mi(64, 12))
          // Static Configuration
          "RSP" |-> (mi(64, 184) => _)
          "RBP" |-> (mi(64, 184) => _)
          "RDI" |-> (mi(64, _) => _)
          "AF" |-> (mi(1, _) => _)
          "CF" |-> (mi(1, _) => _)
          "OF" |-> (mi(1, _) => _)
          "PF" |-> (mi(1, _) => _)
          "SF" |-> (mi(1, _) => _)
          "ZF" |-> (mi(1, _) => _)
    </regstate>
      requires N >=Int 0 
       andBool N <Int 255
       andBool S >=Int 0
       andBool M >=Int 0
       andBool (S +Int M *Int (M +Int 1) /Int 2) <Int 255     [trusted]



endmodule
