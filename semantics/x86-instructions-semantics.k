requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

/*@ This file defines the semantics of following 51 base instructions.
  - vsubpd_ymm_ymm_ymm, vsubps_ymm_ymm_ymm,
*/

// vsubpd-ymm-ymm-ymm

   rule <k>
    execinstr(vsubpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vsubpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 64), 
          splitVector(getRegisterValue(Y1, RSMap), 64), vfsub, 64)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>


  rule <k> execinstr(vsubpd  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vsubps-ymm-ymm-ymm

   rule <k>
    execinstr(vsubps  Y1:Ymm,  Y2:Ymm, DestR, .Operands) =>
      execinstr(vsubps  DestR, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 32), 
          splitVector(getRegisterValue(Y1, RSMap), 32), vfsub, 32)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vsubps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vsub-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vdivpd_ymm_ymm_ymm, vdivps_ymm_ymm_ymm,
*/

// vdivpd-ymm-ymm-ymm

  rule <k>
    execinstr(vdivpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vdivpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfdiv, 64)), .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vdivpd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vdivps-ymm-ymm-ymm

  rule <k>
    execinstr(vdivps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vdivps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfdiv, 32)), .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vdivps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vdiv-semantics


// nop

  rule <k>
    execinstr (nop  .Operands)  => .
  ...</k>


// nop-semantics


// add-imm-r8

  rule <k> 
    execinstr(addq I:Imm , R:R64 , .Operands) => 
      execinstr(addq  R, handleImmediateWithSignExtend(I, 64, 64), getRegisterValue(R, RSMap), 
            extractMask(
              addMInt(
                concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 64, 64)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R, RSMap))
              ), 64, 0 ),
            .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule
  <k>
    execinstr(addq  ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands )) =>
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, mi(64, 0)) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k> 



/*@ This file defines the semantics of following 51 base instructions.
  - popcntq_r64_r64,
*/

// popcnt-r64-r64

  rule <k> 
    execinstr(popcntq R1:R64, R2:R64, .Operands) =>
      setFlag(mi(1, 0), "OF") ~>
      setFlag(mi(1, 0), "SF") ~>
      setFlag(mi(1, 0), "AF") ~>
      setFlag(mi(1, 0), "CF") ~>
      setFlag(mi(1, 0), "PF") ~>
      setFlag(
          {(#ifMInt zeroMInt(getRegisterValue(R1, RSMap))
      #then
          mi(1, 1)
      #else
          mi(1, 0)
      #fi)}:>MInt 
          , "ZF") ~>
      setRegisterValue(mi(getRegisterSize(R2), popCount(getRegisterValue(R1, RSMap))), R2) 
  ...</k>
    <regstate> RSMap </regstate>

  /*
  rule <k> 
    execinstr(popcntq  (R1:R64,  (R2:R64, .Operands)) ) =>
      execinstr(popcntq  (R2, mi(getRegisterSize(R1), popCount(getRegisterValue(R1, RSMap))), .Operands)) 
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr(popcntq  ( DestR, MIsrc, .Operands )) => 
    setFlag(mi(1, 0), "OF") ~>
    setFlag(mi(1, 0), "ZF") ~>
    setFlag(mi(1, 0), "SF") ~>
    setFlag(mi(1, 0), "AF") ~>
    setFlag(mi(1, 0), "CF") ~>
    setFlag(mi(1, 0), "PF") ~>
    setRegisterValue(MIsrc, DestR) 
  ...</k>
      requires notBool zeroMInt(MIsrc)

  rule <k>
    execinstr(popcntq  ( DestR:R64, MIsrc, .Operands )) => 
    setFlag(mi(1, 0), "OF") ~>
    setFlag(mi(1, 1),  "ZF") ~>
    setFlag(mi(1, 0), "SF") ~>
    setFlag(mi(1, 0), "AF") ~>
    setFlag(mi(1, 0), "CF") ~>
    setFlag(mi(1, 0), "PF") ~>
    setRegisterValue(MIsrc, DestR) 
  ...</k>
      requires zeroMInt(MIsrc)
  */



/*@ This file defines the semantics of following 51 base instructions.
  - sarq_r64_cl
*/
// sar-r64-cl

  rule <k> 
    execinstr(sarq  %cl,  R:R64, .Operands) =>
      execinstr(sarq R, getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(sarq R,  MIsrc:MInt, MIcount:MInt, .Operands) => 
    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          mi(1, 0)
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
          fromBoolToMInt(zeroMInt(aShiftRightMInt(MIsrc, uvalueMInt(MIcount))), 1)
        #else 
          fromBoolToMInt(zeroMInt(getSignBit(MIsrc)), 1)
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
          extractMInt(aShiftRightMInt(MIsrc, uvalueMInt(MIcount)), 0, 1)
        #else 
          getSignBit(MIsrc)
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
            //extractMask(aShiftRightMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 1, 0)
            extractMask(aShiftRightMInt(MIsrc, uvalueMInt(addMInt(MIcount, mi(bitwidthMInt(MIcount), -1)))), 1, 0)
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
          fromBoolToMInt(  
            (popCount(
              extractMask(
                aShiftRightMInt(MIsrc, uvalueMInt(MIcount)), 
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
        aShiftRightMInt(MIsrc, uvalueMInt(MIcount))
      #else 
        sarOverflow(MIsrc)
      #fi 
      , R) 
  ...</k>
    <regstate> RSMap </regstate>

/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

// mov-r64-r64

  rule <k> 
    execinstr(movq R1:R64, R2:R64, .Operands) => .
  ...</k>
    <regstate> RSMap </regstate>
      requires sameRegisters(R1, R2)
  

  rule <k> 
    execinstr(movq R1:R64, R2:R64, .Operands) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>
      requires notBool sameRegisters(R1, R2)
  


// adc-r16-r16

  rule <k> 
    execinstr (adcw R1:R16,  R2:R16, .Operands) =>
      execinstr(adcw R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 16), 
          extractMask(
            addMInt(
              addMInt(
                concatenateMInt(mi(1, 0), getRegisterValue(R1, RSMap)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R2, RSMap))
              ), 
              concatenateMInt(mi(1, 0), zeroExtend(getFlag("CF", RSMap), 16))
            ), 16, 0
          ), 
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcw DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>




/*@ This file defines the semantics of following 51 base instructions.
  - vcvtdq2pd_ymm_ymm, vcvtdq2ps_ymm_ymm,  32 Int -> 64 doubles or 32 floats
  - vcvtpd2ps_xmm_ymm* (NOT IMPLEMENTED) , vcvtps2pd_ymm_xmm, doubles <-> floats

  // Not implemented
  - vcvtpd2dq_xmm_ymm, vcvtps2dq_ymm_ymm*   64 doubles or 32 floats -> 32 Ints
  - vcvttpd2dq_xmm_ymm, vcvttps2dq_ymm_ymm,

vcvtdq2pd_ymm_ymm
vcvtdq2ps_ymm_ymm
vcvtpd2ps_xmm_ymm

*/

// vcvtdq2pd-ymm-ymm

  rule <k>
    execinstr(vcvtdq2pd  Y1:Ymm,  Y2:Ymm, .Operands) =>
      setRegisterValue(
          joinVector(
            convertFpsToMInts(
              convertIntsToFps(
                convertMIntsToSInts(
                  splitVector(
                    extractMask(getRegisterValue(Y1, RSMap), 128, 0), 
                    32)), 
                53, 11), 64)),  
          Y2)  
  ...</k>
    <regstate> RSMap</regstate>


// vcvtdq2ps-ymm-ymm

  rule <k>
    execinstr(vcvtdq2ps  Y1:Ymm,  Y2:Ymm, .Operands) =>
      setRegisterValue(
          joinVector(convertFpsToMInts(convertIntsToFps(convertMIntsToSInts(splitVector(getRegisterValue(Y1, RSMap), 32)), 24, 8), 32)),  
          Y2)  
  ...</k>
    <regstate> RSMap</regstate>


// vcvtps2pd-ymm-xmm

  rule <k>
    execinstr(vcvtps2pd  X:Xmm,  Y:Ymm, .Operands) =>
      setRegisterValue(
          joinVector(convertFpsToMInts(convertFloatsToDoubles(convertMIntsToFps(splitVector(getRegisterValue(X, RSMap), 32), 24, 8)), 64)),  
          Y)
  ...</k>
    <regstate> RSMap</regstate>



// vcvtps2dq-ymm-ymm

  rule <k>
    execinstr(vcvtps2dq  Y1:Ymm,  Y2:Ymm, .Operands) =>
      setRegisterValue(
        joinVector(applyUIFs(splitVector(getRegisterValue(Y1, RSMap), 32),
            cvt_single_to_int32)),
          Y2)
  ...</k>
    <regstate> RSMap</regstate>



// vcvtpd2ps-xmm-ymm

  rule <k>
    execinstr(vcvtpd2ps  Y:Ymm,  X:Xmm, .Operands) =>
      setRegisterValue(
        joinVector(applyUIFs(splitVector(getRegisterValue(Y, RSMap), 64),
            cvt_double_to_single)),
          X)
  ...</k>
    <regstate> RSMap</regstate>




// vcvt-semantics
  // Not Implemented


/*@ This file defines the semantics of following 51 base instructions.
  - vaddpd_ymm_ymm_ymm, vaddps_ymm_ymm_ymm,
*/

// vaddpd-ymm-ymm-ymm

  rule <k>
    execinstr(vaddpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vaddpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), splitVector(getRegisterValue(Y2, RSMap), 64), 
          vfadd, 64)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>  

  rule <k> execinstr(vaddpd  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vaddps-ymm-ymm-ymm

  rule <k>
    execinstr(vaddps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vaddps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), splitVector(getRegisterValue(Y2, RSMap), 32), 
          vfadd, 32)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>  

  rule <k> execinstr(vaddps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vadd-semantics


/*@ This file defines the semantics of following 51 base instructions.
  -  cmoveq_r64_r64
*/

// cmove-r64-r64

  /*
  rule <k> 
    execinstr(cmoveq  (R1:R64,  (R2:R64, .Operands)) ) => .
  ...</k>
    <regstate> RSMap</regstate>
      requires sameRegisters(R1, R2) orBool zeroMInt(getFlag("ZF", RSMap))


  rule <k> 
    execinstr(cmoveq  (R1:R64,  (R2:R64, .Operands)) ) => 
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap</regstate>
      requires  (notBool sameRegisters(R1, R2)) andBool (notBool zeroMInt(getFlag("ZF", RSMap)))
      */
  rule <k> 
    execinstr(cmoveq R1:R64, R2:R64, .Operands) => 
      setRegisterValue(
          #ifMInt zeroMInt(getFlag("ZF", RSMap)) #then 
            getRegisterValue(R2, RSMap) #else 
            getRegisterValue(R1, RSMap) #fi, 
          R2)
  ...</k>
    <regstate> RSMap</regstate>



/*@ This file defines the semantics of following 51 base instructions.
  - vmaxpd_ymm_ymm_ymm, vmaxps_ymm_ymm_ymm,
*/

// vmaxpd-ymm-ymm-ymm

  rule <k>
    execinstr(vmaxpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      setRegisterValue(
        #ifMInt sameRegisters(Y1, Y2)
        #then
          getRegisterValue(Y1, RSMap)
        #else
          joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y2, RSMap), 64), vfmax, 64)) 
        #fi
          ,Y3)
  ...</k>
    <regstate> RSMap</regstate>

  /*
  rule <k>
    execinstr(vmaxpd  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Operands) =>
      execinstr(vmaxpd  Y2, getRegisterValue(Y1, RSMap), .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vmaxpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vmaxpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfmax, 64)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmaxpd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>
  */


// vmaxps-ymm-ymm-ymm

  rule <k>
    execinstr(vmaxps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      setRegisterValue(
        #ifMInt sameRegisters(Y1, Y2)
        #then
          getRegisterValue(Y1, RSMap)
        #else
          joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y2, RSMap), 32), vfmax, 32)) 
        #fi
          ,Y3)
  ...</k>
    <regstate> RSMap</regstate>
  /*
  rule <k>
    execinstr(vmaxps  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Operands) =>
      execinstr(vmaxps  Y2, getRegisterValue(Y1, RSMap), .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vmaxps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vmaxps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfmax, 32)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmaxps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>
  */



