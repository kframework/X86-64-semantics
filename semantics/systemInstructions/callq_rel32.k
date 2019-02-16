requires "x86-configuration.k"


module CALLQ-REL32
  imports X86-CONFIGURATION

  syntax Builtin ::= "$NoBuiltin"
  syntax Builtin ::= GetBuiltinFromAddress(Map, MInt) [function]
  syntax Bool ::= HasBuiltinAtAddress(Map, MInt) [function]

  rule GetBuiltinFromAddress(M, A) => {M[A] orDefault $NoBuiltin}:>Builtin
  rule HasBuiltinAtAddress(M, A) => GetBuiltinFromAddress(M, A) =/=K $NoBuiltin


  rule <k> 
    execinstr (callq Imm32:Imm, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |->addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64)) )) </regstate>
      <symbols> SymMap </symbols>
      requires notBool HasBuiltinAtAddress(SymMap, addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64)))
    
  rule <k> execinstr (callq Imm32:Imm, .Operands) => execinstr(call GetBuiltinFromAddress(SymMap, addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64)))) ... </k>
       <regstate> RSMap </regstate>
       <symbols> SymMap </symbols>
       requires HasBuiltinAtAddress(SymMap, addMInt({RSMap["RIP"]}:>MInt, handleImmediateWithSignExtend(Imm32, 32, 64)))
endmodule
