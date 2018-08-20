require "x86-syntax.k"
require "x86-abstract-syntax.k"
require "common/common-memory.k"
require "x86-memory.k"
require "x86-env-init.k"
require "x86-mint-wrapper.k"

module X86-CONFIGURATION
  imports X86-SYNTAX
  imports X86-ASBTRACT-SYNTAX
  imports COMMON-MEMORY-CONFIGURATION
  imports X86-MEMORY-SYNTAX
  imports X86-INIT-SYNTAX
  imports MINT-WRAPPER-SYNTAX
  imports X86-LOADER-SYNTAX
  imports COMMON-C-LIBRARY-CONFIGURATION


  // configuration <T>
  configuration
//initEnvironment(ListItem("a.out") ListItem("HelloWorld!") .List) ~> 
    <k> 
	$PGM:Instructions ~> 
	initRegisters($REGV:RegValPairList) ~> 
	initEnvironment($ARGV:List) ~> 
        loadEntryPoint ~>
	inforegisters ~> 
	fetch 
    </k>

    <functargets> .Map </functargets> 
    <entrypoint> .K </entrypoint>
    <nextLocPc> mi(64, 0) </nextLocPc>

    <memstate>
      <text> code( .Map ) </text>
      <stack>
        <memory/>
        <stackbase> stackBaseInfo(.K, .K) </stackbase>
      </stack>
    </memstate>

    <environment>
      <argc> .K </argc>
      <argv> .K </argv>
    </environment>

    <regstate>
      .Map
    </regstate>

    /*@
      The following configuration is used to store the intermediate
      regstate at instruction boundary. Used in debug/testing purposes.

      itracer: For debug purposes
      regstatequeue: For testing purposes
    */

    // <itracer> .List </itracer>
    <regstatequeue> .List </regstatequeue>

    <c-library/>
    <formatting/>
endmodule