// vmax-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfnmadd132pd_ymm_ymm_ymm, vfnmadd132ps_ymm_ymm_ymm,
*/

// vfnmadd132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmadd132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfnmadd132pd  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
              splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfnegate, 64), vfadd, 64)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfnmadd132pd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmadd132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmadd132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfnmadd132ps  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
              splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfnegate, 32), vfadd, 32)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfnmadd132ps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmadd132-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfmadd132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm,
*/

// vfmadd132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfmadd132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfmadd132pd  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfadd, 64)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfmadd132pd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmadd132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfmadd132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfmadd132ps  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfadd, 32)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfmadd132ps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmadd132-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,

*/

// movs-r64-r32

  rule <k> 
    execinstr(movslq R1:R32, R2:R64, .Operands) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>



/*@ This file defines the semantics of following 51 base instructions.
  - vsqrtpd_ymm_ymm_ymm, vsqrtps_ymm_ymm_ymm,
*/

// vsqrtpd-ymm-ymm

  rule <k>
    execinstr(vsqrtpd  Y1:Ymm,  Y2:Ymm, .Operands) =>
      execinstr(vsqrtpd  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), vfsqrt, 64)), .Operands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vsqrtpd  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vsqrtps-ymm-ymm

  rule <k>
    execinstr(vsqrtps  Y1:Ymm,  Y2:Ymm, .Operands) =>
      execinstr(vsqrtps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfsqrt, 32)), .Operands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vsqrtps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vsqrt-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - salq_r64_cl
*/

// sal-r64-cl

  rule <k> 
    execinstr(salq  %cl, R:R64, .Operands) =>
      execinstr(salq  R, getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(salq R, MIsrc:MInt, MIcount:MInt, .Operands) => 
    setFlag(
        {(#ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          xorMInt(getSignBit(MIsrc), getSignBit(shlMInt(MIsrc, 1)))
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
          fromBoolToMInt(zeroMInt(shlMInt(MIsrc, uvalueMInt(MIcount))), 1)
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
          extractMInt(shlMInt(MIsrc, uvalueMInt(MIcount)), 0, 1)
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
          getSignBit(MIsrc)
        #else
          #ifMInt ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
          #then
            //getSignBit(shlMInt(MIsrc, uvalueMInt(MIcount) -Int 1))
            getSignBit(shlMInt(MIsrc, uvalueMInt(addMInt(MIcount, mi(bitwidthMInt(MIcount), -1)))))
          #else  
            undef
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
          fromBoolToMInt(  
            (popCount(
              extractMask(
                shlMInt(MIsrc, uvalueMInt(MIcount)), 
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
        shlMInt(MIsrc, uvalueMInt(MIcount))
      #else 
        salOverflow(MIsrc)
      #fi 
      , R) 
  ...</k>
    <regstate> RSMap </regstate>



/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

// mov-rh-r8

  rule <k> 
    execinstr(movb R1:R8, R2:Rh, .Operands) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>



// adc-r8-r8

  rule <k> 
    execinstr (adcb R1:R8, R2:R8, .Operands) =>
      execinstr(adcb R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 8),
          extractMask(
            addMInt(
              addMInt(
                concatenateMInt(mi(1, 0), getRegisterValue(R1, RSMap)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R2, RSMap))
              ), 
              concatenateMInt(mi(1, 0), zeroExtend(getFlag("CF", RSMap), 8))
            ), 8, 0
          ), 
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>
  
  rule <k>
    execinstr(adcb DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>



/*@ This file defines the semantics of following  base instructions.
  - vrsqrtps_ymm_ymm
*/

// vrsqrtps-ymm-ymm

  rule <k>
    execinstr(vrsqrtps  Y1:Ymm,  Y2:Ymm, .Operands) =>
      execinstr(vrsqrtps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfrsqrt, 32)), .Operands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vrsqrtps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vrsqrtps-ymm-ymm-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfnmsub132pd_ymm_ymm_ymm, vfnmsub132ps_ymm_ymm_ymm,
*/

// vfnmsub132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmsub132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfnmsub132pd  Y1, 
      joinVector(
        operateOnVector(
          operateOnVector(
            operateOnVector(
              splitVector(getRegisterValue(Y1, RSMap), 64), 
              splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), 
            vfnegate, 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), 
          vfsub, 64)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfnmsub132pd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmsub132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmsub132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfnmsub132ps  Y1, 
      joinVector(
        operateOnVector(
          operateOnVector(
            operateOnVector(
              splitVector(getRegisterValue(Y1, RSMap), 32), 
              splitVector(getRegisterValue(Y3, RSMap), 32), 
              vfmul, 32), 
            vfnegate, 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), 
          vfsub, 32)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfnmsub132ps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmsub132-semantics


/*@ This file defines the semantics of following 316 pseudo instructions.
  - Set Clear status flags (12)
  - Move Status Flag (22)
  - Set sf, zf and pf according to result (4)
  - Move Moving a single byte. (152)
  - 128 bit reg <-> 32 bit reg (18)
  - Split and combine registers.(108)
*/

// set-clear-status-flags
  // syntax KItem ::= setFlag(MInt, String) 


// mov-status-flags

  syntax Abstractinstruction ::= writeRegisterToFlag(R8, String)
  syntax Abstractinstruction ::= readFlagToRegister(String, R64)

  rule <k>
    writeRegisterToFlag(R:R8, FL) => setFlag(getRegisterBitsAtPositon(R, 1, 0, RSMap), FL)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    readFlagToRegister(FL, R) => setRegisterValue(zeroExtend(getFlag(FL, RSMap), getRegisterSize(R)), R)
  ...</k>
    <regstate> RSMap </regstate>


// update-status-flags

  syntax Abstractinstruction ::= setSZPForRegister(Register)

  rule <k>
    setSZPForRegister(R) => 
      updateSignFlag(getRegisterValue(R,   RSMap)) ~>
      updateZeroFlag(getRegisterValue(R,   RSMap)) ~>
      updateParityFlag(getRegisterValue(R, RSMap)) 
  ...</k>
    <regstate> RSMap </regstate>



// split-combine-xmms
  
  // ----------------------------------------------------------------------------
  // moves the lowest 32 bits of xmm to R1, the next 32 bits to
  //  R2, the next to R3 and the highest 32 bits to R4.
  // N is the size of the R1, R2, or R3  
  //
  // Note: R1, R2, R3, R4 could be Xmm, R32 
  // When R1-4 are Xmm, the 224 higher bits of corresponding Ymm are preserved.
  // When R1-4 are R32, the 32 higher bits of corresponding R64 are zeroed out.
  // ----------------------------------------------------------------------------
  syntax Abstractinstruction ::= splitXmmToR32(Xmm, Register, Register, Register, Register, Int)

  rule <k>
    splitXmmToR32(X, X1, X2, X3, X4, N) => 
        setRegisterValue(extractMask(getRegisterValue(X, RSMap), 32,  0),  X1) ~>
        setRegisterValue(extractMask(getRegisterValue(X, RSMap), 32,  32), X2) ~>
        setRegisterValue(extractMask(getRegisterValue(X, RSMap), 32,  64), X3) ~>
        setRegisterValue(extractMask(getRegisterValue(X, RSMap), 32,  96), X4)
  ...</k>
    <regstate> RSMap </regstate>
      requires N =/=Int 32

  rule <k>
    splitXmmToR32(X, R1, R2, R3, R4, N) => 
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(X, RSMap), 32,  0),  64), convSubRegsToRegs(R1)) ~>
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(X, RSMap), 32,  32), 64), convSubRegsToRegs(R2)) ~>
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(X, RSMap), 32,  64), 64), convSubRegsToRegs(R3)) ~>
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(X, RSMap), 32,  96), 64), convSubRegsToRegs(R4))
  ...</k>
    <regstate> RSMap </regstate>
      requires N ==Int 32


  // ----------------------------------------------------------------------------
  // moves the lowest 32 bits of R1 to X[31-0]
  // moves the lowest 32 bits of R2 to X[63-32]
  // moves the lowest 32 bits of R3 to X[95-64]
  // moves the lowest 32 bits of R4 to X[128-96]
  // Note: R1, R2, R3, R4 are all Xmm
  // ----------------------------------------------------------------------------
  syntax Abstractinstruction ::= combineR32ToXmm(Xmm, Xmm, Xmm, Xmm, Xmm)

  rule <k>
    combineR32ToXmm(X1, X2, X3, X4, X) => 
      setRegisterValue(
        concatenateMInt(  
          concatenateMInt(
            extractMask(getRegisterValue(X4, RSMap), 32, 0), extractMask(getRegisterValue(X3, RSMap), 32, 0)), 
          concatenateMInt(
            extractMask(getRegisterValue(X2, RSMap), 32, 0), extractMask(getRegisterValue(X1, RSMap), 32, 0)) 
        ), 
      X)
  ...</k>
    <regstate> RSMap </regstate>


