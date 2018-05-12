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
    execinstr (nop  .Operands) ~> inforegisters ~> fetch => .
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
  - vcvtpd2ps_xmm_ymm (NOT IMPLEMENTED) , vcvtps2pd_ymm_xmm, doubles <-> floats

  // Not implemented
  - vcvtpd2dq_xmm_ymm, vcvtps2dq_ymm_ymm   64 doubles or 32 floats -> 32 Ints
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


// vcvt-semantics


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
  


// pushw-r16

  rule <k> 
    execinstr (pushw R1:R16, .Operands) =>
      decRSPInBytes(2) ~> 
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          getRegisterValue(%rsp, RSMap), 
          16)    
  ...</k>
  <regstate> RSMap </regstate>


// popq-r64

  rule <k> 
    execinstr (popq R1:R64, .Operands) =>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 64), 
          R1) 
      ~> incRSPInBytes(8)
  ...</k>
  <regstate> RSMap </regstate>


// popw-r16

  rule <k> 
    execinstr (popw R1:R16, .Operands) =>
      setRegisterValue(
          loadFromMemory(getRegisterValue(%rsp, RSMap), 16), 
          R1) 
      ~> incRSPInBytes(2)
  ...</k>
  <regstate> RSMap </regstate>


// pushq-r64

  rule <k> 
    execinstr (pushq R1:R64, .Operands) =>
      decRSPInBytes(8) ~> 
      storeToMemory(
          getRegisterValue(R1, RSMap), 
          subMInt(getRegisterValue(%rsp, RSMap), mi(64, 8)), 
          64)    
  ...</k>
  <regstate> RSMap </regstate>


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



// movl-m32-r32

  rule <k> 
    execinstr (movl R1:R32,  memoffset( MemOff:MInt ):MemOffset, .Operands) => storeToMemory(getRegisterValue(R1, RSMap), MemOff, 32)
  ...</k>
  <regstate> RSMap </regstate>


// movb-r8-m8

  rule <k> 
    execinstr (movb memoffset( MemOff:MInt):MemOffset ,  R2:R8, .Operands) => setRegisterValue( loadFromMemory( MemOff, 8), R2)                         
  ...</k>
  <regstate> RSMap </regstate>


// movq-m64-r64

  rule <k> 
    execinstr (movq R1:R64,  memoffset( MemOff:MInt ):MemOffset, .Operands) => storeToMemory(getRegisterValue(R1, RSMap), MemOff, 64)
  ...</k>
  <regstate> RSMap </regstate>


// movl-m32-imm32

  rule <k> 
    execinstr(movl IMM:Imm , memoffset( MemOff ):MemOffset , .Operands) => storeToMemory(handleImmediateWithSignExtend(IMM, 32, 32), MemOff,   32)
  ...</k>
  <regstate> RSMap </regstate>


// movq-r64-m64

  rule <k> 
    execinstr (movq memoffset( MemOff:MInt ):MemOffset,  R2:R64, .Operands) => setRegisterValue( loadFromMemory( MemOff, 64), R2)                         
  ...</k>
  <regstate> RSMap </regstate>


// movsbl-r32-m8
/*

  context 
    execinstr (movsbl HOLE:Mem, R2:R32,  .Operands)  

  rule <k>
    execinstr (movsbl MemOff:MInt, R2:R32,  .Operands) => execinstr( movsbl memVal(loadFromMemory(MemOff, 8)), R2:R32, .Operands)
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr( movsbl MemVal:MInt, R2:R32, .Operands) =>
      setRegisterValue( mi(32, svalueMInt(MemVal)), R2)
  ...</k>
  */


// vfnmsub231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// cmovnbel-r32-r32

  rule <k>
    execinstr (cmovnbel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// negb-rh

  rule <k>
    execinstr (negb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 10) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 10), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 10), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(17, 1)), 9, 17), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// unpckhps-xmm-xmm

  rule <k>
    execinstr (unpckhps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// vandps-xmm-xmm-xmm

  rule <k>
    execinstr (vandps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// setnb-r8

  rule <k>
    execinstr (setnb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// cmovbew-r16-r16

  rule <k>
    execinstr (cmovbew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// movzbq-r64-r8

  rule <k>
    execinstr (movzbq R1:R8, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// vunpcklps-xmm-xmm-xmm

  rule <k>
    execinstr (vunpcklps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// setns-rh

  rule <k>
    execinstr (setns R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), mi(8, 0)), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// xaddq-r64-r64

  rule <k>
    execinstr (xaddq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R1, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xaddq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 0, 1) )

  "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R1, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R1, R2)


// btl-r32-r32

  rule <k>
    execinstr (btl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt (ultMInt(andMInt(xorMInt(mi(8, 32), orMInt(mi(8, 32), extractMInt(getParentValue(R1, RSMap), 56, 64))), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(lshrMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), uvalueMInt(andMInt(xorMInt(mi(8, 32), orMInt(mi(8, 32), extractMInt(getParentValue(R1, RSMap), 56, 64))), mi(8, 63)))), 63, 64) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (undef)

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (undef)


)

    </regstate>


// sqrtsd-xmm-xmm

  rule <k>
    execinstr (sqrtsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64)) )


)

    </regstate>


// rclw-r16-one

  rule <k>
    execinstr (rclw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), getFlag("CF", RSMap))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), getFlag("CF", RSMap))), 1, 17)) )


)

    </regstate>


// andps-xmm-xmm

  rule <k>
    execinstr (andps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// vpunpckhwd-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhwd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 144, 160), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 128, 144)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 144, 160)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 176, 192), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 160, 176)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 176, 192)))))) )


)

    </regstate>


// cmovel-r32-r32

  rule <k>
    execinstr (cmovel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// sarb-rh-one

  rule <k>
    execinstr (sarb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(getParentValue(R2, RSMap), 55, 56) )

 "SF" |-> (extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 48, 64))))), 1), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 48, 64))))), 1), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 48, 64))))), 1), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 48, 64))))), 1), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// xorps-xmm-xmm

  rule <k>
    execinstr (xorps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// pmovsxwd-xmm-xmm

  rule <k>
    execinstr (pmovsxwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 49, 65))))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 65))) )


)

    </regstate>


// addw-r16-r16

  rule <k>
    execinstr (addw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovgl-r32-r32

  rule <k>
    execinstr (cmovgl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmovbel-r32-r32

  rule <k>
    execinstr (cmovbel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vmovhlps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovhlps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))) )


)

    </regstate>


// vfmsubadd132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R2, RSMap), 224, 232)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R2, RSMap), 232, 240)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R2, RSMap), 240, 248)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R2, RSMap), 248, 256)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) )  ) , 32)))) )


)

    </regstate>


// movss-xmm-xmm

  rule <k>
    execinstr (movss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// vfnmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64)))) )


)

    </regstate>


// cmovnpl-r32-r32

  rule <k>
    execinstr (cmovnpl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vpbroadcastb-ymm-xmm

  rule <k>
    execinstr (vpbroadcastb R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)))), concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))))), concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)))), concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)))))) )


)

    </regstate>


// vphaddd-ymm-ymm-ymm

  rule <k>
    execinstr (vphaddd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 0, 32)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 64, 128)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 64, 96))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 32), extractMInt(getParentValue(R2, RSMap), 0, 32))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 0, 64))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 64, 96), extractMInt(getParentValue(R2, RSMap), 64, 96))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 64, 128))), 33, 65))), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 160, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 192, 224))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), 33, 65)))) )


)

    </regstate>


// andw-r16-r16

  rule <k>
    execinstr (andw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (extractMInt(mi(64, svalueMInt(concatenateMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56))), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))))))), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56))), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))) )

 "ZF" |-> ((#ifMInt (eqMInt(mi(64, svalueMInt(concatenateMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56))), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))))))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vminps-xmm-xmm-xmm

  rule <k>
    execinstr (vminps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// cmovpoq-r64-r64

  rule <k>
    execinstr (cmovpoq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vpunpcklwd-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpcklwd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 208, 224), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 208, 224)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 240, 256)))))) )


)

    </regstate>


// vhaddps-ymm-ymm-ymm

  rule <k>
    execinstr (vhaddps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8) ) , 32))), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// phaddd-xmm-xmm

  rule <k>
    execinstr (phaddd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 160, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 192, 224))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), 33, 65)))) )


)

    </regstate>


// andnpd-xmm-xmm

  rule <k>
    execinstr (andnpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vrcpps-xmm-xmm

  rule <k>
    execinstr (vrcpps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// cmovnbl-r32-r32

  rule <k>
    execinstr (cmovnbl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// shlq-r64-cl

  rule <k>
    execinstr (shlq %cl, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("CF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( extractMInt(getParentValue(R2, RSMap), 0, 1) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(addMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, -1)))), 0, 1) ) #else ( undef ) #fi)  ) #fi)  ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("SF", RSMap) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))), 0, 1) ) #else ( mi(1, 0) ) #fi)  ) #fi)  )

 "AF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("AF", RSMap) ) #else ( undef ) #fi)  )

 "PF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("PF", RSMap) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( (#ifMInt ( (  ( countOnes(extractMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( mi(1, 1) ) #fi)  ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("OF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(shlMInt(getParentValue(R2, RSMap), 1), 0, 1)) ) #else ( undef ) #fi)  ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("ZF", RSMap) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( (#ifMInt (eqMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( mi(1, 1) ) #fi)  ) #fi)    )


)

    </regstate>


// vfmaddsub132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// movups-xmm-xmm

  rule <k>
    execinstr (movups R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vpor-ymm-ymm-ymm

  rule <k>
    execinstr (vpor R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), orMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128))), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// salb-r8-one

  rule <k>
    execinstr (salb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movsbl-r32-r8

  rule <k>
    execinstr (movsbl R1:R8, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64)) )


)

    </regstate>


// cmovnbew-r16-r16

  rule <k>
    execinstr (cmovnbew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// xorw-r16-r16

  rule <k>
    execinstr (xorw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "AF" |-> (undef)

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49)) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )


)

    </regstate>


// vfmsub231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setc-r8

  rule <k>
    execinstr (setc R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// vpxor-ymm-ymm-ymm

  rule <k>
    execinstr (vpxor R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)))), xorMInt(orMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128))))), concatenateMInt(xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)))), xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))))) )


)

    </regstate>


// vpmovzxbd-ymm-xmm

  rule <k>
    execinstr (vpmovzxbd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 192, 200)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 200, 208))), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 208, 216)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 216, 224)))), concatenateMInt(concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))) )


)

    </regstate>


