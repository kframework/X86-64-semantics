requires "x86-configuration.k"

module X86-FETCH-EXECUTE
  imports X86-CONFIGURATION

  /*@
    Fetch the instructions from Code memory for exection & debugging.
  */
  rule
    <k> fetch => execinstr(OpC OpR) ~> inforegisters ~> fetch ... </k>
      <cmem>... loc(PC) |-> storedinstr(OpC OpR)   ...</cmem>
      <regstate>... "RSP" |-> ( PC => addMInt(PC,  mi(64,getISize(OpC OpR))))  ...</regstate>

  /*@ This rule need to used in future. Currently the execution is
    terminated by a nop instruction.
    After  execution of last instrcution, no more fecthes.
  rule
    <k> fetch => .  ... </k>
      <cmem> CMap </cmem>
      <rip> PC  </rip>
        requires notBool loc(PC) in_keys ( CMap )
  */

  /*@
    inforegisters prints all the register states for debug purposes.
  */
  rule
    <k> inforegisters => . ... </k>
    <regstatequeue> ... .List => ListItem(RSMap) </regstatequeue>
    <regstate> RSMap </regstate>

  /*@
    Final Exit.
  */
  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>

endmodule