// split-combine-2n

  /*
  ** SPLIT R1(2N) -> R2(N) R3(N): the value of a 2N-bit register R1 to 2 N-bit registers R2(low N-bits) and R3(high N-bits)
  **                N is the size of R2 or R3
  **
  ** For N == 64, 
  **  sizeOf(R1) = 2N (128), but sortOf(R2) or sortOf(R3) could be R64, Xmm 
  **
  ** For N =/= 64, 
  **  sizeof(R1) == 2*N, sizeof(R2) == sizeof(R3) == N 
  **
  **  For N == 32, 
  **    The higher 32 bits of 64 bit version of dest register R2 or R3 are zeroed.
  **
  */
  syntax Abstractinstruction ::= split2NToN(Register, Register, Register, Int)

  rule <k>
    split2NToN(R1, R2, R3, N) => 
        setRegisterValue(
          extractMask(getRegisterValue(R1, RSMap), getRegisterSize(R1) /Int 2, 0), 
          R2
        ) ~>
        setRegisterValue(
          extractMask(getRegisterValue(R1, RSMap), getRegisterSize(R1) /Int 2, getRegisterSize(R1) /Int 2), 
          R3
        ) 
  ...</k>
    <regstate> RSMap </regstate>
      requires N =/=Int 32

  rule <k>
    split2NToN(R1, R2, R3, N) => 
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(R1, RSMap), 32, 0), 64), convSubRegsToRegs(R2)) ~>
        setRegisterValue(zeroExtend(extractMask(getRegisterValue(R1, RSMap), 32, 32), 64), convSubRegsToRegs(R3)) 
  ...</k>
    <regstate> RSMap </regstate>
      requires N ==Int 32

  /*    
  ** Combine R1(N) R2(N) -> R3(2N)    
  **  moves the lowest n bits of R1 to R3[n-1:0]
  **  moves the lowest n bits of R2 to R3[2n-1:n]
  **    M == 2N and SRW is the width of the source (R1 or R2)
  **    
  ** For N==64, 
  **  sortof(R3) == Xmm(2N), sortof(R1) or sortof(R2) could be a R64 or Xmm
  **
  ** For N =/= 64, 
  **  sizeof(R3) == 2*N, sizeof(R1) == sizeof(R2) == N
  **
  ** For N == 16,
  **  The higher 32 bits of 64 bit version of dest register R3 is zeroed.
  **/
  syntax Abstractinstruction ::= combineNTo2N(Register, Register, Register, Int, Int, Int)

  rule <k>
    combineNTo2N(R1, R2, R3, N, M, SRW) => 
      setRegisterValue(
        concatenateMInt(getRegisterValue(R2, RSMap), getRegisterValue(R1, RSMap)), 
        R3
      ) 
  ...</k>
    <regstate> RSMap </regstate>
      requires N =/=Int 16 andBool (N =/=Int 64 orBool SRW =/=Int 128)

  rule <k>
    combineNTo2N(X1, X2, X3, N, M, SRW) => 
      setRegisterValue(
        concatenateMInt(
          extractMask(getRegisterValue(X2, RSMap), 64, 0), 
          extractMask(getRegisterValue(X1, RSMap), 64, 0)
          ), 
        X3
      ) 
  ...</k>
    <regstate> RSMap </regstate>
      requires N ==Int 64 andBool SRW ==Int 128

  rule <k>
    combineNTo2N(R1, R2, R3, N, M, SRW) => 
      setRegisterValue(
          zeroExtend(concatenateMInt(extractMask(getRegisterValue(R2, RSMap), 16, 0), extractMask(getRegisterValue(R1, RSMap), 16, 0)), 64), 
          convSubRegsToRegs(R3)) 
  ...</k>
    <regstate> RSMap </regstate>
      requires N ==Int 16 



// mov-single-byte

  // ----------------------------------------------------------------------------
  // Mov the value in 1-byte register to a specific byte number B in an n-byte register.
  // ----------------------------------------------------------------------------
  syntax Abstractinstruction ::= movByteToPosOfReg(R8, Int, Register)
  rule <k>
    movByteToPosOfReg(R1, BNUM, R2) => setRegisterBitsAtPositon(getRegisterValue(R1, RSMap), R2, (BNUM) *Int 8)
  ...</k>
    <regstate> RSMap </regstate>
      requires getRegisterSize(R1) ==Int 8

  // ----------------------------------------------------------------------------
  // Mov the byte value in n-byte register at byte position number B to a  1-byte register.
  // ----------------------------------------------------------------------------
  syntax Abstractinstruction ::= movPosOfRegToByte(Int, Register, R8)
  rule <k>
    movPosOfRegToByte(BNUM, R1, R2) => setRegisterValue(getRegisterBitsAtPositon(R1, 8, (BNUM) *Int 8, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>
      requires getRegisterSize(R2) ==Int 8


// save-restore

  /*
  ** Saves Register R in scratchpad S.
  **
  */
  syntax Abstractinstruction ::= saveRegister(Register, String)

  rule <k>
    saveRegister(R, S) => .
  ...</k>
    <regstate> RSMap:Map => updateMap(RSMap, 
      S |-> plugInMask({RSMap[S]}:>MInt, getRegisterValue(R, RSMap), 0)
    )
    </regstate>

  /*
  ** For W2 == 0, which is the simple case of restoring the higher bits of scratchpad S. 
  **  A:Extracts lower W1 bit from Sratch Pad register S starting from S1
  **  B:Extracts lower RW bits from Register R starting from RS
  **  C: Store concatenate(A, B) to R 
  ** 
  ** For W2 != 0, which means we have 2 chuncks to restore from scratchpad S.
  **  A:Extracts lower W1 bit from Sratch Pad register S starting from S1
  **  B:Extracts lower RW bits from Register R starting from RS
  **  C: Store concatenate(B, A) 
  **  D:Extracts lower W2 bit from Sratch Pad register S starting from S2
  **  E: Store concatenate(D, C) to R 
  */
  syntax Abstractinstruction ::= restoreRegister(String, Int, Int, Int, Int, Int, Int, Register)
  rule <k>
    restoreRegister(S, S1, W1, S2, W2, RS, RW, R) => 
      setRegisterValue(
          concatenateMInt(
            extractMask({RSMap[S]}:>MInt, W1, S1),
            extractMask(getRegisterValue(R, RSMap), RW, RS))
          , R)
  ...</k>
    <regstate> RSMap </regstate>
      requires W2 ==Int 0

  rule <k>
    restoreRegister(S, S1, W1, S2, W2, RS, RW, R) => 
      setRegisterValue(
          concatenateMInt(
            extractMask({RSMap[S]}:>MInt, W2, S2),
            concatenateMInt( 
              extractMask(getRegisterValue(R, RSMap), RW, RS),
              extractMask({RSMap[S]}:>MInt, W1, S1))
            ) , R)
  ...</k>
    <regstate> RSMap </regstate>
      requires W2 =/=Int 0


// pseudo-instr-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - xorq_r64_r64,
*/

// xor-r64-r64

  rule <k> 
    execinstr(xorq  R1:R64,  R2:R64, .Operands) =>
      execinstr(xorq  R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            xorMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>  

  rule
      execinstr(xorq  ( DestR, MIsrc1, MIsrc2, MIresult, .Operands )) 
    => 
      setFlag(mi(1, 0), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(mi(1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 



/*@ This file defines the semantics of following 51 base instructions.
  - vzeroall_ymm_ymm_ymm
*/

// vzeroall-ymm-ymm-ymm

  rule <k>
    execinstr(vzeroall  .Operands) => .
  ...</k>
    <regstate> RSMap => updateMap(RSMap,
                          ("YMM0"  |->  mi(256, 0)) 
                          ("YMM1"  |->  mi(256, 0)) 
                          ("YMM2"  |->  mi(256, 0)) 
                          ("YMM3"  |->  mi(256, 0)) 
                          ("YMM4"  |->  mi(256, 0)) 
                          ("YMM5"  |->  mi(256, 0)) 
                          ("YMM6"  |->  mi(256, 0)) 
                          ("YMM7"  |->  mi(256, 0)) 
                          ("YMM8"  |->  mi(256, 0)) 
                          ("YMM9"  |->  mi(256, 0)) 
                          ("YMM10" |->  mi(256, 0)) 
                          ("YMM11" |->  mi(256, 0)) 
                          ("YMM12" |->  mi(256, 0)) 
                          ("YMM13" |->  mi(256, 0)) 
                          ("YMM14" |->  mi(256, 0)) 
                          ("YMM15" |->  mi(256, 0)) 
                        ) 
    </regstate>



// vzeroall-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfmsub132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm,
*/

// vfmsub132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfmsub132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfmsub132pd  Y1, 
      joinVector(
        operateOnVector(
          operateOnVector(
            splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y3, RSMap), 64), 
            vfmul, 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), 
          vfsub, 64)
      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfmsub132pd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmsub132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfmsub132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Operands) =>
      execinstr(vfmsub132ps  Y1, 
      joinVector(
        operateOnVector(
          operateOnVector(
            splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y3, RSMap), 32), 
            vfmul, 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), 
          vfsub, 32)

      ), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfmsub132ps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmsub132-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,

*/
// movs-r64-r16

  rule <k> 
    execinstr(movswq R1:R16, R2:R64, .Operands) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>




/*@ This file defines the semantics of following  base instructions.
  - vrcpps_ymm_ymm
*/

// vrcpps-ymm-ymm

  rule <k>
    execinstr(vrcpps  Y1:Ymm,  Y2:Ymm, .Operands) =>
      execinstr(vrcpps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfreciprocal, 32)), .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vrcpps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vrcpps-ymm-ymm-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,

*/

// movs-r64-r8

  rule <k> 
    execinstr(movsbq R1:R8, R2:R64, .Operands) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>





// adc-r32-r32

  rule <k> 
    execinstr (adcl R1:R32,  R2:R32, .Operands) =>
      execinstr(adcl R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 32), 
          extractMask(
            addMInt(
              addMInt(
                concatenateMInt(mi(1, 0), getRegisterValue(R1, RSMap)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R2, RSMap))
              ), 
              concatenateMInt(mi(1, 0), zeroExtend(getFlag("CF", RSMap), 32))
            ), 32, 0
          ),
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcl DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(concatenateMInt(mi(32, 0), MIresult), convSubRegsToRegs(DestR)) 
  ...</k>



/*@ This file defines the semantics of following 51 base instructions.
  - vmulpd_ymm_ymm_ymm, vmulps_ymm_ymm_ymm,
*/

// vmulpd-ymm-ymm-ymm

  rule <k>
    execinstr(vmulpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vmulpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), splitVector(getRegisterValue(Y2, RSMap), 64), vfmul, 64)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmulpd  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vmulps-ymm-ymm-ymm

  rule <k>
    execinstr(vmulps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vmulps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), splitVector(getRegisterValue(Y2, RSMap), 32), vfmul, 32)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmulps  DestR, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vmul-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