// adcb-rh-r8

  rule <k>
    execinstr (adcb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// subb-r8-r8

  rule <k>
    execinstr (subb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// seta-r8

  rule <k>
    execinstr (seta R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(9, 0), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), mi(17, 4)), 1, 9)) ) #fi)  )


)

    </regstate>


// cmovlew-r16-r16

  rule <k>
    execinstr (cmovlew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// setnz-r8

  rule <k>
    execinstr (setnz R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// notl-r32

  rule <k>
    execinstr (notl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (xorMInt(mi(64, 4294967295), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )


)

    </regstate>


// vpmovsxdq-ymm-xmm

  rule <k>
    execinstr (vpmovsxdq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 128, 160))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 160, 192)))), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// sete-rh

  rule <k>
    execinstr (sete R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// sbbl-r32-r32

  rule <k>
    execinstr (sbbl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vhsubpd-ymm-ymm-ymm

  rule <k>
    execinstr (vhsubpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64)))) )


)

    </regstate>


// cmovncw-r16-r16

  rule <k>
    execinstr (cmovncw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cmpl-r32-r32

  rule <k>
    execinstr (cmpl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovups-ymm-ymm

  rule <k>
    execinstr (vmovups R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// cvtsi2ssl-xmm-r32

  rule <k>
    execinstr (cvtsi2ssl R1:R32, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 8), 32)) )


)

    </regstate>


// setbe-rh

  rule <k>
    execinstr (setbe R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// cmpb-rh-r8

  rule <k>
    execinstr (cmpb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmadd231sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// cmoval-r32-r32

  rule <k>
    execinstr (cmoval R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// xorb-r8-r8

  rule <k>
    execinstr (xorb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 57), extractMInt(getParentValue(R2, RSMap), 56, 57)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movswl-r32-r16

  rule <k>
    execinstr (movswl R1:R16, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)) )


)

    </regstate>


// vcvtsi2sdl-xmm-xmm-r32

  rule <k>
    execinstr (vcvtsi2sdl R1:R32, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 32, 64)), 53, 11), 64))) )


)

    </regstate>


// vxorps-xmm-xmm-xmm

  rule <k>
    execinstr (vxorps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// tzcntw-r16-r16

  rule <k>
    execinstr (tzcntw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64))), 0, 1) )

 "SF" |-> (undef)

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (undef)

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64))), 0, 1)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(mi(64, countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 1, 65), 0)), 32, 64)), mi(33, 4294967295)), 17, 33)) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), mi(16, 16)) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(mi(64, countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64))), 17, 25))), 0, 1))), 1, 65), 0)), 32, 64)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpunpcklqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpcklqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// vpmovsxwq-xmm-xmm

  rule <k>
    execinstr (vpmovsxwq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 33))), mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 33, 65))))) )


)

    </regstate>


// setle-r8

  rule <k>
    execinstr (setle R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #fi)  )


)

    </regstate>


// vrsqrtss-xmm-xmm-xmm

  rule <k>
    execinstr (vrsqrtss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))) )


)

    </regstate>


// sete-r8

  rule <k>
    execinstr (sete R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vpmovzxbq-xmm-xmm

  rule <k>
    execinstr (vpmovzxbq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(184, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 248), concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 248, 256)))) )


)

    </regstate>


// vfnmsub213ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub213ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// vfmadd132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// sarb-r8-one

  rule <k>
    execinstr (sarb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(getParentValue(R2, RSMap), 63, 64) )

 "SF" |-> (extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))))), 1), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))))), 1), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))))), 1), 56, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))))), 1), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vaddps-xmm-xmm-xmm

  rule <k>
    execinstr (vaddps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfmsub213ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub213ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( (  ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256)), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32))) )


)

    </regstate>


// vpbroadcastw-ymm-xmm

  rule <k>
    execinstr (vpbroadcastw R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256))))) )


)

    </regstate>


// vfmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32)))))))) )


)

    </regstate>


// vfnmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32)))))))) )


)

    </regstate>


// cmovngel-r32-r32

  rule <k>
    execinstr (cmovngel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vfnmadd132ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd132ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// cmovew-r16-r16

  rule <k>
    execinstr (cmovew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// vhaddpd-xmm-xmm-xmm

  rule <k>
    execinstr (vhaddpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vpmovsxbd-xmm-xmm

  rule <k>
    execinstr (vpmovsxbd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), mi(65, 4294967168)), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240)), mi(32, -128))), concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), 33, 65))), xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65))))) )


)

    </regstate>


// sbbw-r16-r16

  rule <k>
    execinstr (sbbw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovdqu-ymm-ymm

  rule <k>
    execinstr (vmovdqu R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// minps-xmm-xmm

  rule <k>
    execinstr (minps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32)), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)))) )


)

    </regstate>


// vpmovzxwd-xmm-xmm

  rule <k>
    execinstr (vpmovzxwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))) )


)

    </regstate>


// cvtdq2pd-xmm-xmm

  rule <k>
    execinstr (cvtdq2pd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 53, 11), 64), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 53, 11), 64))) )


)

    </regstate>


// cmovncq-r64-r64

  rule <k>
    execinstr (cmovncq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vfmsubadd231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R3, RSMap), 224, 232)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R3, RSMap), 232, 240)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R3, RSMap), 240, 248)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R3, RSMap), 248, 256)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))) )


)

    </regstate>


// cmovpew-r16-r16

  rule <k>
    execinstr (cmovpew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("PF", RSMap)), mi(9, 255)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vpmovsxdq-xmm-xmm

  rule <k>
    execinstr (vpmovsxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// divpd-xmm-xmm

  rule <k>
    execinstr (divpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// orl-r32-r32

  rule <k>
    execinstr (orl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), orMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// maxpd-xmm-xmm

  rule <k>
    execinstr (maxpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)), 64), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// cmpxchgb-r8-r8

  rule <k>
    execinstr (cmpxchgb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R2, "RAX")

  rule <k>
    execinstr (cmpxchgb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R2, "RAX")
    


// vsubpd-xmm-xmm-xmm

  rule <k>
    execinstr (vsubpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vfmsub132ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// vfnmsub132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// haddps-xmm-xmm

  rule <k>
    execinstr (haddps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// cmovnlel-r32-r32

  rule <k>
    execinstr (cmovnlel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// negb-r8

  rule <k>
    execinstr (negb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 10) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 10), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 10), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(17, 1)), 9, 17), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setpe-r8

  rule <k>
    execinstr (setpe R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("PF", RSMap))) )


)

    </regstate>


// cmovgq-r64-r64

  rule <k>
    execinstr (cmovgq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(8, 0))), mi(32, 0)) ) #else ( true ) #fi) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// divss-xmm-xmm

  rule <k>
    execinstr (divss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vxorpd-ymm-ymm-ymm

  rule <k>
    execinstr (vxorpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)))), xorMInt(orMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128))))), concatenateMInt(xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)))), xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))))) )


)

    </regstate>


// vmovd-xmm-r32

  rule <k>
    execinstr (vmovd R1:R32, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(224, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) )


)

    </regstate>


// vunpckhpd-xmm-xmm-xmm

  rule <k>
    execinstr (vunpckhpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)) )


)

    </regstate>


// vfmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))))))) )


)

    </regstate>


// vorpd-xmm-xmm-xmm

  rule <k>
    execinstr (vorpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// cmovbeq-r64-r64

  rule <k>
    execinstr (cmovbeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)))), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vfmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) , 64)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// andq-r64-r64

  rule <k>
    execinstr (andq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "AF" |-> (undef)

convToRegKeys(R2) |-> (xorMInt(orMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), mi(64, 0)), xorMInt(getParentValue(R1, RSMap), mi(64, 0))), xorMInt(getParentValue(R1, RSMap), mi(64, 0))), xorMInt(xorMInt(getParentValue(R2, RSMap), mi(64, 0)), xorMInt(getParentValue(R1, RSMap), mi(64, 0)))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(orMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), mi(64, 0)), xorMInt(getParentValue(R1, RSMap), mi(64, 0))), xorMInt(getParentValue(R1, RSMap), mi(64, 0))), xorMInt(xorMInt(getParentValue(R2, RSMap), mi(64, 0)), xorMInt(getParentValue(R1, RSMap), mi(64, 0)))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (xorMInt(orMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), mi(1, 0)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), mi(1, 0))), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), mi(1, 0))), xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), mi(1, 0)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), mi(1, 0)))) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(orMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 0)), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 0))), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 0))), xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 0)), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 0)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )


)

    </regstate>


// movb-r8-r8

  rule <k>
    execinstr (movb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// vpmovzxdq-ymm-xmm

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), mi(32, 0)), extractMInt(getParentValue(R1, RSMap), 160, 192)), concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// notb-r8

  rule <k>
    execinstr (notb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// negl-r32

  rule <k>
    execinstr (negl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 1)), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), mi(1, 0))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovnol-r32-r32

  rule <k>
    execinstr (cmovnol R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(mi(1, 1), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vfmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// cmovaeq-r64-r64

  rule <k>
    execinstr (cmovaeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cmovbq-r64-r64

  rule <k>
    execinstr (cmovbq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0))), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// setne-r8

  rule <k>
    execinstr (setne R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// movw-r16-r16

  rule <k>
    execinstr (movw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// vpmovzxdq-xmm-xmm

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vmovq-xmm-r64

  rule <k>
    execinstr (vmovq R1:R64, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(192, 0), xorMInt(getParentValue(R1, RSMap), mi(64, 0))) )


)

    </regstate>


// vmovss-xmm-xmm-xmm

  rule <k>
    execinstr (vmovss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), extractMInt(getParentValue(R1, RSMap), 224, 256))) )


)

    </regstate>


// incb-rh

  rule <k>
    execinstr (incb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 0)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 0))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// btq-r64-r64

  rule <k>
    execinstr (btq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))), 63, 64) ) #else ( (#ifMInt (eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), mi(1, 0)) ) #then ( mi(1, 0) ) #else ( mi(1, 1) ) #fi)  ) #fi)  )

 "SF" |-> (undef)

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (undef)


)

    </regstate>


// vpor-xmm-xmm-xmm

  rule <k>
    execinstr (vpor R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vpunpckhqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// cmovll-r32-r32

  rule <k>
    execinstr (cmovll R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)), mi(8, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vpmovzxbd-xmm-xmm

  rule <k>
    execinstr (vpmovzxbd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))) )


)

    </regstate>


