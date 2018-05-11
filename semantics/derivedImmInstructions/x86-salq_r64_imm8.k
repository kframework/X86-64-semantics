requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - salq_r64_cl
*/

module SALQ-R64-IMM8
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(salq  %cl, R:R64, .Operands) =>
      execinstr(salq  R, getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(salq R, MIsrc:MInt, MIcount:MInt, .Operands) => 
    setFlag(
      (#ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          xorMInt(getSignBit(MIsrc), getSignBit(shlMInt(MIsrc, 1)))
        #else
          undef
        #fi 
      #fi):>MInt  
        , 
        "OF") ~> 

    setFlag(
      (#ifMInt zeroMInt(MIcount)
      #then
        getFlag("ZF", RSMap)    
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          fromBool(zeroMInt(shlMInt(MIsrc, uvalueMInt(MIcount))), 1)
        #else 
          mi(1,1)
        #fi 
      #fi):>MInt,
      "ZF"
        ) ~> 

    setFlag(
      (#ifMInt zeroMInt(MIcount)
      #then
        getFlag("SF", RSMap)
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          extractMInt(shlMInt(MIsrc, uvalueMInt(MIcount)), 0, 1)
        #else 
          mi(1, 0)
        #fi 
      #fi):>MInt,
      "SF"
      ) ~> 

    setFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        getFlag("AF", RSMap)
      #else
        undef
      #fi  
        , 
        "AF") ~> 

    setFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        getFlag("CF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          getSignBit(MIsrc)
        #else
          #ifMInt ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
          #then
            getSignBit(shlMInt(MIsrc, uvalueMInt(MIcount) -Int 1))
          #else  
            undef
          #fi  
        #fi 
      #fi  
        , 
        "CF") ~> 

    setFlag(
      (#ifMInt zeroMInt(MIcount)
      #then
        getFlag("PF", RSMap)
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          fromBool(  
            (popCount(
              extractMask(
                shlMInt(MIsrc, uvalueMInt(MIcount)), 
                8, 0)
            ) &Int 1) ==Int 0 ,
          1)
        #else 
          mi(1,1)
        #fi 
      #fi):>MInt,  
      "PF"
        ) ~> 

    setRegisterValue(
      #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
      #then
        shlMInt(MIsrc, uvalueMInt(MIcount))
      #else 
        salOverflow(MIsrc)
      #fi 
      , R) 
  ...</k>
    <regstate> RSMap </regstate>
endmodule