// mov-r8-rh

  rule <k> 
    execinstr(movb R1:Rh, R2:R8, .Operands) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>



/*@ This file defines the semantics of following 51 base instructions.
  - vminpd_ymm_ymm_ymm, vminps_ymm_ymm_ymm,
*/

// vminpd-ymm-ymm-ymm

  rule <k>
    execinstr(vminpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      setRegisterValue(
        #ifMInt sameRegisters(Y1, Y2)
        #then
          getRegisterValue(Y1, RSMap)
        #else
          joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y2, RSMap), 64), vfmin, 64)) 
        #fi
          ,Y3)
  ...</k>
    <regstate> RSMap</regstate>

  /*
  rule <k>
    execinstr(vminpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vminpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfmin, 64)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>
      requires notBool sameRegisters(Y1, Y2)

  rule <k> 
    execinstr(vminpd  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) 
  ...</k>
  */


// vminps-ymm-ymm-ymm

  rule <k>
    execinstr(vminps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      setRegisterValue(
        #ifMInt sameRegisters(Y1, Y2)
        #then
          getRegisterValue(Y1, RSMap)
        #else
          joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y2, RSMap), 32), vfmin, 32)) 
        #fi
          ,Y3)
  ...</k>
    <regstate> RSMap</regstate>

  /*
  rule <k>
    execinstr(vminps  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Operands) =>
      execinstr(vminps  Y2, getRegisterValue(Y1, RSMap), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vminps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Operands) =>
      execinstr(vminps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfmin, 32)), 
      .Operands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> 
    execinstr(vminps  DestR:Ymm, MIsrc:MInt, .Operands ) => setRegisterValue(MIsrc, DestR) 
  ...</k>
  */



// vmin-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - orq_r64_r64,
*/

// or-r64-r64

  rule <k> 
    execinstr(orq R1:R64, R2:R64, .Operands) => 
      execinstr(orq  R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            orMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Operands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule
      execinstr(orq  DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands ) 
    => 
      setFlag(mi(1, 0), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(mi(1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 



/*@ This file defines the semantics of following 51 base instructions.
  - shrq_r64_cl
*/

// shr-r64-cl

  rule <k> 
    execinstr(shrq  %cl,  R:R64, .Operands) =>
      execinstr(shrq  R, getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(shrq  R,  MIsrc, MIcount, .Operands) => 
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
          fromBoolToMInt(zeroMInt(lshrMInt(MIsrc, uvalueMInt(MIcount))), 1)
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
          fromBoolToMInt(  
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


// adc-r64-r64

  rule <k> 
    execinstr (adcq R1:R64,  R2:R64, .Operands) =>
      execinstr(adcq R2, 
          getRegisterValue(R1, RSMap), 
          getRegisterValue(R2, RSMap), 
          zeroExtend(getFlag("CF", RSMap), 64), 
          extractMask(
            addMInt(
              addMInt(
                concatenateMInt(mi(1, 0), getRegisterValue(R1, RSMap)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R2, RSMap))
              ), 
              concatenateMInt(mi(1, 0), zeroExtend(getFlag("CF", RSMap), 64))
            ), 64, 0
          ),
          .Operands) 
  ...</k>
  <regstate> RSMap </regstate>
  
  rule <k>
    execinstr(adcq DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIresult:MInt, .Operands) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIcarry) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>


/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

// movq-r64-imm64

  rule <k> 
    execinstr(movq I1_64:Imm, R2:R64, .Operands) =>
      setRegisterValue(handleImmediateWithSignExtend(I1_64, 64, 64 ), R2)
  ...</k>
    <regstate> RSMap </regstate>
  


// vcvtps2dq-xmm-xmm

  rule <k>
    execinstr (vcvtps2dq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( cvt_single_to_int32(extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( cvt_single_to_int32(extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( cvt_single_to_int32(extractMInt( getParentValue(R1, RSMap), 192, 224)), cvt_single_to_int32(extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vcvtps2dq-xmm-xmm-semantics


// addq-r64-r64

  rule <k>
    execinstr (addq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1)

"PF" |-> (#ifMInt ((countOnes(extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 57, 65), 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)

"AF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 60, 64)), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 60, 64))), 0, 1)

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R1, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( concatenateMInt( mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// addq-r64-r64-semantics


// setnae-rh

  rule <k>
    execinstr (setnae R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 1)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #else concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 0)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #fi)
)

    </regstate>


// setnae-rh-semantics


// vrsqrtps-xmm-xmm

  rule <k>
    execinstr (vrsqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( approx_reciprocal_sqrt_single(extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( approx_reciprocal_sqrt_single(extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( approx_reciprocal_sqrt_single(extractMInt( getParentValue(R1, RSMap), 192, 224)), approx_reciprocal_sqrt_single(extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vrsqrtps-xmm-xmm-semantics


// movups-xmm-xmm

  rule <k>
    execinstr (movups R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// movups-xmm-xmm-semantics


// vrcpps-xmm-xmm

  rule <k>
    execinstr (vrcpps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( approx_reciprocal_single(extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( approx_reciprocal_single(extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( approx_reciprocal_single(extractMInt( getParentValue(R1, RSMap), 192, 224)), approx_reciprocal_single(extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vrcpps-xmm-xmm-semantics


// vmovupd-xmm-xmm

  rule <k>
    execinstr (vmovupd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovupd-xmm-xmm-semantics


// rclw-r16-one

  rule <k>
    execinstr (rclw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)), mi(17, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 17))

"CF" |-> extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)), mi(17, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 0, 1)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R2, RSMap), 48, 49), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)), mi(17, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 48, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// rclw-r16-one-semantics


// cvtss2sd-xmm-xmm

  rule <k>
    execinstr (cvtss2sd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 192), cvt_single_to_double(extractMInt( getParentValue(R1, RSMap), 224, 256)))
)

    </regstate>


// cvtss2sd-xmm-xmm-semantics


// vfnmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64)), concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128)), concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256)))))
)

    </regstate>


// vfnmsub231pd-ymm-ymm-ymm-semantics


// shlxq-r64-r64-r64

  rule <k>
    execinstr (shlxq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> extractMInt( shlMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), mi(8, 63))))), 1, 65)
)

    </regstate>


// shlxq-r64-r64-r64-semantics


// movzbl-r32-rh

  rule <k>
    execinstr (movzbl R1:Rh, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(56, 0), extractMInt( getParentValue(R1, RSMap), 48, 56))
)

    </regstate>


// movzbl-r32-rh-semantics


// vmovdqa-ymm-ymm

  rule <k>
    execinstr (vmovdqa R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>


// vmovdqa-ymm-ymm-semantics


// vfnmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64)), concatenateMInt( vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128)), concatenateMInt( vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192)), vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256)))))
)

    </regstate>


// vfnmadd213pd-ymm-ymm-ymm-semantics


// vfnmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224)), vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256)))))))))
)

    </regstate>


// vfnmsub213ps-ymm-ymm-ymm-semantics


// movzbw-r16-r8

  rule <k>
    execinstr (movzbw R1:R8, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( mi(8, 0), extractMInt( getParentValue(R1, RSMap), 56, 64)))
)

    </regstate>


// movzbw-r16-r8-semantics


// setae-r8

  rule <k>
    execinstr (setae R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then mi(8, 1) #else mi(8, 0) #fi), mi(8, 0)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// setae-r8-semantics


// vmovdqu-ymm-ymm

  rule <k>
    execinstr (vmovdqu R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>


// vmovdqu-ymm-ymm-semantics


// vmovq-r64-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( getParentValue(R1, RSMap), 192, 256)
)

    </regstate>


// vmovq-r64-xmm-semantics


// setb-r8

  rule <k>
    execinstr (setb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// setb-r8-semantics


// movaps-xmm-xmm

  rule <k>
    execinstr (movaps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// movaps-xmm-xmm-semantics


// vfmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfmadd132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64)), concatenateMInt( vfmadd132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128)), concatenateMInt( vfmadd132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192)), vfmadd132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256)))))
)

    </regstate>


// vfmadd213pd-ymm-ymm-ymm-semantics


// movd-r32-xmm

  rule <k>
    execinstr (movd R1:Xmm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 224, 256))
)

    </regstate>


// movd-r32-xmm-semantics


// rcll-r32-one

  rule <k>
    execinstr (rcll $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)), mi(33, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 33))

"CF" |-> extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)), mi(33, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 0, 1)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R2, RSMap), 32, 33), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)), mi(33, 1)) #else concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64)) #fi), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// rcll-r32-one-semantics


// vcvtdq2ps-xmm-xmm

  rule <k>
    execinstr (vcvtdq2ps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( cvt_int32_to_single(extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( cvt_int32_to_single(extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( cvt_int32_to_single(extractMInt( getParentValue(R1, RSMap), 192, 224)), cvt_int32_to_single(extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vcvtdq2ps-xmm-xmm-semantics


// vfmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64)), vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128))), concatenateMInt( vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>


// vfmsub231pd-ymm-ymm-ymm-semantics


// movdqa-xmm-xmm

  rule <k>
    execinstr (movdqa R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// movdqa-xmm-xmm-semantics


// stc

  rule <k>
    execinstr (stc  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 1)
)

    </regstate>


// stc-semantics


// vmovaps-xmm-xmm

  rule <k>
    execinstr (vmovaps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovaps-xmm-xmm-semantics


// setnp-r8

  rule <k>
    execinstr (setnp R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt( (#ifMInt eqMInt(getFlag("PF", RSMap), mi(1,1)) #then mi(16, 1) #else mi(16, 0) #fi), mi(16, 0)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// setnp-r8-semantics


// rclq-r64-one

  rule <k>
    execinstr (rclq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), mi(65, 1)) #else concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)) #fi), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 65)

"CF" |-> extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), mi(65, 1)) #else concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)) #fi), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 0, 1)

"OF" |-> (#ifMInt ((eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1))) andBool (notBool (eqMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), mi(1, 1)) ==Bool eqMInt( extractMInt( addMInt( (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then addMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), mi(65, 1)) #else concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)) #fi), concatenateMInt( mi(1, 0), getParentValue(R2, RSMap))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// rclq-r64-one-semantics


// seto-r8

  rule <k>
    execinstr (seto R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("OF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// seto-r8-semantics


// vfmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32)), vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64))), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224)), vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256))))))))
)

    </regstate>


// vfmadd213ps-ymm-ymm-ymm-semantics


// vfmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32)), vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64))), concatenateMInt( concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96)), vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128))), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), vfmadd132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256)))))))
)

    </regstate>


// vfmadd231ps-ymm-ymm-ymm-semantics


// vxorps-xmm-xmm-xmm

  rule <k>
    execinstr (vxorps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R2, RSMap), 128, 192)), xorMInt( extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R2, RSMap), 192, 256))))
)

    </regstate>


// vxorps-xmm-xmm-xmm-semantics


// cbtw

  rule <k>
    execinstr (cbtw  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> concatenateMInt( extractMInt( getParentValue(%rax, RSMap), 0, 48), extractMInt( mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 56, 64))), 48, 64))
)

    </regstate>


// cbtw-semantics


// vmovups-xmm-xmm

  rule <k>
    execinstr (vmovups R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovups-xmm-xmm-semantics


// vpmovzxdq-xmm-xmm

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 192, 224)), concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 224, 256))))
)

    </regstate>