// cmovaw-r16-r16

  rule <k>
    execinstr (cmovaw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cvtsi2sdl-xmm-r32

  rule <k>
    execinstr (cvtsi2sdl R1:R32, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 32, 64)), 53, 11), 64)) )


)

    </regstate>


// cmovneq-r64-r64

  rule <k>
    execinstr (cmovneq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("ZF", RSMap)), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cmovpq-r64-r64

  rule <k>
    execinstr (cmovpq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 1, 9), mi(8, 0)) ) #then ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 0, 1)), mi(8, 1))), mi(32, 0)) ) #else ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 0, 1)), mi(8, 0))), mi(32, 0)) ) #fi) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// punpckhqdq-xmm-xmm

  rule <k>
    execinstr (punpckhqdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// vfmadd213sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd213sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// pmovzxdq-xmm-xmm

  rule <k>
    execinstr (pmovzxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), mi(32, 0)), extractMInt(getParentValue(R1, RSMap), 224, 256))) )


)

    </regstate>


// vfmsub231sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub231sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// unpcklps-xmm-xmm

  rule <k>
    execinstr (unpcklps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// testb-r8-rh

  rule <k>
    execinstr (testb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 48, 56)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// andb-r8-rh

  rule <k>
    execinstr (andb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(orMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 56, 57)), extractMInt(getParentValue(R1, RSMap), 48, 49)), xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 56, 57))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64)))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 56, 64))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmsub213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vpunpckhqdq-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpckhqdq R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// movd-r32-xmm

  rule <k>
    execinstr (movd R1:Xmm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// rsqrtps-xmm-xmm

  rule <k>
    execinstr (rsqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// cmovaq-r64-r64

  rule <k>
    execinstr (cmovaq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("CF", RSMap)), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), mi(8, 0)) ) #else ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("ZF", RSMap)), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #fi) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// por-xmm-xmm

  rule <k>
    execinstr (por R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vpbroadcastw-xmm-xmm

  rule <k>
    execinstr (vpbroadcastw R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256))))) )


)

    </regstate>


// sqrtps-xmm-xmm

  rule <k>
    execinstr (sqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// vmulpd-xmm-xmm-xmm

  rule <k>
    execinstr (vmulpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// xchgw-r16-r16

  rule <k>
    execinstr (xchgw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64))   )


)

    </regstate>


// andnq-r64-r64-r64

  rule <k>
    execinstr (andnq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), orMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R1, RSMap), 0, 1))) )

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (mi(1, 0) )

convToRegKeys(R3) |-> (xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// orb-rh-rh

  rule <k>
    execinstr (orb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))), 0, 1), extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 0, 1)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// andb-rh-rh

  rule <k>
    execinstr (andb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), orMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R2, RSMap), 48, 56))), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setnz-rh

  rule <k>
    execinstr (setnz R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// shlb-rh-one

  rule <k>
    execinstr (shlb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setae-r8

  rule <k>
    execinstr (setae R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// vpunpckhwd-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpckhwd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 16, 32)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 16, 32))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 32), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 16, 32), extractMInt(getParentValue(R1, RSMap), 16, 32)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 16, 32)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 16, 32)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 0, 16)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 16, 32)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 32, 48)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))))), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 144, 160), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 128, 144)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 144, 160)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 176, 192), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 160, 176)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 176, 192)))))) )


)

    </regstate>


// vfmsub231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vpmovzxwd-ymm-xmm

  rule <k>
    execinstr (vpmovzxwd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 128, 144)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 160, 176)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))) )


)

    </regstate>


// cmovnbeq-r64-r64

  rule <k>
    execinstr (cmovnbeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("CF", RSMap)), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), mi(8, 0)) ) #else ( eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("ZF", RSMap)), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #fi) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vfnmsub231ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// cwtl

  rule <k>
    execinstr (cwtl  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 48, 64))), 32, 64)) )


)

    </regstate>


// vfmaddsub231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vpunpckldq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckldq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// vfmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// movsbl-r32-rh

  rule <k>
    execinstr (movsbl R1:Rh, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)) )


)

    </regstate>


// vpand-ymm-ymm-ymm

  rule <k>
    execinstr (vpand R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)))), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))))) )


)

    </regstate>


// decb-rh

  rule <k>
    execinstr (decb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(9, 255)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// testb-r8-r8

  rule <k>
    execinstr (testb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vsqrtps-xmm-xmm

  rule <k>
    execinstr (vsqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// vunpcklps-ymm-ymm-ymm

  rule <k>
    execinstr (vunpcklps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), extractMInt(getParentValue(R2, RSMap), 64, 96)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), extractMInt(getParentValue(R2, RSMap), 96, 128))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// cmovpw-r16-r16

  rule <k>
    execinstr (cmovpw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// vhsubpd-xmm-xmm-xmm

  rule <k>
    execinstr (vhsubpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64))) )


)

    </regstate>


// setno-rh

  rule <k>
    execinstr (setno R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(31, 0), getFlag("OF", RSMap)), mi(32, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// xchgb-r8-rh

  rule <k>
    execinstr (xchgb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)) )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

     rule <k>
    execinstr (xchgb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 48, 56))) )

)

    </regstate>
      requires sameRegisters(R1, R2)



// setnl-rh

  rule <k>
    execinstr (setnl R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// maxps-xmm-xmm

  rule <k>
    execinstr (maxps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32)), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)))) )


)

    </regstate>


// movzwl-r32-r16

  rule <k>
    execinstr (movzwl R1:R16, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// vaddsubpd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddsubpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vminsd-xmm-xmm-xmm

  rule <k>
    execinstr (vminsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// cmovnael-r32-r32

  rule <k>
    execinstr (cmovnael R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vxorps-ymm-ymm-ymm

  rule <k>
    execinstr (vxorps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)))), xorMInt(orMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128))))), concatenateMInt(xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))), orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)))), xorMInt(orMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))))) )


)

    </regstate>


// orb-rh-r8

  rule <k>
    execinstr (orb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)))), 0, 1), extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 0, 1)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 48, 56)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfnmadd213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// setc-rh

  rule <k>
    execinstr (setc R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vmovddup-ymm-ymm

  rule <k>
    execinstr (vmovddup R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vmovapd-xmm-xmm

  rule <k>
    execinstr (vmovapd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setnge-rh

  rule <k>
    execinstr (setnge R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// testw-r16-r16

  rule <k>
    execinstr (testw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// seto-r8

  rule <k>
    execinstr (seto R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))) )


)

    </regstate>


// orb-r8-rh

  rule <k>
    execinstr (orb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), 0, 1), extractMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))), 0, 1)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 48, 56)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 48, 56))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56))))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// shlq-r64-one

  rule <k>
    execinstr (shlq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmsubadd213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(xorMInt(mi(64, 0), extractMInt(getParentValue(R1, RSMap), 128, 192)), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  (  (  ( negateFloat( ( minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), 53, 11), 0e+00)  *Float  minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), 53, 11), 0e+00) ) )  -Float  MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), 53, 11) )  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// andnps-xmm-xmm

  rule <k>
    execinstr (andnps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// sall-r32-one

  rule <k>
    execinstr (sall $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovngeq-r64-r64

  rule <k>
    execinstr (cmovngeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// addss-xmm-xmm

  rule <k>
    execinstr (addss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vfnmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) ) ) , 32)))), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// cmovcq-r64-r64

  rule <k>
    execinstr (cmovcq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0))), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// addsd-xmm-xmm

  rule <k>
    execinstr (addsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// vpbroadcastb-xmm-xmm

  rule <k>
    execinstr (vpbroadcastb R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)))), concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 248, 256), extractMInt(getParentValue(R1, RSMap), 248, 256)))))) )


)

    </regstate>


// cmpq-r64-r64

  rule <k>
    execinstr (cmpq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), getParentValue(R2, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setg-rh

  rule <k>
    execinstr (setg R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// vfnmadd132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// setp-rh

  rule <k>
    execinstr (setp R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// cmovnbq-r64-r64

  rule <k>
    execinstr (cmovnbq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// blsrl-r32-r32

  rule <k>
    execinstr (blsrl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), xorMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 34), orMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 34), extractMInt(getParentValue(R1, RSMap), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18))  andBool   notBool  ( eqMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), xorMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), orMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), extractMInt(getParentValue(R1, RSMap), 32, 64))))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), xorMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), orMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), extractMInt(getParentValue(R1, RSMap), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// salb-rh-one

  rule <k>
    execinstr (salb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cqto

  rule <k>
    execinstr (cqto  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RDX" |-> (ashrMInt(mi(64, svalueMInt(getParentValue(%rax, RSMap))), 63)   )


)

    </regstate>


// pmovsxwq-xmm-xmm

  rule <k>
    execinstr (pmovsxwq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 33))), mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 33, 65))))) )


)

    </regstate>


// vsubsd-xmm-xmm-xmm

  rule <k>
    execinstr (vsubsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// notw-r16

  rule <k>
    execinstr (notw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))) )


)

    </regstate>


// vmulps-xmm-xmm-xmm

  rule <k>
    execinstr (vmulps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// cmovngw-r16-r16

  rule <k>
    execinstr (cmovngw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// cmpb-r8-r8

  rule <k>
    execinstr (cmpb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 57), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfnmsub231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vorps-ymm-ymm-ymm

  rule <k>
    execinstr (vorps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), orMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128))), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// pxor-xmm-xmm

  rule <k>
    execinstr (pxor R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// andpd-xmm-xmm

  rule <k>
    execinstr (andpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// cmovnow-r16-r16

  rule <k>
    execinstr (cmovnow R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(mi(1, 1), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// vmaxpd-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)), 64), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// vaddsubps-xmm-xmm-xmm

  rule <k>
    execinstr (vaddsubps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vmovapd-ymm-ymm

  rule <k>
    execinstr (vmovapd R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// cmovaew-r16-r16

  rule <k>
    execinstr (cmovaew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vmovaps-ymm-ymm

  rule <k>
    execinstr (vmovaps R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// cmovngew-r16-r16

  rule <k>
    execinstr (cmovngew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)    )


)

    </regstate>


// vmovdqa-xmm-xmm

  rule <k>
    execinstr (vmovdqa R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// addsubpd-xmm-xmm

  rule <k>
    execinstr (addsubpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// subb-rh-rh

  rule <k>
    execinstr (subb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// xorb-r8-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 56, 57)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmpxchgq-r64-r64

  rule <k>
    execinstr (cmpxchgq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap)), getParentValue(%rax, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)), extractMInt(getParentValue(%rax, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( getParentValue(%rax, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R2, "RAX")

  rule <k>
    execinstr (cmpxchgq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap)), getParentValue(%rax, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)), extractMInt(getParentValue(%rax, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R2, RSMap))), concatenateMInt(mi(1, 0), getParentValue(%rax, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R2, "RAX")
      



// incw-r16

  rule <k>
    execinstr (incw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// incl-r32

  rule <k>
    execinstr (incl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 33))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(33, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpbroadcastq-ymm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// sarw-r16-one

  rule <k>
    execinstr (sarw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(getParentValue(R2, RSMap), 63, 64) )

 "SF" |-> (extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// pmovzxbd-xmm-xmm

  rule <k>
    execinstr (pmovzxbd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))) )


)

    </regstate>


// cmovnlw-r16-r16

  rule <k>
    execinstr (cmovnlw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)    )


)

    </regstate>


// vfmaddsub132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vcvtdq2pd-xmm-xmm

  rule <k>
    execinstr (vcvtdq2pd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 53, 11), 64), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 53, 11), 64))) )


)

    </regstate>


