requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

/*@ This file defines the semantics of following 51 base instructions.
  - sarq_r64_cl
*/
module SAR-R64-CL
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

  rule <k> 
    execinstr(sarq  (%cl,  (R:R64, .Typedoperands)) ) =>
      execinstr(sarq  (R,  (getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Typedoperands)) )
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(sarq  (R,  (MIsrc:MInt, MIcount:MInt, .Typedoperands)) ) => 
    setFlag(
      (#ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          zeroMIntW1
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
          fromBool(zeroMInt(aShiftRightMInt(MIsrc, uvalueMInt(MIcount))), 1)
        #else 
          fromBool(zeroMInt(getSignBit(MIsrc)), 1)
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
          extractMInt(aShiftRightMInt(MIsrc, uvalueMInt(MIcount)), 0, 1)
        #else 
          getSignBit(MIsrc)
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
          extractMask(MIsrc, 1, 0) 
        #else
          #ifMInt ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
          #then
            extractMask(aShiftRightMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 1, 0)
          #else  
            getSignBit(MIsrc)
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
                aShiftRightMInt(MIsrc, uvalueMInt(MIcount)), 
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
        aShiftRightMInt(MIsrc, uvalueMInt(MIcount))
      #else 
        sarOverflow(MIsrc)
      #fi 
      , R) 
  ...</k>
    <regstate> RSMap </regstate>
endmodule