// vpmovzxdq-xmm-xmm-semantics


// sete-r8

  rule <k>
    execinstr (sete R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// sete-r8-semantics


// vfnmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32)), vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64))), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224)), vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256))))))))
)

    </regstate>


// vfnmadd213ps-ymm-ymm-ymm-semantics


// movw-r16-r16

  rule <k>
    execinstr (movw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( getParentValue(R1, RSMap), 48, 64))
)

    </regstate>


// movw-r16-r16-semantics


// vfnmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64)), concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128)), concatenateMInt( vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192)), vfnmsub132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256)))))
)

    </regstate>


// vfnmsub213pd-ymm-ymm-ymm-semantics


// vfnmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96)), vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128))))), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), vfnmadd132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vfnmadd231ps-ymm-ymm-ymm-semantics


// setnp-rh

  rule <k>
    execinstr (setnp R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt( (#ifMInt eqMInt(getFlag("PF", RSMap), mi(1,1)) #then mi(16, 1) #else mi(16, 0) #fi), mi(16, 0)) #then concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 1)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #else concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 0)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #fi)
)

    </regstate>


// setnp-rh-semantics


// movddup-xmm-xmm

  rule <k>
    execinstr (movddup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256)))
)

    </regstate>


// movddup-xmm-xmm-semantics


// incl-r32

  rule <k>
    execinstr (incl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( mi(32, 0), extractMInt( addMInt( mi(33, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))), 1, 33))

"PF" |-> (#ifMInt ((countOnes(extractMInt( addMInt( mi(33, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))), 25, 33), 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)

"AF" |-> extractMInt( addMInt( mi(5, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 60, 64))), 0, 1)

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( mi(33, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( mi(33, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))), 1, 2)

"OF" |-> (#ifMInt ((false ==Bool eqMInt( extractMInt( getParentValue(R1, RSMap), 32, 33), mi(1, 1))) andBool (notBool (false ==Bool eqMInt( extractMInt( addMInt( mi(33, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// incl-r32-semantics


// xchgw-r16-r16

  rule <k>
    execinstr (xchgw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), extractMInt( getParentValue(R2, RSMap), 48, 64))

convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( getParentValue(R1, RSMap), 48, 64))
)

    </regstate>


// xchgw-r16-r16-semantics


// xorw-r16-r16

  rule <k>
    execinstr (xorw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), xorMInt( extractMInt( getParentValue(R1, RSMap), 48, 64), extractMInt( getParentValue(R2, RSMap), 48, 64)))

"CF" |-> mi(1, 0)

"PF" |-> (#ifMInt ((countOnes(xorMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), extractMInt( getParentValue(R2, RSMap), 56, 64)), 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)

"AF" |-> (undef)

"ZF" |-> (#ifMInt eqMInt( xorMInt( extractMInt( getParentValue(R1, RSMap), 48, 64), extractMInt( getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), extractMInt( getParentValue(R2, RSMap), 48, 49))

"OF" |-> mi(1, 0)
)

    </regstate>


// xorw-r16-r16-semantics


// vpmovsxdq-xmm-xmm

  rule <k>
    execinstr (vpmovsxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 224, 256)))))
)

    </regstate>


// vpmovsxdq-xmm-xmm-semantics


// movdqu-xmm-xmm

  rule <k>
    execinstr (movdqu R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// movdqu-xmm-xmm-semantics


// xchgq-r64-r64

  rule <k>
    execinstr (xchgq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> getParentValue(R2, RSMap)

convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>


// xchgq-r64-r64-semantics


// vmulps-xmm-xmm-xmm

  rule <k>
    execinstr (vmulps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( mul_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( mul_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( mul_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), mul_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vmulps-xmm-xmm-xmm-semantics


// vpunpcklqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpcklqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R2, RSMap), 192, 256)))
)

    </regstate>


// vpunpcklqdq-xmm-xmm-xmm-semantics


// vmovhlps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovhlps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)))
)

    </regstate>


// vmovhlps-xmm-xmm-xmm-semantics


// nop

  rule <k>
    execinstr (nop  .Operands) => .
  ...</k>


// nop-semantics


// vcvtpd2ps-xmm-xmm

  rule <k>
    execinstr (vcvtpd2ps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(192, 0), concatenateMInt( cvt_double_to_single(extractMInt( getParentValue(R1, RSMap), 128, 192)), cvt_double_to_single(extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>


// vcvtpd2ps-xmm-xmm-semantics


// vmovapd-xmm-xmm

  rule <k>
    execinstr (vmovapd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovapd-xmm-xmm-semantics


// setbe-r8

  rule <k>
    execinstr (setbe R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi) #else (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi) #fi)
)

    </regstate>


// setbe-r8-semantics


// sets-r8

  rule <k>
    execinstr (sets R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("SF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// sets-r8-semantics


// vfnmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64)), vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128))), concatenateMInt( vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), vfnmadd132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>


// vfnmadd231pd-ymm-ymm-ymm-semantics


// cmovzq-r64-r64

  rule <k>
    execinstr (cmovzq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then getParentValue(R1, RSMap) #else getParentValue(R2, RSMap) #fi)
)

    </regstate>


// cmovzq-r64-r64-semantics


// vorpd-xmm-xmm-xmm

  rule <k>
    execinstr (vorpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( orMInt( extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), orMInt( extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>


// vorpd-xmm-xmm-xmm-semantics


// xchgl-r32-r32

  rule <k>
    execinstr (xchgl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( mi(32, 0), extractMInt( getParentValue(R2, RSMap), 32, 64))

convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( getParentValue(R1, RSMap), 32, 64))
)

    </regstate>


// xchgl-r32-r32-semantics


// setno-rh

  rule <k>
    execinstr (setno R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt( (#ifMInt eqMInt(getFlag("OF", RSMap), mi(1,1)) #then mi(32, 1) #else mi(32, 0) #fi), mi(32, 0)) #then concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 1)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #else concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 0)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #fi)
)

    </regstate>


// setno-rh-semantics


// cmovzw-r16-r16

  rule <k>
    execinstr (cmovzw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), extractMInt( getParentValue(R1, RSMap), 48, 64)) #else getParentValue(R2, RSMap) #fi)
)

    </regstate>


// cmovzw-r16-r16-semantics


// nopl-r32

  rule <k>
    execinstr (nopl R1:R32,  .Operands) => .
  ...</k>


// nopl-r32-semantics


// setz-r8

  rule <k>
    execinstr (setz R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("ZF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// setz-r8-semantics


// movzbw-r16-rh

  rule <k>
    execinstr (movzbw R1:Rh, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 48), concatenateMInt( mi(8, 0), extractMInt( getParentValue(R1, RSMap), 48, 56)))
)

    </regstate>


// movzbw-r16-rh-semantics


// vmovdqu-xmm-xmm

  rule <k>
    execinstr (vmovdqu R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovdqu-xmm-xmm-semantics


// nopw-r16

  rule <k>
    execinstr (nopw R1:R16,  .Operands) => .
  ...</k>


// nopw-r16-semantics


// shlq-r64-cl

  rule <k>
    execinstr (shlq %cl, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> extractMInt( shlMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63))))), 1, 65)

"CF" |-> (undef)

"PF" |-> (#ifMInt (((notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0))) andBool eqMInt( getParity(extractMInt( shlMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63))))), 57, 65)), mi(1, 1))) orBool ((notBool (notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)))) andBool eqMInt(getFlag("PF", RSMap), mi(1,1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt (((notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0))) andBool eqMInt( extractMInt( shlMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63))))), 1, 65), mi(64, 0))) orBool ((notBool (notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)))) andBool eqMInt(getFlag("ZF", RSMap), mi(1,1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> (#ifMInt (((notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0))) andBool eqMInt( extractMInt( shlMInt( concatenateMInt( mi(1, 0), getParentValue(R2, RSMap)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63))))), 1, 2), mi(1, 1))) orBool ((notBool (notBool eqMInt( andMInt( extractMInt( getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)))) andBool eqMInt(getFlag("SF", RSMap), mi(1,1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"OF" |-> (undef)
)

    </regstate>


// shlq-r64-cl-semantics


// decb-r8

  rule <k>
    execinstr (decb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), extractMInt( addMInt( mi(9, 255), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))), 1, 9))

"PF" |-> (#ifMInt ((countOnes(extractMInt( addMInt( mi(9, 255), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))), 1, 9), 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)

"AF" |-> extractMInt( addMInt( mi(5, 15), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 60, 64))), 0, 1)

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( mi(9, 255), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( mi(9, 255), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))), 1, 2)

"OF" |-> (#ifMInt ((true ==Bool eqMInt( extractMInt( getParentValue(R1, RSMap), 56, 57), mi(1, 1))) andBool (notBool (true ==Bool eqMInt( extractMInt( addMInt( mi(9, 255), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 56, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// decb-r8-semantics


// sarxq-r64-r64-r64

  rule <k>
    execinstr (sarxq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> extractMInt( ashrMInt( concatenateMInt( getParentValue(R2, RSMap), mi(1, 0)), uvalueMInt(concatenateMInt( mi(57, 0), andMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), mi(8, 63))))), 0, 64)
)

    </regstate>