// pmovzxbq-xmm-xmm

  rule <k>
    execinstr (pmovzxbq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 248, 256)))) )


)

    </regstate>


// movzwq-r64-r16

  rule <k>
    execinstr (movzwq R1:R16, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// minpd-xmm-xmm

  rule <k>
    execinstr (minpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)), 64), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// addb-rh-rh

  rule <k>
    execinstr (addb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// negw-r16

  rule <k>
    execinstr (negw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(16, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// popcntl-r32-r32

  rule <k>
    execinstr (popcntl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (mi(1, 0) )

 "AF" |-> (mi(1, 0) )

 "PF" |-> (mi(1, 0) )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (mi(64, countOnes(extractMInt(getParentValue(R1, RSMap), 32, 64), 0)) )

 "ZF" |-> ((#ifMInt (eqMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmadd132ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd132ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R3, RSMap), 128, 224)), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32)) )


)

    </regstate>


// movq-xmm-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, 0), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vfnmadd213ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd213ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R3, RSMap), 128, 224)), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// cvtss2sd-xmm-xmm

  rule <k>
    execinstr (cvtss2sd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64)) )


)

    </regstate>


// movl-r32-r32

  rule <k>
    execinstr (movl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) )


)

    </regstate>


// vmovq-r64-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256)   )


)

    </regstate>


// paddq-xmm-xmm

  rule <k>
    execinstr (paddq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 128, 192)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), 1, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), 1, 65))) )


)

    </regstate>


// cmovol-r32-r32

  rule <k>
    execinstr (cmovol R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("OF", RSMap))), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// adcb-rh-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovsldup-xmm-xmm

  rule <k>
    execinstr (vmovsldup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// cmovnew-r16-r16

  rule <k>
    execinstr (cmovnew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// shlxq-r64-r64-r64

  rule <k>
    execinstr (shlxq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )


)

    </regstate>


// vbroadcastsd-ymm-xmm

  rule <k>
    execinstr (vbroadcastsd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// addl-r32-r32

  rule <k>
    execinstr (addl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovnsq-r64-r64

  rule <k>
    execinstr (cmovnsq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), mi(1, 1)), mi(1, 1))), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), mi(1, 1)), mi(1, 1))), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// subq-r64-r64

  rule <k>
    execinstr (subq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), getParentValue(R2, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// divsd-xmm-xmm

  rule <k>
    execinstr (divsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// vfmadd132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vfnmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vmaxps-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// roll-r32-one

  rule <k>
    execinstr (roll $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 0, 1))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 0, 1))), 1, 33)) )


)

    </regstate>


// rsqrtss-xmm-xmm

  rule <k>
    execinstr (rsqrtss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32)) )


)

    </regstate>


// addpd-xmm-xmm

  rule <k>
    execinstr (addpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// orw-r16-r16

  rule <k>
    execinstr (orw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 0, 1)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), orMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// xorpd-xmm-xmm

  rule <k>
    execinstr (xorpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vmaxsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// decl-r32

  rule <k>
    execinstr (decl R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), mi(32, -1)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), mi(1, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfnmadd213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// sbbb-rh-r8

  rule <k>
    execinstr (sbbb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// adcb-r8-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// bswap-r32

  rule <k>
    execinstr (bswap R1:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 40, 48), extractMInt(getParentValue(R1, RSMap), 32, 40)))) )


)

    </regstate>


// vmovupd-ymm-ymm

  rule <k>
    execinstr (vmovupd R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// sarl-r32-one

  rule <k>
    execinstr (sarl $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(getParentValue(R2, RSMap), 63, 64) )

 "SF" |-> (extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 32, 64))))), 1), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 32, 64))))), 1), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 32, 64))))), 1), 32, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 32, 64))))), 1), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// addb-rh-r8

  rule <k>
    execinstr (addb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setpe-rh

  rule <k>
    execinstr (setpe R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// sets-r8

  rule <k>
    execinstr (sets R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("SF", RSMap))) )


)

    </regstate>


// setnle-r8

  rule <k>
    execinstr (setnle R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// xorl-r32-r32

  rule <k>
    execinstr (xorl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (xorMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovnleq-r64-r64

  rule <k>
    execinstr (cmovnleq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(8, 0))), mi(32, 0)) ) #else ( true ) #fi) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vpsubq-xmm-xmm-xmm

  rule <k>
    execinstr (vpsubq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 128, 192))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 192, 256))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), mi(65, 1)), 1, 65))) )


)

    </regstate>


// movdqa-xmm-xmm

  rule <k>
    execinstr (movdqa R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// shlb-r8-one

  rule <k>
    execinstr (shlb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovpel-r32-r32

  rule <k>
    execinstr (cmovpel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)    )


)

    </regstate>


// cmovpow-r16-r16

  rule <k>
    execinstr (cmovpow R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// rolb-r8-one

  rule <k>
    execinstr (rolb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1))), 1, 9)) )


)

    </regstate>


// vpmovsxwd-xmm-xmm

  rule <k>
    execinstr (vpmovsxwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 49, 65))))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 65))) )


)

    </regstate>


// notb-rh

  rule <k>
    execinstr (notb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vmulss-xmm-xmm-xmm

  rule <k>
    execinstr (vmulss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// sbbb-r8-r8

  rule <k>
    execinstr (sbbb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovlel-r32-r32

  rule <k>
    execinstr (cmovlel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// stc

  rule <k>
    execinstr (stc  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 1)   )


)

    </regstate>


// vdivps-xmm-xmm-xmm

  rule <k>
    execinstr (vdivps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// cmovcl-r32-r32

  rule <k>
    execinstr (cmovcl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vpmovsxbd-ymm-xmm

  rule <k>
    execinstr (vpmovsxbd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 192, 200)), mi(65, 4294967168)), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 200, 208)), mi(32, -128))), concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 200, 208))), 33, 65))), xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 208, 216))))), 33, 65), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 216, 224))))), 33, 65)))), concatenateMInt(xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), mi(65, 4294967168)), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240)), mi(32, -128))), concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), 33, 65))), xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65))))) )


)

    </regstate>


// cmovnaw-r16-r16

  rule <k>
    execinstr (cmovnaw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// setpo-rh

  rule <k>
    execinstr (setpo R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// cmovoq-r64-r64

  rule <k>
    execinstr (cmovoq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cmovbl-r32-r32

  rule <k>
    execinstr (cmovbl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmpb-rh-rh

  rule <k>
    execinstr (cmpb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// sarxq-r64-r64-r64

  rule <k>
    execinstr (sarxq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( (#ifMInt (eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), mi(1, 0)) ) #then ( mi(64, 0) ) #else ( mi(64, -1) ) #fi)  ) #fi)  )


)

    </regstate>


// vandnpd-ymm-ymm-ymm

  rule <k>
    execinstr (vandnpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128))), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// divps-xmm-xmm

  rule <k>
    execinstr (divps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vorpd-ymm-ymm-ymm

  rule <k>
    execinstr (vorpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 0, 64), extractMInt(getParentValue(R1, RSMap), 0, 64)), orMInt(extractMInt(getParentValue(R2, RSMap), 64, 128), extractMInt(getParentValue(R1, RSMap), 64, 128))), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vpaddq-xmm-xmm-xmm

  rule <k>
    execinstr (vpaddq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 128, 192))), 1, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 192, 256))), 1, 65))) )


)

    </regstate>


// sqrtss-xmm-xmm

  rule <k>
    execinstr (sqrtss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32)) )


)

    </regstate>


// setnbe-rh

  rule <k>
    execinstr (setnbe R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(9, 0), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), mi(17, 4)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// haddpd-xmm-xmm

  rule <k>
    execinstr (haddpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// subw-r16-r16

  rule <k>
    execinstr (subw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>


// punpckhwd-xmm-xmm

  rule <k>
    execinstr (punpckhwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 144, 160), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 128, 144)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 144, 160)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 176, 192), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 160, 176)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 176, 192)))))) )


)

    </regstate>


// vsubps-xmm-xmm-xmm

  rule <k>
    execinstr (vsubps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vbroadcastss-ymm-xmm

  rule <k>
    execinstr (vbroadcastss R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// cmovncl-r32-r32

  rule <k>
    execinstr (cmovncl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmovbw-r16-r16

  rule <k>
    execinstr (cmovbw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// rclq-r64-one

  rule <k>
    execinstr (rclq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), getFlag("CF", RSMap))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), getFlag("CF", RSMap))), 1, 65) )


)

    </regstate>


// mulpd-xmm-xmm

  rule <k>
    execinstr (mulpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vpaddd-xmm-xmm-xmm

  rule <k>
    execinstr (vpaddd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192))), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 160, 192))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), 33, 65)))) )


)

    </regstate>


// setge-r8

  rule <k>
    execinstr (setge R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1))) )


)

    </regstate>


// vpandn-xmm-xmm-xmm

  rule <k>
    execinstr (vpandn R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// setnp-r8

  rule <k>
    execinstr (setnp R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// vpmovzxwq-xmm-xmm

  rule <k>
    execinstr (vpmovzxwq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// subl-r32-r32

  rule <k>
    execinstr (subl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 32, 33)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(32, -1), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), mi(33, 1)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// salw-r16-one

  rule <k>
    execinstr (salw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovupd-xmm-xmm

  rule <k>
    execinstr (vmovupd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// orpd-xmm-xmm

  rule <k>
    execinstr (orpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// cmovzq-r64-r64

  rule <k>
    execinstr (cmovzq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vfnmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) , 64), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64)))) )


)

    </regstate>


