requires "x86-configuration.k"


module CALLQ-REL32
  imports X86-CONFIGURATION

  syntax Builtin ::= "$NoBuiltin"
  syntax Builtin ::= GetBuiltinFromAddress(Map, MInt) [function]
  syntax Bool ::= HasBuiltinAtAddress(Map, MInt) [function]

  rule GetBuiltinFromAddress(M, A) => {M[A] orDefault $NoBuiltin}:>Builtin
  rule HasBuiltinAtAddress(M, A) => GetBuiltinFromAddress(M, A) =/=K $NoBuiltin


  rule <k> 
    execinstr (callq Imm64:MInt, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Imm64)) </regstate>
      <symbols> SymMap </symbols>
      requires notBool HasBuiltinAtAddress(SymMap, Imm64)
    
  rule <k> execinstr (callq Imm64:MInt, .Operands) => execinstr(call GetBuiltinFromAddress(SymMap, Imm64)) ... </k>
       <regstate> RSMap </regstate>
       <symbols> SymMap </symbols>
      requires HasBuiltinAtAddress(SymMap, Imm64)
endmodule