// sarxq-r64-r64-r64-semantics


// vfmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 0, 64), extractMInt( getParentValue(R1, RSMap), 0, 64), extractMInt( getParentValue(R3, RSMap), 0, 64)), concatenateMInt( vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 64, 128), extractMInt( getParentValue(R1, RSMap), 64, 128), extractMInt( getParentValue(R3, RSMap), 64, 128)), concatenateMInt( vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R3, RSMap), 128, 192)), vfmsub132_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R3, RSMap), 192, 256)))))
)

    </regstate>


// vfmsub213pd-ymm-ymm-ymm-semantics


// setp-r8

  rule <k>
    execinstr (setp R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("PF", RSMap), mi(1,1)) #then concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 1)) #else concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 56), mi(8, 0)) #fi)
)

    </regstate>


// setp-r8-semantics


// vmovdqa-xmm-xmm

  rule <k>
    execinstr (vmovdqa R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// vmovdqa-xmm-xmm-semantics


// setc-rh

  rule <k>
    execinstr (setc R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (#ifMInt eqMInt(getFlag("CF", RSMap), mi(1,1)) #then concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 1)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #else concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), mi(8, 0)), extractMInt( getParentValue(R1, RSMap), 56, 64)) #fi)
)

    </regstate>


// setc-rh-semantics


// cltq

  rule <k>
    execinstr (cltq  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"RAX" |-> mi(64, svalueMInt(extractMInt( getParentValue(%rax, RSMap), 32, 64)))
)

    </regstate>


// cltq-semantics


// vaddpd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( add_double(extractMInt( getParentValue(R2, RSMap), 128, 192), extractMInt( getParentValue(R1, RSMap), 128, 192)), add_double(extractMInt( getParentValue(R2, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256))))
)

    </regstate>


// vaddpd-xmm-xmm-xmm-semantics


// vmovupd-ymm-ymm

  rule <k>
    execinstr (vmovupd R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> getParentValue(R1, RSMap)
)

    </regstate>


// vmovupd-ymm-ymm-semantics


// movzwl-r32-r16

  rule <k>
    execinstr (movzwl R1:R16, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(48, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))
)

    </regstate>


// movzwl-r32-r16-semantics


// andnq-r64-r64-r64

  rule <k>
    execinstr (andnq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> xorMInt( getParentValue(R2, RSMap), orMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap)))

"CF" |-> mi(1, 0)

"PF" |-> (undef)

"AF" |-> (undef)

"ZF" |-> (#ifMInt eqMInt( xorMInt( getParentValue(R2, RSMap), orMInt( getParentValue(R2, RSMap), getParentValue(R1, RSMap))), mi(64, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> xorMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), orMInt( extractMInt( getParentValue(R2, RSMap), 0, 1), extractMInt( getParentValue(R1, RSMap), 0, 1)))

"OF" |-> mi(1, 0)
)

    </regstate>


// andnq-r64-r64-r64-semantics


// vsqrtps-xmm-xmm

  rule <k>
    execinstr (vsqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( sqrt_single(extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( sqrt_single(extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( sqrt_single(extractMInt( getParentValue(R1, RSMap), 192, 224)), sqrt_single(extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vsqrtps-xmm-xmm-semantics


// vmovq-xmm-r64

  rule <k>
    execinstr (vmovq R1:R64, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(192, 0), xorMInt( getParentValue(R1, RSMap), mi(64, 0)))
)

    </regstate>


// vmovq-xmm-r64-semantics


// vcvtps2pd-xmm-xmm

  rule <k>
    execinstr (vcvtps2pd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( cvt_single_to_double(extractMInt( getParentValue(R1, RSMap), 192, 224)), cvt_single_to_double(extractMInt( getParentValue(R1, RSMap), 224, 256))))
)

    </regstate>


// vcvtps2pd-xmm-xmm-semantics


// vpunpckhqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R1, RSMap), 128, 192), extractMInt( getParentValue(R2, RSMap), 128, 192)))
)

    </regstate>


// vpunpckhqdq-xmm-xmm-xmm-semantics


// vpbroadcastq-xmm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( extractMInt( getParentValue(R1, RSMap), 192, 256), extractMInt( getParentValue(R1, RSMap), 192, 256)))
)

    </regstate>


// vpbroadcastq-xmm-xmm-semantics


// vpmovzxwq-xmm-xmm

  rule <k>
    execinstr (vpmovzxwq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(128, 0), concatenateMInt( concatenateMInt( mi(48, 0), extractMInt( getParentValue(R1, RSMap), 224, 240)), concatenateMInt( mi(48, 0), extractMInt( getParentValue(R1, RSMap), 240, 256))))
)

    </regstate>


// vpmovzxwq-xmm-xmm-semantics


// incw-r16

  rule <k>
    execinstr (incw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> concatenateMInt( extractMInt( getParentValue(R1, RSMap), 0, 48), extractMInt( addMInt( mi(17, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))), 1, 17))

"PF" |-> (#ifMInt ((countOnes(extractMInt( addMInt( mi(17, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))), 9, 17), 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)

"AF" |-> mi(1, 0)

"ZF" |-> (#ifMInt eqMInt( extractMInt( addMInt( mi(17, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))), 1, 17), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( mi(17, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))), 1, 2)

"OF" |-> (#ifMInt ((false ==Bool eqMInt( extractMInt( getParentValue(R1, RSMap), 48, 49), mi(1, 1))) andBool (notBool (false ==Bool eqMInt( extractMInt( addMInt( mi(17, 1), concatenateMInt( mi(1, 0), extractMInt( getParentValue(R1, RSMap), 48, 64))), 1, 2), mi(1, 1))))) #then mi(1, 1) #else mi(1, 0) #fi)
)

    </regstate>


// incw-r16-semantics


// movapd-xmm-xmm

  rule <k>
    execinstr (movapd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), extractMInt( getParentValue(R1, RSMap), 128, 256))
)

    </regstate>


// movapd-xmm-xmm-semantics


// vfnmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96)), vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128))))), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), vfnmsub132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256))))))
)

    </regstate>


// vfnmsub231ps-ymm-ymm-ymm-semantics


// movsbl-r32-r8

  rule <k>
    execinstr (movsbl R1:R8, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( mi(32, 0), extractMInt( mi(64, svalueMInt(extractMInt( getParentValue(R1, RSMap), 56, 64))), 32, 64))
)

    </regstate>


// movsbl-r32-r8-semantics


// vfmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32)), vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64))), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224)), vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256))))))))
)

    </regstate>


// vfmsub213ps-ymm-ymm-ymm-semantics


// vfmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 0, 32), extractMInt( getParentValue(R3, RSMap), 0, 32), extractMInt( getParentValue(R1, RSMap), 0, 32)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 32, 64), extractMInt( getParentValue(R3, RSMap), 32, 64), extractMInt( getParentValue(R1, RSMap), 32, 64)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 64, 96), extractMInt( getParentValue(R3, RSMap), 64, 96), extractMInt( getParentValue(R1, RSMap), 64, 96)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 96, 128), extractMInt( getParentValue(R3, RSMap), 96, 128), extractMInt( getParentValue(R1, RSMap), 96, 128)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 128, 160), extractMInt( getParentValue(R3, RSMap), 128, 160), extractMInt( getParentValue(R1, RSMap), 128, 160)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 160, 192), extractMInt( getParentValue(R3, RSMap), 160, 192), extractMInt( getParentValue(R1, RSMap), 160, 192)), concatenateMInt( vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 192, 224), extractMInt( getParentValue(R3, RSMap), 192, 224), extractMInt( getParentValue(R1, RSMap), 192, 224)), vfmsub132_single(extractMInt( getParentValue(R2, RSMap), 224, 256), extractMInt( getParentValue(R3, RSMap), 224, 256), extractMInt( getParentValue(R1, RSMap), 224, 256)))))))))
)

    </regstate>


// vfmsub231ps-ymm-ymm-ymm-semantics


// clc

  rule <k>
    execinstr (clc  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
"CF" |-> mi(1, 0)
)

    </regstate>