// cmovael-r32-r32

  rule <k>
    execinstr (cmovael R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vfmaddsub231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( negateFloat( (  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(concatenateMInt(mi(32, 0), extractMInt(Float2MInt( ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), 0, 32)), 53, 11) ) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  )  ) , 64))) )


)

    </regstate>


// vsqrtsd-xmm-xmm-xmm

  rule <k>
    execinstr (vsqrtsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64))) )


)

    </regstate>


// rclb-r8-one

  rule <k>
    execinstr (rclb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)) )


)

    </regstate>


// testb-rh-r8

  rule <k>
    execinstr (testb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// pmovsxbq-xmm-xmm

  rule <k>
    execinstr (pmovsxbq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65)))), mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65)))))) )


)

    </regstate>


// setge-rh

  rule <k>
    execinstr (setge R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vfmadd231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// vfmsubadd213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  +Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  -Float  ( negateFloat( ( MInt2Float(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256)), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32)))) )


)

    </regstate>


// vmovups-xmm-xmm

  rule <k>
    execinstr (vmovups R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// cwtd

  rule <k>
    execinstr (cwtd  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RDX" |-> (concatenateMInt(extractMInt(getParentValue(%rdx, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 48, 64))), 16, 32)) )


)

    </regstate>


// pmovzxwd-xmm-xmm

  rule <k>
    execinstr (pmovzxwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))) )


)

    </regstate>


// vfnmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) ) ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// xaddl-r32-r32

  rule <k>
    execinstr (xaddl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xaddl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R1, R2)


// xaddw-r16-r16

  rule <k>
    execinstr (xaddw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xaddw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64))), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), 8, 16), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), 0, 1)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R1, R2)


// vmovaps-xmm-xmm

  rule <k>
    execinstr (vmovaps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// movshdup-xmm-xmm

  rule <k>
    execinstr (movshdup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))) )


)

    </regstate>


// sets-rh

  rule <k>
    execinstr (sets R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vpand-xmm-xmm-xmm

  rule <k>
    execinstr (vpand R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// vbroadcastss-xmm-xmm

  rule <k>
    execinstr (vbroadcastss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// pmovsxbd-xmm-xmm

  rule <k>
    execinstr (pmovsxbd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), mi(65, 4294967168)), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240)), mi(32, -128))), concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), 33, 65))), xorMInt(mi(64, 18446743528248704896), concatenateMInt(extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65))))) )


)

    </regstate>


// vfmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// vandnps-xmm-xmm-xmm

  rule <k>
    execinstr (vandnps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// setz-rh

  rule <k>
    execinstr (setz R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vfnmadd231ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd231ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R3, RSMap), 128, 224)), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  +Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// hsubpd-xmm-xmm

  rule <k>
    execinstr (hsubpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64))) )


)

    </regstate>


// cmovnzw-r16-r16

  rule <k>
    execinstr (cmovnzw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// movzbl-r32-r8

  rule <k>
    execinstr (movzbl R1:R8, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// vminpd-xmm-xmm-xmm

  rule <k>
    execinstr (vminpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)), 64), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64))) )


)

    </regstate>


// tzcntl-r32-r32

  rule <k>
    execinstr (tzcntl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 57, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 57, 65)))))), 1), 56, 64))), 0, 1) )

 "SF" |-> (undef)

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (undef)

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(mi(64, countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 1, 65), 0)), 32, 64)), mi(33, 4294967295)), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(mi(64, countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1))), 1, 65), 0)), 32, 64)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vcvtsi2ssl-xmm-xmm-r32

  rule <k>
    execinstr (vcvtsi2ssl R1:R32, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 8), 32))) )


)

    </regstate>


// xchgb-r8-r8

  rule <k>
    execinstr (xchgb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// vaddss-xmm-xmm-xmm

  rule <k>
    execinstr (vaddss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// vsqrtss-xmm-xmm-xmm

  rule <k>
    execinstr (vsqrtss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R2, RSMap), 128, 224)), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32)) )


)

    </regstate>


// vfnmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))))))) )


)

    </regstate>


// rclb-rh-one

  rule <k>
    execinstr (rclb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// cvtps2pd-xmm-xmm

  rule <k>
    execinstr (cvtps2pd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// vandpd-ymm-ymm-ymm

  rule <k>
    execinstr (vandpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)))), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))))) )


)

    </regstate>


// sqrtpd-xmm-xmm

  rule <k>
    execinstr (sqrtpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), 2), 64), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64))) )


)

    </regstate>


// cmovngl-r32-r32

  rule <k>
    execinstr (cmovngl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmovnaeq-r64-r64

  rule <k>
    execinstr (cmovnaeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0))), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// seta-rh

  rule <k>
    execinstr (seta R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(9, 0), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), mi(17, 4)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// vxorpd-xmm-xmm-xmm

  rule <k>
    execinstr (vxorpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vfmadd213ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd213ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32))) )


)

    </regstate>


// cmovnaew-r16-r16

  rule <k>
    execinstr (cmovnaew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// mulps-xmm-xmm

  rule <k>
    execinstr (mulps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// xaddb-r8-rh

  rule <k>
    execinstr (xaddb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xaddb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(
    extractMInt(getParentValue(R2, RSMap), 0, 48), 
    concatenateMInt(
      extractMInt(getParentValue(R2, RSMap), 56, 64),
      addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))
    )) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0, 1) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0, 1)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
      requires sameRegisters(R1, R2)


// notq-r64

  rule <k>
    execinstr (notq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)) )


)

    </regstate>


// shrxl-r32-r32-r32

  rule <k>
    execinstr (shrxl R1:R32, R2:R32, R3:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(xorMInt(mi(8, 32), orMInt(mi(8, 32), extractMInt(getParentValue(R1, RSMap), 56, 64))), mi(8, 63)), mi(8, 64)) ) #then ( lshrMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), uvalueMInt(andMInt(xorMInt(mi(8, 32), orMInt(mi(8, 32), extractMInt(getParentValue(R1, RSMap), 56, 64))), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )


)

    </regstate>


// vmovsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmovsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// setl-r8

  rule <k>
    execinstr (setl R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))) )


)

    </regstate>


// movddup-xmm-xmm

  rule <k>
    execinstr (movddup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// phsubd-xmm-xmm

  rule <k>
    execinstr (phsubd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 128, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)))), mi(65, 1)), 1, 33)), concatenateMInt(mi(33, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 128, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)))), mi(65, 1)), 33, 65))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 192, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), mi(65, 1)), 1, 65)), concatenateMInt(mi(33, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 192, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), mi(65, 1)), 1, 33))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 128, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))), mi(65, 1)), 1, 33), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 128, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))), mi(65, 1)), 1, 33))), concatenateMInt(mi(1, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 128, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))), mi(65, 1)), 1, 65))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 192, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), mi(65, 1)), 1, 33), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 192, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), mi(65, 1)), 1, 33))), concatenateMInt(mi(1, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R2, RSMap), 192, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), mi(65, 1)), 1, 65))), 33, 65)))) )


)

    </regstate>


// addb-r8-r8

  rule <k>
    execinstr (addb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovsq-r64-r64

  rule <k>
    execinstr (cmovsq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// movapd-xmm-xmm

  rule <k>
    execinstr (movapd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// cmovnsw-r16-r16

  rule <k>
    execinstr (cmovnsw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(32, 0), getFlag("SF", RSMap)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// salq-r64-one

  rule <k>
    execinstr (salq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movdqu-xmm-xmm

  rule <k>
    execinstr (movdqu R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// andb-r8-r8

  rule <k>
    execinstr (andb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 56, 64))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// orps-xmm-xmm

  rule <k>
    execinstr (orps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vmaxss-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R2, RSMap), 128, 224)), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)) )


)

    </regstate>


// vpmovsxbq-ymm-xmm

  rule <k>
    execinstr (vpmovsxbq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 224, 232)), mi(65, 4294967168)), 33, 65)))), mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 232, 240)), mi(32, -128))), concatenateMInt(mi(57, 0), extractMInt(getParentValue(R1, RSMap), 232, 240))), 33, 65))))), concatenateMInt(mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65)))), mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65)))))) )


)

    </regstate>


// subsd-xmm-xmm

  rule <k>
    execinstr (subsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// cmovnsl-r32-r32

  rule <k>
    execinstr (cmovnsl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(32, 0), getFlag("SF", RSMap)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// setns-r8

  rule <k>
    execinstr (setns R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("SF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// vpbroadcastd-ymm-xmm

  rule <k>
    execinstr (vpbroadcastd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// xchgb-rh-r8

  rule <k>
    execinstr (xchgb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)) )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xchgb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 48, 56))) )


)

    </regstate>
      requires  sameRegisters(R1, R2)



// setnb-rh

  rule <k>
    execinstr (setnb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("CF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// vmovddup-xmm-xmm

  rule <k>
    execinstr (vmovddup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// cmovnbw-r16-r16

  rule <k>
    execinstr (cmovnbw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cmovpol-r32-r32

  rule <k>
    execinstr (cmovpol R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vhaddpd-ymm-ymm-ymm

  rule <k>
    execinstr (vhaddpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11) ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vfnmadd132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32)))) )


)

    </regstate>


// punpcklwd-xmm-xmm

  rule <k>
    execinstr (punpcklwd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 208, 224), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 208, 224)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 240, 256)))))) )


)

    </regstate>


// vorps-xmm-xmm-xmm

  rule <k>
    execinstr (vorps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vfnmadd231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// cmovzl-r32-r32

  rule <k>
    execinstr (cmovzl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cltd

  rule <k>
    execinstr (cltd  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RDX" |-> (concatenateMInt(mi(32, 0), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 32, 64))), 0, 32), mi(32, 0))) )


)

    </regstate>


// rorb-r8-one

  rule <k>
    execinstr (rorb $0x1, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 64))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 57), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))))), 1), 56, 64)) )


)

    </regstate>


