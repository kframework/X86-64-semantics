requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - shrq_r64_cl
*/

module SHR-R64-CL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(shrq  %cl,  R:R64, .Typedoperands) =>
      execinstr(shrq  R, getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Typedoperands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(shrq  R,  MIsrc, MIcount, .Typedoperands) => 
    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          getSignBit(MIsrc)
        #else
          undef
        #fi 
      #fi)}:>MInt  
        , 
        "OF") ~> 

    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("ZF", RSMap)    
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          fromBool(zeroMInt(lshrMInt(MIsrc, uvalueMInt(MIcount))), 1)
        #else 
          mi(1,1)
        #fi 
      #fi)}:>MInt,
      "ZF"
        ) ~> 

    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("SF", RSMap)
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          extractMInt(lshrMInt(MIsrc, uvalueMInt(MIcount)), 0, 1)
        #else 
          mi(1, 0)
        #fi 
      #fi)}:>MInt,
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
          extractMask(MIsrc, 1, 0) 
        #else
          #ifMInt ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
          #then
            //extractMask(lshrMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 1, 0)
            extractMask(lshrMInt(MIsrc, uvalueMInt(addMInt(MIcount, mi(bitwidthMInt(MIcount), -1))) ), 1, 0)
          #else  
            getSignBit(MIsrc)
          #fi  
        #fi 
      #fi  
        , 
        "CF") ~> 

    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("PF", RSMap)
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          fromBool(  
            (popCount(
              extractMask(
                lshrMInt(MIsrc, uvalueMInt(MIcount)), 
                8, 0)
            ) &Int 1) ==Int 0 ,
          1)
        #else 
          mi(1,1)
        #fi 
      #fi)}:>MInt,
      "PF"
        ) ~> 

    setRegisterValue(
      #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
      #then
        lshrMInt(MIsrc, uvalueMInt(MIcount))
      #else 
        shrOverflow(MIsrc)
      #fi 
      , R) 
  ...</k>
    <regstate> RSMap </regstate>
endmodule