// clc-semantics



/*@
  Push R: 
  1. ValTostore = R
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
// pushq-imm32

  rule <k> 
    execinstr (pushq IMM_32:Imm, .Operands) =>
      storeToMemory(
          handleImmediateWithSignExtend(IMM_32, 32, 64), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>


// movl-r32-r32

  rule <k>
    execinstr (movl I:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), handleImmediateWithSignExtend(I, 32, 32))) )

    </regstate>




// addl-r32-imm32

  rule <k> 
    execinstr(addl I:Imm , R:R32 , .Operands) => 
      execinstr(addl  R, handleImmediateWithSignExtend(I, 32, 32), getRegisterValue(R, RSMap), 
            extractMask(
              addMInt(
                concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32)), 
                concatenateMInt(mi(1, 0), getRegisterValue(R, RSMap))
              ), 32, 0 ),
            .Operands) 
  ...</k>
  <regstate> RSMap </regstate>

  rule
  <k>
    execinstr(addl  ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Operands )) =>
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, mi(32, 0)) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k> 



// subq-r64-imm64

  rule <k>
    execinstr (subq I:Imm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64)), getParentValue(R2, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 64, 64), 0, 1)), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 64, 64), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), handleImmediateWithSignExtend(I, 64, 64))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// andl-r32-imm

  rule <k>
    execinstr (andl I:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(handleImmediateWithSignExtend(I, 32, 32), 0, 1), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(handleImmediateWithSignExtend(I, 32, 32), 0, 1)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(handleImmediateWithSignExtend(I, 32, 32), 24, 32), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(handleImmediateWithSignExtend(I, 32, 32), 24, 32)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), xorMInt(handleImmediateWithSignExtend(I, 32, 32), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(I, 32, 32))))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(handleImmediateWithSignExtend(I, 32, 32), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), handleImmediateWithSignExtend(I, 32, 32)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>



// cmpl-r32-imm32

  rule <k>
    execinstr (cmpl I:Imm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32)), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 32, 32),0, 1)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 32, 32),0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movl-m32-r32

  context execinstr(movl:Opcode (_:R32, HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (movl R1:R32,  memOffset( MemOff:MInt ):MemOffset, .Operands) => storeToMemory(getRegisterValue(R1, RSMap), MemOff, 32)
  ...</k>
  <regstate> RSMap </regstate>



/*@
  Push (R): 
  1. ValTostore = (R)
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 2
*/  
// pushw-m16

  context execinstr(pushw:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (pushw memOffset ( MemOff:MInt ):MemOffset, .Operands) =>
      loadFromMemory(MemOff, 16) ~> execinstr (pushw memOffset ( MemOff ), .Operands)
  ...</k>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (pushw memOffset ( MemOff:MInt ):MemOffset, .Operands)
  =>
      storeToMemory(MemVal, 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 2)), 
          16)  ~>  
      decRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>