// decq-r64

  rule <k>
    execinstr (decq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1))  andBool   notBool  ( eqMInt(mi(1, 1), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovcw-r16-r16

  rule <k>
    execinstr (cmovcw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)), mi(16, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// vpmovzxwq-ymm-xmm

  rule <k>
    execinstr (vpmovzxwq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// cmovnll-r32-r32

  rule <k>
    execinstr (cmovnll R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)    )


)

    </regstate>


// cmovlw-r16-r16

  rule <k>
    execinstr (cmovlw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// vpaddd-ymm-ymm-ymm

  rule <k>
    execinstr (vpaddd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 0, 32)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 0, 32))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), extractMInt(getParentValue(R1, RSMap), 64, 96))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), extractMInt(getParentValue(R2, RSMap), 64, 96)))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), extractMInt(getParentValue(R1, RSMap), 96, 128))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), extractMInt(getParentValue(R2, RSMap), 96, 128)))), 33, 65))), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192))), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 160, 192))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), 33, 65)))) )


)

    </regstate>


// xorb-rh-r8

  rule <k>
    execinstr (xorb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 56, 57)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movq-xmm-r64

  rule <k>
    execinstr (movq R1:R64, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, 0), xorMInt(getParentValue(R1, RSMap), mi(64, 0)))) )


)

    </regstate>


// andb-rh-r8

  rule <k>
    execinstr (andb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(orMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)), extractMInt(getParentValue(R2, RSMap), 48, 49)), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(orMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56)), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovsl-r32-r32

  rule <k>
    execinstr (cmovsl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), mi(1, 1)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmovnpw-r16-r16

  rule <k>
    execinstr (cmovnpw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// setng-rh

  rule <k>
    execinstr (setng R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// vmovlhps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovlhps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// vfnmsub132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// cmpb-r8-rh

  rule <k>
    execinstr (cmpb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmsubadd132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 128, 160)), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// addsubps-xmm-xmm

  rule <k>
    execinstr (addsubps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// addb-r8-rh

  rule <k>
    execinstr (addb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R1, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setg-r8

  rule <k>
    execinstr (setg R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// movzbw-r16-rh

  rule <k>
    execinstr (movzbw R1:Rh, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))) )


)

    </regstate>


// punpckldq-xmm-xmm

  rule <k>
    execinstr (punpckldq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// vpunpckldq-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpckldq R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), extractMInt(getParentValue(R2, RSMap), 64, 96)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), extractMInt(getParentValue(R2, RSMap), 96, 128))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))) )


)

    </regstate>


// clc

  rule <k>
    execinstr (clc  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )


)

    </regstate>


// addps-xmm-xmm

  rule <k>
    execinstr (addps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// setnbe-r8

  rule <k>
    execinstr (setnbe R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)))), mi(32, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #fi)  )


)

    </regstate>


// setb-r8

  rule <k>
    execinstr (setb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// vaddpd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vmovshdup-ymm-ymm

  rule <k>
    execinstr (vmovshdup R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 32), extractMInt(getParentValue(R1, RSMap), 0, 32)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), extractMInt(getParentValue(R1, RSMap), 64, 96))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))) )


)

    </regstate>


// vmulsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmulsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// nopl-r32

  rule <k>
    execinstr (nopl R1:R32,  .Operands) => .
  ...</k>


// setnle-rh

  rule <k>
    execinstr (setnle R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// rcpps-xmm-xmm

  rule <k>
    execinstr (rcpps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// setnc-r8

  rule <k>
    execinstr (setnc R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(mi(8, 1), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// cmpxchgw-r16-r16

  rule <k>
    execinstr (cmpxchgw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 48, 64), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
  requires notBool sameRegisters(R2, "RAX")
  


  rule <k>
    execinstr (cmpxchgw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 48, 64), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R2, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
  requires sameRegisters(R2, "RAX")


// vfmsub132pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// movsd-xmm-xmm

  rule <k>
    execinstr (movsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), extractMInt(getParentValue(R1, RSMap), 192, 256)) )


)

    </regstate>


// vfnmsub132sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub132sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setnl-r8

  rule <k>
    execinstr (setnl R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1))) )


)

    </regstate>


// vfmsub132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfmsubadd231pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsubadd231pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R3, RSMap), 128, 160)), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// movzbw-r16-r8

  rule <k>
    execinstr (movzbw R1:R8, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vunpckhps-ymm-ymm-ymm

  rule <k>
    execinstr (vunpckhps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 32), extractMInt(getParentValue(R2, RSMap), 0, 32)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// setl-rh

  rule <k>
    execinstr (setl R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vunpckhps-xmm-xmm-xmm

  rule <k>
    execinstr (vunpckhps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// vfmadd231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// sbbq-r64-r64

  rule <k>
    execinstr (sbbq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), getParentValue(R2, RSMap)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 0, 1)), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vminss-xmm-xmm-xmm

  rule <k>
    execinstr (vminss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R2, RSMap), 128, 224)), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)) )


)

    </regstate>


// cmovpl-r32-r32

  rule <k>
    execinstr (cmovpl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(63, 0), getFlag("PF", RSMap)), mi(64, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// rcpss-xmm-xmm

  rule <k>
    execinstr (rcpss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// cmovnal-r32-r32

  rule <k>
    execinstr (cmovnal R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// shll-r32-one

  rule <k>
    execinstr (shll $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 25, 33), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 33)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), 1, 33), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vsqrtpd-xmm-xmm

  rule <k>
    execinstr (vsqrtpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), 2), 64), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64))) )


)

    </regstate>


// testl-r32-r32

  rule <k>
    execinstr (testl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), orMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmc

  rule <k>
    execinstr (cmc  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1) )


)

    </regstate>


// pmovzxwq-xmm-xmm

  rule <k>
    execinstr (pmovzxwq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// vfmadd213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// movsbw-r16-r8

  rule <k>
    execinstr (movsbw R1:R8, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 48, 64)) )


)

    </regstate>


// cmovlq-r64-r64

  rule <k>
    execinstr (cmovlq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// shrxq-r64-r64-r64

  rule <k>
    execinstr (shrxq R1:R64, R2:R64, R3:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( lshrMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )


)

    </regstate>


// vhaddps-xmm-xmm-xmm

  rule <k>
    execinstr (vhaddps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// minsd-xmm-xmm

  rule <k>
    execinstr (minsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64)) )


)

    </regstate>


// cmovpeq-r64-r64

  rule <k>
    execinstr (cmovpeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt ((#ifBool (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 1, 9), mi(8, 0)) ) #then ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 0, 1)), mi(8, 1))), mi(32, 0)) ) #else ( eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1)))), 0, 1)), mi(8, 0))), mi(32, 0)) ) #fi) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vdivss-xmm-xmm-xmm

  rule <k>
    execinstr (vdivss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// movzbl-r32-rh

  rule <k>
    execinstr (movzbl R1:Rh, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))   )


)

    </regstate>


// decb-r8

  rule <k>
    execinstr (decb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(mi(1, 1), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// rolw-r16-one

  rule <k>
    execinstr (rolw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1))), 1, 17)) )


)

    </regstate>


// cmovnel-r32-r32

  rule <k>
    execinstr (cmovnel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// vpmovzxbq-ymm-xmm

  rule <k>
    execinstr (vpmovzxbq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(mi(56, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 232), mi(56, 0))), extractMInt(getParentValue(R1, RSMap), 232, 240)), concatenateMInt(concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 240, 248)), concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 248, 256)))) )


)

    </regstate>


// testq-r64-r64

  rule <k>
    execinstr (testq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(xorMInt(mi(1, 1), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), orMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)))), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(xorMInt(mi(1, 1), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), orMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1)))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), xorMInt(getParentValue(R1, RSMap), orMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))))), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), mi(65, 1)), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vandps-ymm-ymm-ymm

  rule <k>
    execinstr (vandps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128)), xorMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)))), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))))) )


)

    </regstate>


// rolq-r64-one

  rule <k>
    execinstr (rolq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 0, 1), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), concatenateMInt(mi(64, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R2, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1))), 1, 65) )


)

    </regstate>


// vhsubps-ymm-ymm-ymm

  rule <k>
    execinstr (vhsubps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32)))))))) )


)

    </regstate>


// vsubss-xmm-xmm-xmm

  rule <k>
    execinstr (vsubss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// sbbb-r8-rh

  rule <k>
    execinstr (sbbb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// xchgq-r64-r64

  rule <k>
    execinstr (xchgq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )


)

    </regstate>


// vmovd-r32-xmm

  rule <k>
    execinstr (vmovd R1:Xmm, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// pmovsxdq-xmm-xmm

  rule <k>
    execinstr (pmovsxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// vmovdqu-xmm-xmm

  rule <k>
    execinstr (vmovdqu R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vpunpcklwd-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpcklwd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 80, 96)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 80, 96))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 96), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 80, 96), extractMInt(getParentValue(R1, RSMap), 80, 96)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 80, 96)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 80, 96)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 64, 80)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 80, 96)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 112, 128)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 112, 128))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 112, 128), extractMInt(getParentValue(R1, RSMap), 112, 128)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 112, 128)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 112, 128)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 96, 112)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 112, 128))))), concatenateMInt(xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 208, 224), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 208, 224)))), xorMInt(xorMInt(orMInt(concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 240, 256), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R2, RSMap), 240, 256)))))) )


)

    </regstate>


// hsubps-xmm-xmm

  rule <k>
    execinstr (hsubps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32))))) )


)

    </regstate>


// vfnmadd231sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd231sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  (  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// popcntw-r16-r16

  rule <k>
    execinstr (popcntw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (mi(1, 0) )

 "AF" |-> (mi(1, 0) )

 "PF" |-> (mi(1, 0) )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, countOnes(extractMInt(getParentValue(R1, RSMap), 48, 64), 0)), 48, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vandnps-ymm-ymm-ymm

  rule <k>
    execinstr (vandnps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128))), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// andl-r32-r32

  rule <k>
    execinstr (andl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 33), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovsw-r16-r16

  rule <k>
    execinstr (cmovsw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(32, 0), getFlag("SF", RSMap)), mi(33, 4294967295)), 1, 33), mi(32, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// decw-r16

  rule <k>
    execinstr (decw R1:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 65535)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(17, 65535)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cmovngq-r64-r64

  rule <k>
    execinstr (cmovngq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)) ) #else ( mi(8, 0) ) #fi) , mi(8, 0)), mi(8, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vfmsub213sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub213sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vpbroadcastq-xmm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// subps-xmm-xmm

  rule <k>
    execinstr (subps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vaddsd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vpunpckhdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhdq R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// vfnmsub213sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub213sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(mi(64, 0), extractMInt(getParentValue(R3, RSMap), 128, 192)), Float2MInt( (  (  ( negateFloat( ( minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11))  *Float  minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11)) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setle-rh

  rule <k>
    execinstr (setle R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// cmpxchgb-rh-r8

  rule <k>
    execinstr (cmpxchgb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)) )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R2, "RAX")

  rule <k>
    execinstr (cmpxchgb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) 
  #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 48, 56))) ) 
  #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))) )  #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R2, "RAX")



