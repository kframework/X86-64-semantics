requires "x86-syntax.k"
requires "x86-configuration.k"

module X86-LOADER
  imports X86-SYNTAX
  imports X86-CONFIGURATION

  syntax Int ::= loc(MInt)
  syntax Int ::= getISize(Opcode, Typedoperands) [function]
  syntax Instruction ::= storedinstr(Opcode, Typedoperands)
  syntax Instruction ::= execinstr(Opcode, Typedoperands)

  rule getISize(OpC:Opcode, OpR:Typedoperands) => 1

  /*@
    Unroll intructions into KList.
  */
  rule I:Instruction Is:Instructions => I ~> Is

  /*@
    Ignore certain contructs for the time being.
  */
  rule <k> .section .text  => . ...</k>
  rule <k> .globl _start  => . ...</k>
  // Both will work
  //rule <k> L:Label => . ...</k>
  rule <k> _start: => . ...</k>

  //rule <k> C:Comment => . ...</k>
  // Which rule to take precedence
  //rule <k> nop => . ...</k>

  /*@
    Load the instructions into Code memory.
  */
  rule  <k> OpC:Opcode OpR:Typedoperands => . ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(OpC,OpR)] </cmem>
        <nextLoc> L => addMInt(L, mi(64, getISize(OpC, OpR))) </nextLoc>
  /*@
    To stop the execution of instrcution, a sentinal instruction is stored in code memory, which upon fetching will stop further execution.
    Also rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(sentinal, .Typedoperands)] </cmem>
        <nextLoc> L  </nextLoc>
        <rip> _ => LoadAddr </rip>
        <entrypoint> LoadAddr </entrypoint>

  /*@
    Fetch the instructions from Code memory for exection & debugging.
  */
  rule 
    <k> fetch => execinstr(OpC,OpR) ~> inforegisters ~> fetch ... </k>
    <cmem>... loc(PC) |-> storedinstr(OpC,OpR)   ...</cmem>
    <rip> PC => addMInt(PC,  mi(64,getISize(OpC,OpR))) </rip>

  /*@
    inforegisters prints all the register states for debug purposes.
  */
  rule  
    <k> inforegisters => . ... </k>
    <regstatequeue> ... .List => ListItem(REGSTATE) </regstatequeue>
    <regstate> REGSTATE </regstate> 

  /*@
    Once the sentinal instrcution is fetched, the execution stops.
  */
  rule <k> execinstr ( sentinal , .Typedoperands ) ~> inforegisters ~> fetch => . ... </k>
  rule <k> execinstr ( nop , .Typedoperands ) ~> inforegisters ~> fetch => . ... </k>


endmodule