// incl-m32


  context execinstr(incl:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (incl memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (incl memOffset( MemOff), .Operands)
  ...</k>


    rule <k>
      memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (incl memOffset( MemOff), .Operands)
      =>  storeToMemory(
        extractMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33)), 32, 64), MemOff, 32)                         
    ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(32, 1), MemVal), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(MemVal, 0, 1))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), MemVal)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movb-r8-m8

  context execinstr(movb:Opcode (HOLE:Mem, _:R8, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (movb memOffset( MemOff:MInt):MemOffset ,  R1:R8, .Operands) => 
      setRegisterValue( loadFromMemory( MemOff, 8), R1)                         
  ...</k>
  <regstate> RSMap </regstate>


// cmpl-r32-m32

  context execinstr(cmpl:Opcode ( HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (cmpl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (cmpl memOffset( MemOff), R2:R32,  .Operands)
  ...</k>

  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (cmpl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => .
  ...</k>
    <regstate>       
      RSMap:Map => updateMap(RSMap,
       "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )
      
       "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )
      
       "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), MemVal), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )
      
       "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )
      )
    </regstate>


// movq-m64-imm64

  context execinstr(movq:Opcode (_:Imm, HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr(movq I1_64:Imm, memOffset( MemOff:MInt ):MemOffset, .Operands) =>
      storeToMemory(handleImmediateWithSignExtend(I1_64, 64, 64 ), MemOff, 64)
  ...</k>
  


// movq-m64-r64

  context execinstr(movq:Opcode (_:R64, HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (movq R1:R64,  memOffset( MemOff:MInt ):MemOffset, .Operands) => 
      storeToMemory(getRegisterValue(R1, RSMap), MemOff, 64)
  ...</k>
  <regstate> RSMap </regstate>


/*@
  Pop (R): 
  1. RSP = RSP + 8
  2. ValTostore = *(RSP - 8)
  3. *R =  ValTostore
*/  
// popq-m64


  rule <k> 
    execinstr (popq M64:Mem, .Operands) =>
      incRSPInBytes(8) ~> 
      loadFromMemory(getRegisterValue(%rsp, RSMap), 64) ~>
      execinstr (popq M64, .Operands)
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (popq M64:Mem, .Operands) =>
      evaluateMemOffset(M64) ~> execinstr (popq M64:Mem, MemVal, .Operands)                          
  ...</k>

  rule <k> 
    evaluateMemOffset( memOffset(MemOff:MInt):MemOffset ) ~> execinstr (popq _:Mem, MemVal:MInt, .Operands) => storeToMemory(MemVal, MemOff, 64) 
  ...</k>


// cmpl-m32-imm32

  context execinstr(cmpl:Opcode ( _:Imm, HOLE:Mem, .Operands):Operands) [result(MemOffset)]


  rule <k>
    execinstr (cmpl I:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (cmpl I:Imm, memOffset( MemOff),  .Operands)
  ...</k>

         
  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (cmpl I:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) 
      => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32)), MemVal), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 32, 32), 0, 1)), extractMInt(MemVal, 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(handleImmediateWithSignExtend(I, 32, 32), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), handleImmediateWithSignExtend(I, 32, 32))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmpl-r32-r32-semantics

/*
TargetInstr:
cmpl %ecx, %ebx
RWSet:
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

Circuit:
circuit:subl %ecx, %ebx  #  1     0    2      OPC=subl_r32_r32
BVF:
WARNING: No live out values provided, assuming { }
WARNING: No def in values provided; assuming { %mxcsr::rc[0] }
Target

cmpl %ecx, %ebx

  maybe read:      { %ecx %ebx }
  must read:       { %ecx %ebx }
  maybe write:     { %cf %pf %af %zf %sf %of }
  must write:      { %cf %pf %af %zf %sf %of }
  maybe undef:     { }
  must undef:      { }
  required flags:  { }

Circuits:

%cf    : (((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[32:32] = 0x1₁ ? 0x0₉ : 0xff₉) + ((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[32:32] = 0x1₁ ? 0x0₉ : 0xff₉))[8:8] = 0x1₁
%pf    : !((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[0:0] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[1:1] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[2:2] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[3:3] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[4:4] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[5:5] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[6:6] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[7:7] = 0x1₁)
%af    : (0x0₁ ∘ (%rcx[3:0] ⊕ 0xf₄) + 0x0₁ ∘ %rbx[3:0])[4:4] = 0x1₁
%zf    : (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:0] = 0x0₃₂
%sf    : (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:31] = 0x1₁
%of    : ((%rcx[31:31] ⊕ 0x1₁) = 0x1₁ ↔ %rbx[31:31] = 0x1₁) ∧ !((%rcx[31:31] ⊕ 0x1₁) = 0x1₁ ↔ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:31] = 0x1₁)

sigfpe  : sigfpe
sigbus  : sigbus
sigsegv : sigsegv

*/


/*@
  Push (R): 
  1. ValTostore = *(R)
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
// pushq-m64

  context execinstr(pushq:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr (pushq memOffset ( MemOff:MInt ):MemOffset, .Operands) =>
      loadFromMemory(MemOff, 64) ~> execinstr (pushq memOffset ( MemOff ), .Operands)
  ...</k>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (pushq memOffset ( MemOff:MInt ):MemOffset, .Operands)
  =>
      storeToMemory(MemVal, 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>


/*@
  Pop (R): 
  1. RSP = RSP + 2
  2. ValTostore = *(RSP - 2)
  3. *R =  ValTostore
*/  
// popq-m64


  rule <k> 
    execinstr (popw M16:Mem, .Operands) =>
      incRSPInBytes(2) ~> 
      loadFromMemory(getRegisterValue(%rsp, RSMap), 16) ~>
      execinstr (popw M16, .Operands)
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (popw M16:Mem, .Operands) =>
      evaluateMemOffset(M16) ~> execinstr (popw M16:Mem, MemVal, .Operands)                          
  ...</k>

  rule <k> 
    evaluateMemOffset( memOffset(MemOff:MInt):MemOffset ) ~> execinstr (popw _:Mem, MemVal:MInt, .Operands) => storeToMemory(MemVal, MemOff, 16) 
  ...</k>




// movq-m64-label

  rule <k> 
    execinstr (movq:Opcode  $ (LabelId):X86Id,  M:Mem, .Operands) => 
      execinstr (movq $ uvalueMInt(Target),  M:Mem, .Operands)    
  ...</k>
    <functargets>...  LabelId:X86Id |-> Target:MInt  ...</functargets>


// cmpl-m32-r32

  context execinstr(cmpl:Opcode (R1:R32,  HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (cmpl R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (cmpl R1:R32, memOffset( MemOff), .Operands)
  ...</k>


  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> 
      execinstr (cmpl R1:R32, memOffset( MemOff:MInt):MemOffset, .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64)), MemVal), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(MemVal, 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), MemVal)), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmpl-r32-r32-semantics

/*
TargetInstr:
cmpl %ecx, %ebx
RWSet:
maybe read:{ %ecx %ebx }
must read:{ %ecx %ebx }
maybe write:{ %cf %pf %af %zf %sf %of }
must write:{ %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ }

Circuit:
circuit:subl %ecx, %ebx  #  1     0    2      OPC=subl_r32_r32
BVF:
WARNING: No live out values provided, assuming { }
WARNING: No def in values provided; assuming { %mxcsr::rc[0] }
Target

cmpl %ecx, %ebx

  maybe read:      { %ecx %ebx }
  must read:       { %ecx %ebx }
  maybe write:     { %cf %pf %af %zf %sf %of }
  must write:      { %cf %pf %af %zf %sf %of }
  maybe undef:     { }
  must undef:      { }
  required flags:  { }

Circuits:

%cf    : (((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[32:32] = 0x1₁ ? 0x0₉ : 0xff₉) + ((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[32:32] = 0x1₁ ? 0x0₉ : 0xff₉))[8:8] = 0x1₁
%pf    : !((0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[0:0] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[1:1] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[2:2] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[3:3] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[4:4] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[5:5] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[6:6] = 0x1₁ ⊕ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[7:7] = 0x1₁)
%af    : (0x0₁ ∘ (%rcx[3:0] ⊕ 0xf₄) + 0x0₁ ∘ %rbx[3:0])[4:4] = 0x1₁
%zf    : (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:0] = 0x0₃₂
%sf    : (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:31] = 0x1₁
%of    : ((%rcx[31:31] ⊕ 0x1₁) = 0x1₁ ↔ %rbx[31:31] = 0x1₁) ∧ !((%rcx[31:31] ⊕ 0x1₁) = 0x1₁ ↔ (0x0₁ ∘ (%rcx[31:0] ⊕ 0xffffffff₃₂) + 0x1₃₃ + 0x0₁ ∘ %rbx[31:0])[31:31] = 0x1₁)

sigfpe  : sigfpe
sigbus  : sigbus
sigsegv : sigsegv

*/

// movl-r32-m32

  context execinstr(movl:Opcode ( HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]
  rule <k>
    execinstr (movl memOffset( MemOff:MInt):MemOffset, R1:R32, .Operands) => 
      setRegisterValue( loadFromMemory( MemOff, 32), R1)                                   
  ...</k>
    <regstate> RSMap:Map </regstate>


// leaq-r64-m64

  context execinstr(leaq:Opcode (HOLE:Mem, _:R64, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (leaq memOffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( MemOff, R2)
  ...</k>


// movl-m32-imm32

  context execinstr(movl:Opcode (_:Imm, HOLE:Mem, .Operands):Operands) [result(MemOffset)]
  rule <k> 
    execinstr(movl IMM:Imm , memOffset( MemOff ):MemOffset , .Operands) => storeToMemory(handleImmediateWithSignExtend(IMM, 32, 32), MemOff,   32)
  ...</k>
  <regstate> RSMap </regstate>


// subl-r32-m32

  context execinstr(subl:Opcode ( HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (subl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (subl memOffset( MemOff), R2:R32,  .Operands)  
  ...</k>
      <regstate> RSMap:Map </regstate>

  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (subl memOffset( MemOff:MInt):MemOffset, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), MemVal), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(MemVal, 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), MemVal)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movq-r64-m64

  context execinstr(movq:Opcode (HOLE:Mem, _:R64, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (movq memOffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => 
      loadFromMemory(MemOff, 64)  ~> execinstr (movq memOffset( MemOff ),  R2, .Operands)
  ...</k>

  rule <k> 
   memLoadValue (MemVal:MInt) ~> execinstr (movq memOffset ( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( MemVal, R2)                         
  ...</k>
  <regstate> RSMap </regstate>


// addl-m32-imm

  context execinstr(addl:Opcode (_:Imm,  HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (addl I:Imm, memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (addl I, memOffset( MemOff), .Operands)                 
  ...</k>

  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (addl I:Imm, memOffset( MemOff:MInt):MemOffset, .Operands) => 
      storeToMemory(
          extractMInt(
            (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 1, 33)) ), 
            32, 64),
          MemOff, 32)
  ...</k>
  
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(MemVal, handleImmediateWithSignExtend(I, 32, 32)), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(MemVal, 0, 1), extractMInt(handleImmediateWithSignExtend(I, 32, 32), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(MemVal, 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), handleImmediateWithSignExtend(I, 32, 32))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>



// leaq-r32-m32

  context execinstr(leal:Opcode (HOLE:Mem, _:R32, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (leal memOffset( MemOff:MInt ):MemOffset,  R2:R32, .Operands) => .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap, 
          convToRegKeys(R2) |-> concatenateMInt(mi(32, 0), extractMInt(MemOff, 32, 64)))
    </regstate>



// movsbl-r32-m8

  context execinstr(movsbl:Opcode (HOLE:Mem, _:R32, .Operands):Operands)  [result(MemOffset)]

  rule <k> execinstr(movsbl:Opcode memOffset(MemOff:MInt):MemOffset, R2:R32, .Operands) => 
    loadFromMemory( MemOff, 8) ~> execinstr(movsbl memOffset(MemOff), R2, .Operands)
  ...</k>

  rule <k>
    memLoadValue (MemVal:MInt) ~> execinstr( movsbl memOffset(MemOff:MInt):MemOffset, R2:R32, .Operands) =>
      setRegisterValue( mi(32, svalueMInt(MemVal)), R2)
  ...</k>


// addl-m32-r32

  context execinstr(addl:Opcode (_:R32,  HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k>
    execinstr (addl R1:R32, memOffset( MemOff:MInt):MemOffset,  .Operands) => 
      loadFromMemory( MemOff, 32) ~> execinstr (addl R1, memOffset( MemOff), .Operands)                 
  ...</k>

  rule <k>
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (addl R1:R32, memOffset( MemOff:MInt):MemOffset, .Operands) => 
      storeToMemory(
          extractMInt(
            (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)) ), 
            32, 64),
          MemOff, 32)
  ...</k>
  
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(MemVal, extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(MemVal, 0, 1), extractMInt(getParentValue(R1, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(MemVal, 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), MemVal), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>



// pushw-r16

  rule <k> 
    execinstr (pushw R1:R16, .Operands) =>
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 2)),
          16) ~>    
      decRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>



// retq

  rule <k> 
    execinstr (ret .Operands) => 
    incRSPInBytes(8) ~>
    loadFromMemory(getRegisterValue(%rsp, RSMap), 64)
    ~> execinstr(ret .Operands)
  ...</k>
    <regstate> RSMap </regstate>


  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (ret .Operands) =>  .
  ...</k>
      <regstate>... "RIP" |-> ( PC => MemVal)  ...</regstate>

// jge-label

  rule <k> 
    execinstr (jge LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)

  rule <k> 
    execinstr (jge LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)



// jmpq-label

  rule <k> 
    execinstr (jmp LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>


// jl-label

  rule <k> 
    execinstr (jl LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)
                
  rule <k> 
    execinstr (jl LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


// popw-r16

  rule <k> 
    execinstr (popw R1:R16, .Operands) =>
      incRSPInBytes(2) ~>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 16), 
          R1) 
  ...</k>
  <regstate> RSMap </regstate>



// je-label

  rule <k> 
    execinstr (je LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))

  rule <k> 
    execinstr (je LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1))



// callq-m64

  context execinstr(call:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (call memOffset(MemOff:MInt):MemOffset, .Operands) => 
      loadFromMemory(MemOff, 64) ~> execinstr (call memOffset ( MemOff ), .Operands)
  ...</k>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (call memOffset(MemOff:MInt):MemOffset, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> MemVal))</regstate>



// jmpq-m64

  context execinstr(jmp:Opcode (HOLE:Mem, .Operands):Operands) [result(MemOffset)]

  rule <k> 
    execinstr (jmp memOffset(MemOff:MInt):MemOffset, .Operands) => 
      loadFromMemory(MemOff, 64) ~> execinstr (jmp memOffset ( MemOff ), .Operands)
  ...</k>

  rule <k> 
    memLoadValue(MemVal:MInt):MemLoadValue ~> execinstr (jmp memOffset(MemOff:MInt):MemOffset, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> MemVal))</regstate>



/*@
  Push R: 
  1. ValTostore = R
  2. *(RSP-8)  = ValTostore
  3. RSP = RSP - 8
*/  
// pushq-r64

  rule <k> 
    execinstr (pushq R1:R64, .Operands) =>
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)  ~>  
      decRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>



// retq

  rule <k> 
    execinstr (leave .Operands) => 
      execinstr(movq %rbp, %rsp, .Operands) ~> 
      execinstr(popq %rbp, .Operands)
  ...</k>



// callq-label

  rule <k> 
    execinstr (call LabelId:X86Id, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>

// jle-label

  rule <k> 
    execinstr (jle LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) 
                    orBool 
                  (notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt))

  rule <k> 
    execinstr (jle LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 1)) 
                    andBool 
                  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)


/*@
  Pop R: 
  1. RSP = RSP + 8
  2. ValTostore = *(RSP - 8)
  3. R =  ValTostore)
*/  
// popq-r64

  rule <k> 
    execinstr (popq R1:R64, .Operands) =>
      incRSPInBytes(8) ~>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 64), 
          R1) 
  ...</k>
  <regstate> RSMap </regstate>



// jne-label

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

  rule <k> 
    execinstr (jne LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0))

// jg-label

  rule <k> 
    execinstr (jg LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> Target))
      </regstate>
      <functargets>... LabelId |-> Target  ...</functargets>
        requires  eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)) 
                    andBool 
                  eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)

  rule <k> 
    execinstr (jg LabelId:X86Id, .Operands) => .
  ...</k>
      <regstate> RSMap:Map </regstate> 
        requires  notBool eqMInt({RSMap["ZF"]}:>MInt, mi(1, 0)) 
                    orBool 
                  notBool eqMInt({RSMap["SF"]}:>MInt, {RSMap["OF"]}:>MInt)




// jmpq-r64

  rule <k> 
    execinstr (jmp R1:R64, .Operands) => .
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>




// callq-r64

  rule <k> 
    execinstr (call R1:R64, .Operands) => 
      storeToMemory({RSMap["RIP"]}:>MInt, subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 64)  
      ~>  decRSPInBytes(8)
  ...</k>
      <regstate> RSMap => updateMap(RSMap, ("RIP" |-> getRegisterValue(R1, RSMap)))</regstate>

endmodule