// pandn-xmm-xmm

  rule <k>
    execinstr (pandn R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// unpcklpd-xmm-xmm

  rule <k>
    execinstr (unpcklpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// vpunpcklqdq-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpcklqdq R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movhlps-xmm-xmm

  rule <k>
    execinstr (movhlps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)) )


)

    </regstate>


// cmovgel-r32-r32

  rule <k>
    execinstr (cmovgel R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// cmovnzl-r32-r32

  rule <k>
    execinstr (cmovnzl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) ) #else ( concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) ) #fi)  )


)

    </regstate>


// subpd-xmm-xmm

  rule <k>
    execinstr (subpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vmovq-xmm-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(192, 0), extractMInt(getParentValue(R1, RSMap), 192, 256)) )


)

    </regstate>


// vhsubps-xmm-xmm-xmm

  rule <k>
    execinstr (vhsubps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32)))) )


)

    </regstate>


// xaddb-rh-rh

  rule <k>
    execinstr (xaddb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

    rule <k>
    execinstr (xaddb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R1, R2)



// xchgb-rh-rh

  rule <k>
    execinstr (xchgb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// cmpw-r16-r16

  rule <k>
    execinstr (cmpw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 17)), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(17, 1)), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpmovsxwd-ymm-xmm

  rule <k>
    execinstr (vpmovsxwd R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 128, 144)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 144, 160))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160)))), 49, 65))))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 160, 176)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 176, 192))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)))), 49, 65))))), mi(65, 1)), 1, 65)), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 49, 65))))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 65))) )


)

    </regstate>


// movlhps-xmm-xmm

  rule <k>
    execinstr (movlhps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movq-r64-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256) )


)

    </regstate>


// vunpcklpd-xmm-xmm-xmm

  rule <k>
    execinstr (vunpcklpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// vmovshdup-xmm-xmm

  rule <k>
    execinstr (vmovshdup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))) )


)

    </regstate>


// xchgl-r32-r32

  rule <k>
    execinstr (xchgl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))   )


)

    </regstate>


// bswap-r64

  rule <k>
    execinstr (bswap R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 40, 48), extractMInt(getParentValue(R1, RSMap), 32, 40)))), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 24, 32), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 16, 24), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 8, 16), extractMInt(getParentValue(R1, RSMap), 0, 8))))) )


)

    </regstate>


// cmovnoq-r64-r64

  rule <k>
    execinstr (cmovnoq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(mi(8, 0), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 0), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(mi(8, 0), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 0), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vunpcklpd-ymm-ymm-ymm

  rule <k>
    execinstr (vunpcklpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// cmovgeq-r64-r64

  rule <k>
    execinstr (cmovgeq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap)))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// setna-rh

  rule <k>
    execinstr (setna R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// subb-r8-rh

  rule <k>
    execinstr (subb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 48, 49)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 48, 56)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setng-r8

  rule <k>
    execinstr (setng R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 0)) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), mi(8, 1)) ) #fi)  )


)

    </regstate>


// xaddb-rh-r8

  rule <k>
    execinstr (xaddb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)
  rule <k>
    execinstr (xaddb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0, 1)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R1, R2)


// testb-rh-rh

  rule <k>
    execinstr (testb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 33), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 33)))) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), orMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64), xorMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64), orMInt(extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 56))), 32, 64), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfmsub213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// shlw-r16-one

  rule <k>
    execinstr (shlw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 9, 17), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64))), 1, 17), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movsldup-xmm-xmm

  rule <k>
    execinstr (movsldup R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// unpckhpd-xmm-xmm

  rule <k>
    execinstr (unpckhpd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// setnge-r8

  rule <k>
    execinstr (setnge R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("OF", RSMap)), concatenateMInt(mi(7, 0), getFlag("SF", RSMap)))) )


)

    </regstate>


// cmpxchgb-r8-rh

  rule <k>
    execinstr (cmpxchgb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
  requires notBool sameRegisters(R2, "RAX")

  rule <k>
    execinstr (cmpxchgb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
  requires sameRegisters(R2, "RAX")


// vpmovsxbq-xmm-xmm

  rule <k>
    execinstr (vpmovsxbq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 240, 248))))), 33, 65)))), mi(64, svalueMInt(xorMInt(mi(32, -128), extractMInt(addMInt(mi(65, 18446743528248704896), concatenateMInt(mi(1, 0), concatenateMInt(mi(32, -128), concatenateMInt(mi(24, 0), extractMInt(getParentValue(R1, RSMap), 248, 256))))), 33, 65)))))) )


)

    </regstate>


// setb-rh

  rule <k>
    execinstr (setb R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// cmovnzq-r64-r64

  rule <k>
    execinstr (cmovnzq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(8, 0), getFlag("ZF", RSMap)), concatenateMInt(mi(8, 0), getFlag("ZF", RSMap))), 1, 9), mi(8, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// movb-rh-rh

  rule <k>
    execinstr (movb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// setnp-rh

  rule <k>
    execinstr (setnp R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// paddd-xmm-xmm

  rule <k>
    execinstr (paddd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192))), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R2, RSMap), 160, 192))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224)))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R2, RSMap), 224, 256)))), 33, 65)))) )


)

    </regstate>


// vcvtss2sd-xmm-xmm-xmm

  rule <k>
    execinstr (vcvtss2sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// cmovzw-r16-r16

  rule <k>
    execinstr (cmovzw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// cmpxchgb-rh-rh

  rule <k>
    execinstr (cmpxchgb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)) )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) ) #else ( getParentValue(R2, RSMap) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires notBool sameRegisters(R2, "RAX")

  rule <k>
    execinstr (cmpxchgb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(%rax, RSMap), 56, 57), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(%rax, RSMap), 56, 64)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), mi(8, 255)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>
      requires sameRegisters(R2, "RAX")


// cmovgw-r16-r16

  rule <k>
    execinstr (cmovgw R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// incb-r8

  rule <k>
    execinstr (incb R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> (extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 1), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// punpcklqdq-xmm-xmm

  rule <k>
    execinstr (punpcklqdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// blsmskl-r32-r32

  rule <k>
    execinstr (blsmskl R1:R32, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 0, 1) )

 "SF" |-> (xorMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 34), extractMInt(getParentValue(R1, RSMap), 32, 33)) )

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18))  andBool   notBool  ( eqMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 18), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25)), concatenateMInt(mi(1, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 17, 25))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (xorMInt(concatenateMInt(mi(32, 0), extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(addMInt(mi(65, 18446744073709551615), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))), 33, 65), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpunpckhdq-ymm-ymm-ymm

  rule <k>
    execinstr (vpunpckhdq R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 32), extractMInt(getParentValue(R2, RSMap), 0, 32)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// andnl-r32-r32-r32

  rule <k>
    execinstr (andnl R1:R32, R2:R32, R3:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "AF" |-> (undef)

convToRegKeys(R3) |-> (concatenateMInt(mi(32, 0), xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), orMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R1, RSMap), 32, 33))) )

 "PF" |-> (undef)

 "OF" |-> (mi(1, 0) )


)

    </regstate>


// vrsqrtps-xmm-xmm

  rule <k>
    execinstr (vrsqrtps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// rorw-r16-one

  rule <k>
    execinstr (rorw $0x1, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 64))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 57), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 48, 56))), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R2, RSMap), 63, 64))), 1, 9)))))), 1), 56, 64), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))))), 1), 56, 64))) )


)

    </regstate>


// vdivsd-xmm-xmm-xmm

  rule <k>
    execinstr (vdivsd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setnc-rh

  rule <k>
    execinstr (setnc R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(9, 0), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), mi(17, 4)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vunpckhpd-ymm-ymm-ymm

  rule <k>
    execinstr (vunpckhpd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// vfnmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) , 32)))), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// subb-rh-r8

  rule <k>
    execinstr (subb R1:R8, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(mi(1, 1), extractMInt(getParentValue(R1, RSMap), 56, 57)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)))), mi(9, 1)), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// cbtw

  rule <k>
    execinstr (cbtw  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64))), 48, 64)) )


)

    </regstate>


// cmovleq-r64-r64

  rule <k>
    execinstr (cmovleq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(xorMInt((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1)) ) #else ( mi(8, 0) ) #fi) , mi(8, 0)), mi(8, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// cvtdq2ps-xmm-xmm

  rule <k>
    execinstr (cvtdq2ps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 128, 160)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 160, 192)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 24, 8), 32), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 24, 8), 32))))) )


)

    </regstate>


// mulsd-xmm-xmm

  rule <k>
    execinstr (mulsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// punpckhdq-xmm-xmm

  rule <k>
    execinstr (punpckhdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R2, RSMap), 160, 192)))) )


)

    </regstate>


// nopw-r16

  rule <k>
    execinstr (nopw R1:R16,  .Operands) => .
  ...</k>


// vfnmsub213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// maxss-xmm-xmm

  rule <k>
    execinstr (maxss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)) )


)

    </regstate>


// setnae-r8

  rule <k>
    execinstr (setnae R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// setbe-r8

  rule <k>
    execinstr (setbe R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) ) #fi)  )


)

    </regstate>


// vcvtps2pd-xmm-xmm

  rule <k>
    execinstr (vcvtps2pd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// movsbw-r16-rh

  rule <k>
    execinstr (movsbw R1:Rh, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 48, 64)) )


)

    </regstate>


// incq-r64

  rule <k>
    execinstr (incq R1:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(64, 1), getParentValue(R1, RSMap)), extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 0, 1))  andBool   notBool  ( eqMInt(mi(1, 0), extractMInt(addMInt(mi(65, 1), concatenateMInt(mi(1, 0), getParentValue(R1, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>


// vfnmsub132ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub132ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))) )


)

    </regstate>


// minss-xmm-xmm

  rule <k>
    execinstr (minss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32)) )


)

    </regstate>


// vfnmsub213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vphaddd-xmm-xmm-xmm

  rule <k>
    execinstr (vphaddd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 128, 160)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 160, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(mi(33, 0), extractMInt(getParentValue(R1, RSMap), 192, 224))), 33, 65)), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 160), extractMInt(getParentValue(R2, RSMap), 128, 160))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), 33, 65), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 192, 224), extractMInt(getParentValue(R2, RSMap), 192, 224))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), 33, 65)))) )


)

    </regstate>


