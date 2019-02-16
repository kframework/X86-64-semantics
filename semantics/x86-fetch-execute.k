requires "x86-configuration.k"
requires "decoder.k"

module X86-FETCH-EXECUTE
  imports X86-CONFIGURATION
  imports DECODER-INTERFACE
  imports DECODER
  imports MINT-WRAPPER
  imports MINT

  syntax Int ::= "maxInstructionLength"
  rule maxInstructionLength => 15 [macro]

  syntax Bool ::= isHaltAddress(MInt) [function]
  rule isHaltAddress(MI) => svalueMInt(MI) ==Int -1

  // This file basically needs to be rewritten.

  syntax K ::= invokeDecoder(Int, K) [strict]

  syntax KResult ::= Ints

  syntax K ::= loadInstructionBytesFromMemory(MInt)

  /*@
    Fetch the instructions from Code memory for exection & debugging.
  */
  rule <k> fetch => invokeDecoder(uvalueMInt({RSMap["RIP"]}:>MInt), loadInstructionBytesFromMemory({RSMap["RIP"]}:>MInt))  ~> inforegisters ~> fetch ... </k>
       <regstate> RSMap </regstate>
       requires notBool(isHaltAddress({RSMap["RIP"]}:>MInt))

  syntax K ::= loadInstructionBytesFromMemoryAux(MInt, Ints, Int)
  
  rule loadInstructionBytesFromMemory(Ip) => loadInstructionBytesFromMemoryAux(Ip, .Ints, 0)

  rule (.K => loadFromMemory(Ip, 8)) ~> loadInstructionBytesFromMemoryAux(Ip, Is, I) requires I <Int maxInstructionLength
  rule memLoadValue(undefMInt) ~> loadInstructionBytesFromMemoryAux(Ip, Is, I) => reverseInts(Is)
  rule memLoadValue(MI:MInt) ~> loadInstructionBytesFromMemoryAux(Ip, Is, I) => loadInstructionBytesFromMemoryAux(addMInt(Ip, mi(logicalAddressWidth, 1)), uvalueMInt(MI) Is, I +Int 1) [owise]
  rule loadInstructionBytesFromMemoryAux(_, Is, maxInstructionLength) => reverseInts(Is)

  rule invokeDecoder(I:Int, Is:Ints) => Decode(I, Is)
  rule <k> DecodedInstruction(Len:Int, _, I:Instruction, _) => execinstr(I) ... </k>
       <regstate> RSMap => RSMap["RIP" <- addMInt({RSMap["RIP"]}:>MInt, mi(logicalAddressWidth, Len))] </regstate>


  syntax KItem ::= "exit_0"
  syntax KItem ::= "illegal_halt"

  rule D:DecoderError => illegal_halt ~> D

  syntax K ::= makeExitTag(K) [function]
  rule makeExitTag(.K) => exit_0
  rule makeExitTag(_) => illegal_halt [owise]

  /*@ 
    After execution of last instrcution, no more fecthes. 
    The last return instruction drive the PC to an invalid location
    (out of code section)
  */
  rule <k> fetch ~> R => makeExitTag(R) ~> R </k>
       <regstate> RSMap </regstate>
       requires isHaltAddress({RSMap["RIP"]}:>MInt)

  /*@
    inforegisters prints all the register states for debug purposes.
  */
  rule <k> inforegisters => . ... </k>
       <regstatequeue> ... .List => ListItem(RSMap) </regstatequeue>
       <regstate> RSMap </regstate>
endmodule
