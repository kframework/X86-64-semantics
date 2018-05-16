requires "x86-configuration.k"
module JLE-LABEL
  imports X86-CONFIGURATION
  imports ID
  imports X86-FLAG-CHECS-SYNTAX

  rule <k> 
    execinstr (jle LabelId:Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) 
                    orBool 
                  (notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt))
endmodule