// vfnmadd132sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd132sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), mi(64, 0)), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(xorMInt(extractMInt(getParentValue(R3, RSMap), 192, 256), mi(64, 0)), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// movupd-xmm-xmm

  rule <k>
    execinstr (movupd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vfmadd213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// addq-r64-r64

  rule <k>
    execinstr (addq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65)), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 57, 65), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(getParentValue(R2, RSMap), 0, 1))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R1, RSMap), 0, 1), extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setz-r8

  rule <k>
    execinstr (setz R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vfmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// cmovow-r16-r16

  rule <k>
    execinstr (cmovow R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("OF", RSMap))), 1, 9), mi(8, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// setno-r8

  rule <k>
    execinstr (setno R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("OF", RSMap)), mi(8, 1))) )


)

    </regstate>


// cmovnlew-r16-r16

  rule <k>
    execinstr (cmovnlew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( (#ifMInt (eqMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #else ( getParentValue(R2, RSMap) ) #fi) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// xaddb-r8-r8

  rule <k>
    execinstr (xaddb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
      requires notBool sameRegisters(R1, R2)

  rule <k>
    execinstr (xaddb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 0, 1) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9)) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2) )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R1, RSMap), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>
      requires sameRegisters(R1, R2)


// setae-rh

  rule <k>
    execinstr (setae R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(9, 0), extractMInt(addMInt(mi(9, 255), concatenateMInt(mi(8, 0), getFlag("CF", RSMap))), 1, 9)), mi(17, 4)), 1, 9), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// subss-xmm-xmm

  rule <k>
    execinstr (subss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vandpd-xmm-xmm-xmm

  rule <k>
    execinstr (vandpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// sarq-r64-one

  rule <k>
    execinstr (sarq $0x1, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(getParentValue(R2, RSMap), 63, 64) )

 "SF" |-> (extractMInt(ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), 1), 0, 1) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), 1), 56, 64), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), 1) )

 "ZF" |-> ((#ifMInt (eqMInt(ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), 1), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movaps-xmm-xmm

  rule <k>
    execinstr (movaps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setp-r8

  rule <k>
    execinstr (setp R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("PF", RSMap))) )


)

    </regstate>


// vfmaddsub213ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub213ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  +Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vfnmadd213sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd213sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(mi(64, 0), extractMInt(getParentValue(R3, RSMap), 128, 192)), Float2MInt( (  (  ( negateFloat( ( minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11))  *Float  minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11)) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// cmovnpq-r64-r64

  rule <k>
    execinstr (cmovnpq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), concatenateMInt(mi(8, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1))))), mi(17, 1)), 9, 17)), concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 0))), mi(9, 255)), 1, 2)), mi(8, 1)))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R1, RSMap) ) #else ( getParentValue(R2, RSMap) ) #fi)  )


)

    </regstate>


// vandnpd-xmm-xmm-xmm

  rule <k>
    execinstr (vandnpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// seto-rh

  rule <k>
    execinstr (seto R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("OF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// setne-rh

  rule <k>
    execinstr (setne R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) ) #fi)  )


)

    </regstate>


// vmovdqa-ymm-ymm

  rule <k>
    execinstr (vmovdqa R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// rcll-r32-one

  rule <k>
    execinstr (rcll $0x1, R2:R32,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), getFlag("CF", RSMap))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(getParentValue(R2, RSMap), 32, 33))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 32, 33), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), getFlag("CF", RSMap))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 32, 64))), concatenateMInt(mi(32, 0), getFlag("CF", RSMap))), 1, 33)) )


)

    </regstate>


// pand-xmm-xmm

  rule <k>
    execinstr (pand R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R1, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))), xorMInt(orMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R1, RSMap), 192, 256)), xorMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))))) )


)

    </regstate>


// vpandn-ymm-ymm-ymm

  rule <k>
    execinstr (vpandn R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 0, 64), extractMInt(getParentValue(R2, RSMap), 0, 64)), extractMInt(getParentValue(R2, RSMap), 0, 64)), xorMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 64, 128), extractMInt(getParentValue(R2, RSMap), 64, 128)), extractMInt(getParentValue(R2, RSMap), 64, 128))), concatenateMInt(xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// setnae-rh

  rule <k>
    execinstr (setnae R1:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vfmadd132sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd132sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// vfmsub132sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vrcpss-xmm-xmm-xmm

  rule <k>
    execinstr (vrcpss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(mi(128, 0), extractMInt(getParentValue(R2, RSMap), 128, 224)), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// setna-r8

  rule <k>
    execinstr (setna R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) ) #else ( concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) ) #fi)  )


)

    </regstate>


// vfmadd231ss-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231ss R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))) )


)

    </regstate>


// maxsd-xmm-xmm

  rule <k>
    execinstr (maxsd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)), 64)) )


)

    </regstate>


// vpxor-xmm-xmm-xmm

  rule <k>
    execinstr (vpxor R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// orb-r8-r8

  rule <k>
    execinstr (orb R1:R8, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (orMInt(extractMInt(getParentValue(R2, RSMap), 56, 57), extractMInt(getParentValue(R1, RSMap), 56, 57)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vdivpd-xmm-xmm-xmm

  rule <k>
    execinstr (vdivpd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// cltq

  rule <k>
    execinstr (cltq  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 32, 64))) )


)

    </regstate>


// vfmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) , 64), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) , 64), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64)))) )


)

    </regstate>


// xorb-rh-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R1, RSMap), 48, 49)) )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ( (  ( countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// psubq-xmm-xmm

  rule <k>
    execinstr (psubq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 128, 192))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 128, 192))), mi(65, 1)), 1, 65), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), extractMInt(getParentValue(R1, RSMap), 192, 256))), concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 192, 256))), mi(65, 1)), 1, 65))) )


)

    </regstate>


// vfnmsub231sd-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231sd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R3, RSMap), 128, 192), Float2MInt( (  (  ( negateFloat( ( minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11))  *Float  minFloat(MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 224, 256)), 53, 11), MInt2Float(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 160, 192)), 53, 11)) ) )  -Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  -Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// rorb-rh-one

  rule <k>
    execinstr (rorb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 64))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 57), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 57))  andBool   notBool  ( eqMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 57), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 64)), concatenateMInt(mi(1, 0), extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 64))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(ashrMInt(mi(64, svalueMInt(mi(64, svalueMInt(concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))))), 1), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// cmovnaq-r64-r64

  rule <k>
    execinstr (cmovnaq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(16, 0), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)))), mi(32, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vfmaddsub213pd-xmm-xmm-xmm

  rule <k>
    execinstr (vfmaddsub213pd R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( (  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  -Float  ( negateFloat( (  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  *Float  MInt2Float(concatenateMInt(mi(32, 0), extractMInt(Float2MInt( ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), 0, 32)), 53, 11) ) )  -Float  ( -0e+00  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  )  ) , 64))) )


)

    </regstate>


// rolb-rh-one

  rule <k>
    execinstr (rolb $0x1, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 0, 1) )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(getParentValue(R2, RSMap), 48, 49))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 48, 56)))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// vpmovsxwq-ymm-xmm

  rule <k>
    execinstr (vpmovsxwq R1:Xmm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 49, 65))))), mi(65, 1)), 1, 33))), mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 192, 208)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 208, 224))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 224), extractMInt(getParentValue(R1, RSMap), 192, 224)))), 49, 65))))), mi(65, 1)), 33, 65)))), concatenateMInt(mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 1, 33))), mi(64, svalueMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), xorMInt(mi(64, 18446744073709551615), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 240, 256))))), concatenateMInt(mi(1, 0), concatenateMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 33, 49)), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256))), concatenateMInt(mi(1, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))), 49, 65))))), mi(65, 1)), 33, 65))))) )


)

    </regstate>


// vfnmadd231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmadd231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32)))) )


)

    </regstate>


// setpo-r8

  rule <k>
    execinstr (setpo R1:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))) )


)

    </regstate>


// cmovgew-r16-r16

  rule <k>
    execinstr (cmovgew R1:R16, R2:R16,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(concatenateMInt(mi(56, 0), xorMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), mi(8, 1))), mi(64, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) ) #fi)  )


)

    </regstate>


// sbbb-rh-rh

  rule <k>
    execinstr (sbbb R1:Rh, R2:Rh,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 0, 1)), mi(17, 65535)), 9, 17))), 0, 1) )

 "SF" |-> (extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2) )

 "AF" |-> ((#ifMInt ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255))), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9)), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ( (  ( countOnes(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), 0)  &Int  1 )  ==K  0 )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt ( ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 49), mi(1, 1)))  andBool   notBool  ( eqMInt(extractMInt(getParentValue(R2, RSMap), 48, 49), extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 2)) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 56)), concatenateMInt(mi(1, 0), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), mi(8, 255)))), concatenateMInt(mi(8, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), getFlag("CF", RSMap)), mi(17, 65535)), 9, 17))), 0, 1))), 1, 9), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movd-xmm-r32

  rule <k>
    execinstr (movd R1:R32, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(96, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )


)

    </regstate>


// vmovsldup-ymm-ymm

  rule <k>
    execinstr (vmovsldup R1:Ymm, R2:Ymm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 96, 128), extractMInt(getParentValue(R1, RSMap), 96, 128))), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 160, 192), extractMInt(getParentValue(R1, RSMap), 160, 192)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// cmovnlq-r64-r64

  rule <k>
    execinstr (cmovnlq R1:R64, R2:R64,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(extractMInt(addMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(1, 0), xorMInt(mi(16, 65535), extractMInt(getParentValue(R2, RSMap), 48, 64)))), concatenateMInt(mi(16, 0), extractMInt(addMInt(concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17)), concatenateMInt(mi(1, 0), extractMInt(addMInt(concatenateMInt(mi(16, 0), xorMInt(xorMInt(getFlag("SF", RSMap), getFlag("OF", RSMap)), mi(1, 1))), mi(17, 65535)), 9, 17))), 0, 1))), 1, 17), mi(16, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// mulss-xmm-xmm

  rule <k>
    execinstr (mulss R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vpbroadcastd-xmm-xmm

  rule <k>
    execinstr (vpbroadcastd R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vcvtdq2ps-xmm-xmm

  rule <k>
    execinstr (vcvtdq2ps R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 128, 160)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 160, 192)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 24, 8), 32), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 24, 8), 32))))) )


)

    </regstate>

endmodule