requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-BASE-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

/*@ This file defines the semantics of following 51 base instructions.
  - vsubpd_ymm_ymm_ymm, vsubps_ymm_ymm_ymm,
*/

// vsubpd-ymm-ymm-ymm

   rule <k>
    execinstr(vsubpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vsubpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 64), 
          splitVector(getRegisterValue(Y1, RSMap), 64), vfsub, 64)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>


  rule <k> execinstr(vsubpd  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vsubps-ymm-ymm-ymm

   rule <k>
    execinstr(vsubps  Y1:Ymm,  Y2:Ymm, DestR, .Typedoperands) =>
      execinstr(vsubps  DestR, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 32), 
          splitVector(getRegisterValue(Y1, RSMap), 32), vfsub, 32)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vsubps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vsub-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vdivpd_ymm_ymm_ymm, vdivps_ymm_ymm_ymm,
*/

// vdivpd-ymm-ymm-ymm

  rule <k>
    execinstr(vdivpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vdivpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfdiv, 64)), .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vdivpd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vdivps-ymm-ymm-ymm

  rule <k>
    execinstr(vdivps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vdivps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfdiv, 32)), .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vdivps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vdiv-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - popcntq_r64_r64,
*/

// popcnt-r64-r64

  rule <k> 
    execinstr(popcntq  (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      setFlag(zeroMIntW1, "OF") ~>
      setFlag(zeroMIntW1, "SF") ~>
      setFlag(zeroMIntW1, "AF") ~>
      setFlag(zeroMIntW1, "CF") ~>
      setFlag(zeroMIntW1, "PF") ~>
      setFlag(
          (#ifMInt zeroMInt(getRegisterValue(R1, RSMap))
      #then
          oneMIntW1
      #else
          zeroMIntW1
      #fi):>MInt 
          , "ZF") ~>
      setRegisterValue(mi(getRegisterSize(R2), popCount(getRegisterValue(R1, RSMap))), R2) 
  ...</k>
    <regstate> RSMap </regstate>

  /*
  rule <k> 
    execinstr(popcntq  (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      execinstr(popcntq  (R2, mi(getRegisterSize(R1), popCount(getRegisterValue(R1, RSMap))), .Typedoperands)) 
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr(popcntq  ( DestR, MIsrc, .Typedoperands )) => 
    setFlag(zeroMIntW1, "OF") ~>
    setFlag(zeroMIntW1, "ZF") ~>
    setFlag(zeroMIntW1, "SF") ~>
    setFlag(zeroMIntW1, "AF") ~>
    setFlag(zeroMIntW1, "CF") ~>
    setFlag(zeroMIntW1, "PF") ~>
    setRegisterValue(MIsrc, DestR) 
  ...</k>
      requires notBool zeroMInt(MIsrc)

  rule <k>
    execinstr(popcntq  ( DestR:R64, MIsrc, .Typedoperands )) => 
    setFlag(zeroMIntW1, "OF") ~>
    setFlag(oneMIntW1,  "ZF") ~>
    setFlag(zeroMIntW1, "SF") ~>
    setFlag(zeroMIntW1, "AF") ~>
    setFlag(zeroMIntW1, "CF") ~>
    setFlag(zeroMIntW1, "PF") ~>
    setRegisterValue(MIsrc, DestR) 
  ...</k>
      requires zeroMInt(MIsrc)
  */



// popcnt-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - adcw_r16_r16, adcl_r32_r32, adcq_r64_r64, adcb_r8_r8,
*/

// adc-r8-r8

  rule <k> 
    execinstr (adcb (R1:R8,  (R2:R8, .Typedoperands)) ) =>
      execinstr(adcb (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            zeroExtend(getFlag("CF", RSMap), 8), .Typedoperands)) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcb ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, .Typedoperands )) => 
      execinstr(adcb ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry, addMInt(MIsrc1, MIsrc2), 
            addMInt(addMInt(MIsrc1, MIsrc2), MIcarry), .Typedoperands )) 
  ...</k>
  
  rule <k>
    execinstr(adcb ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>



// adc-r16-r16

  rule <k> 
    execinstr (adcw (R1:R16,  (R2:R16, .Typedoperands)) ) =>
      execinstr(adcw (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            zeroExtend(getFlag("CF", RSMap), 16), .Typedoperands)) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k>
    execinstr(adcw ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, .Typedoperands )) => 
      execinstr(adcw ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry, addMInt(MIsrc1, MIsrc2), 
            addMInt(addMInt(MIsrc1, MIsrc2), MIcarry), .Typedoperands )) 
  ...</k>
  
  rule <k>
    execinstr(adcw ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>



// adc-r32-r32

  rule <k> 
    execinstr (adcl (R1:R32,  (R2:R32, .Typedoperands)) ) =>
      execinstr(adcl (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            zeroExtend(getFlag("CF", RSMap), 32), .Typedoperands)) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    execinstr(adcl ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, .Typedoperands )) => 
      execinstr(adcl ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry, addMInt(MIsrc1, MIsrc2), 
            addMInt(addMInt(MIsrc1, MIsrc2), MIcarry), .Typedoperands )) 
  ...</k>
  
  rule <k>
    execinstr(adcl ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(concatenateMInt(mi(32, 0), MIresult), convSubRegsToRegs(DestR)) 
  ...</k>



// adc-r64-r64

  rule <k> 
    execinstr (adcq (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      execinstr(adcq (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            zeroExtend(getFlag("CF", RSMap), 64), .Typedoperands)) 
  ...</k>
  <regstate> RSMap </regstate>

  rule <k> 
    execinstr(adcq ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, .Typedoperands )) => 
      execinstr(adcq ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry, addMInt(MIsrc1, MIsrc2), 
            addMInt(addMInt(MIsrc1, MIsrc2), MIcarry), .Typedoperands )) 
  ...</k>
  
  rule <k>
    execinstr(adcq ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k>



// adc-semantics


// add-imm-r8

  rule <k> 
    execinstr(addq  (I:Imm ,  (R:R64 , .Typedoperands)) ) => 
      execinstr(addq  (R, handleImmediate(I, 64), getRegisterValue(R, RSMap), 
            addMInt(handleImmediate(I, 64), getRegisterValue(R, RSMap)), 
            .Typedoperands)) 
  ...</k>
  <regstate> RSMap </regstate>

  rule
  <k>
    execinstr(addq  ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Typedoperands )) =>
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIresult, zeroMIntW64, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
  ...</k> 



// add-semantics


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
    execinstr(vcvtdq2pd  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
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
    execinstr(vcvtdq2ps  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
      setRegisterValue(
          joinVector(convertFpsToMInts(convertIntsToFps(convertMIntsToSInts(splitVector(getRegisterValue(Y1, RSMap), 32)), 24, 8), 32)),  
          Y2)  
  ...</k>
    <regstate> RSMap</regstate>


// vcvtps2pd-ymm-xmm

  rule <k>
    execinstr(vcvtps2pd  X:Xmm,  Y:Ymm, .Typedoperands) =>
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
    execinstr(vaddpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vaddpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), splitVector(getRegisterValue(Y2, RSMap), 64), 
          vfadd, 64)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>  

  rule <k> execinstr(vaddpd  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vaddps-ymm-ymm-ymm

  rule <k>
    execinstr(vaddps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vaddps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), splitVector(getRegisterValue(Y2, RSMap), 32), 
          vfadd, 32)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>  

  rule <k> execinstr(vaddps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vadd-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vmaxpd_ymm_ymm_ymm, vmaxps_ymm_ymm_ymm,
*/

// vmaxpd-ymm-ymm-ymm

  rule <k>
    execinstr(vmaxpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
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
    execinstr(vmaxpd  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Typedoperands) =>
      execinstr(vmaxpd  Y2, getRegisterValue(Y1, RSMap), .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vmaxpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vmaxpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfmax, 64)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmaxpd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>
  */


// vmaxps-ymm-ymm-ymm

  rule <k>
    execinstr(vmaxps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
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
    execinstr(vmaxps  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Typedoperands) =>
      execinstr(vmaxps  Y2, getRegisterValue(Y1, RSMap), .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vmaxps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vmaxps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfmax, 32)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmaxps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>
  */



// vmax-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfnmadd132pd_ymm_ymm_ymm, vfnmadd132ps_ymm_ymm_ymm,
*/

// vfnmadd132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmadd132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfnmadd132pd  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
              splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfnegate, 64), vfadd, 64)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfnmadd132pd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmadd132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmadd132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfnmadd132ps  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
              splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfnegate, 32), vfadd, 32)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfnmadd132ps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmadd132-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movq_r64_imm64, movq_r64_r64, movb_r8_rh, movb_rh_r8,
*/

// mov-r64-r64

  rule <k> 
    execinstr(movq  (R1:R64,  (R2:R64, .Typedoperands)) ) => .
  ...</k>
    <regstate> RSMap </regstate>
      requires sameRegisters(R1, R2)
  

  rule <k> 
    execinstr(movq  (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>
      requires notBool sameRegisters(R1, R2)
  


// mov-r64-imm64

  rule <k> 
    execinstr(movq  (I:Imm,  (R:R64, .Typedoperands)) ) =>
      setRegisterValue(handleImmediate(I, 64), R)
  ...</k>


// mov-r8-rh

  rule <k> 
    execinstr(movb  (R1:Rh,  (R2:R8, .Typedoperands)) ) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>



// mov-rh-r8

  rule <k> 
    execinstr(movb  (R1:R8,  (R2:Rh, .Typedoperands)) ) =>
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap </regstate>



// mov-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfmadd132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm,
*/

// vfmadd132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfmadd132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfmadd132pd  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfadd, 64)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfmadd132pd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmadd132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfmadd132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfmadd132ps  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfadd, 32)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfmadd132ps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmadd132-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vsqrtpd_ymm_ymm_ymm, vsqrtps_ymm_ymm_ymm,
*/

// vsqrtpd-ymm-ymm

  rule <k>
    execinstr(vsqrtpd  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
      execinstr(vsqrtpd  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), vfsqrt, 64)), .Typedoperands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vsqrtpd  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vsqrtps-ymm-ymm

  rule <k>
    execinstr(vsqrtps  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
      execinstr(vsqrtps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfsqrt, 32)), .Typedoperands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vsqrtps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vsqrt-semantics


/*@ This file defines the semantics of following  base instructions.
  - vrsqrtps_ymm_ymm
*/

// vrsqrtps-ymm-ymm

  rule <k>
    execinstr(vrsqrtps  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
      execinstr(vsqrtps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfrsqrt, 32)), .Typedoperands)
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> execinstr(vrsqrtps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vrsqrtps-ymm-ymm-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - movswq_r64_r16, movsbq_r64_r8, movslq_r64_r32,

*/

// movs-r64-r8

  rule <k> 
    execinstr(movsbq  (R1:R8,  (R2:R64, .Typedoperands)) ) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>



// movs-r64-r16

  rule <k> 
    execinstr(movswq  (R1:R16,  (R2:R64, .Typedoperands)) ) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>



// movs-r64-r32

  rule <k> 
    execinstr(movslq  (R1:R32,  (R2:R64, .Typedoperands)) ) =>
      setRegisterValue(signExtend(getRegisterValue(R1, RSMap), 64), R2) 
  ...</k>
    <regstate> RSMap</regstate>



// movs-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - xorq_r64_r64,
*/

// xor-r64-r64

  rule <k> 
    execinstr(xorq  (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      execinstr(xorq  (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            xorMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Typedoperands)) 
  ...</k>
    <regstate> RSMap</regstate>  

  rule
      execinstr(xorq  ( DestR, MIsrc1, MIsrc2, MIresult, .Typedoperands )) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 



// xor-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfnmsub132pd_ymm_ymm_ymm, vfnmsub132ps_ymm_ymm_ymm,
*/

// vfnmsub132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmsub132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfnmsub132pd  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
              splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfnegate, 64), vfsub, 64)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfnmsub132pd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfnmsub132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfnmsub132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfnmsub132ps  Y1, 
      joinVector(
        operateOnVector(
          splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
              splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfnegate, 32), vfsub, 32)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate> 

  rule <k> execinstr(vfnmsub132ps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


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
      S |-> plugInMask(RSMap[S]:>MInt, getRegisterValue(R, RSMap), 0)
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
            extractMask(RSMap[S]:>MInt, W1, S1),
            extractMask(getRegisterValue(R, RSMap), RW, RS))
          , R)
  ...</k>
    <regstate> RSMap </regstate>
      requires W2 ==Int 0

  rule <k>
    restoreRegister(S, S1, W1, S2, W2, RS, RW, R) => 
      setRegisterValue(
          concatenateMInt(
            extractMask(RSMap[S]:>MInt, W2, S2),
            concatenateMInt( 
              extractMask(getRegisterValue(R, RSMap), RW, RS),
              extractMask(RSMap[S]:>MInt, W1, S1))
            ) , R)
  ...</k>
    <regstate> RSMap </regstate>
      requires W2 =/=Int 0


// pseudo-instr-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - sarq_r64_cl
*/
// sar-r64-cl

  rule <k> 
    execinstr(sarq  (%cl,  (R:R64, .Typedoperands)) ) =>
      execinstr(sarq  (R,  (getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 
                bitwidthMInt(getRegisterValue(R, RSMap))), .Typedoperands)) )
  ...</k>
    <regstate> RSMap</regstate>


  rule <k>
  execinstr(sarq  (R,  (MIsrc, MIcount, .Typedoperands)) ) => 
    setFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          zeroMIntW1
        #else
          undef
        #fi 
      #fi  
        , 
        "OF") ~> 

    updateZeroFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("ZF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          aShiftRightMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          sarOverflow(MIsrc)
        #fi 
      #fi  
        ) ~> 

    updateSignFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("SF", RSMap), mi(1, 1)) 
        #then
          mi(64, -9223372036854775808)
        #else
          mi(64, 0)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          aShiftRightMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          sarOverflow(MIsrc)
        #fi 
      #fi  
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

    updateParityFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("PF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          aShiftRightMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          sarOverflow(MIsrc)
        #fi 
      #fi  
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
  /*
  // If MIcount == 0, no flags are affected
  rule
  execinstr(sarq  (_,  (MIsrc, MIcount, .Typedoperands)) ) => .
    requires zeroMInt(MIcount)
    
  // If MIcount == 1
  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) => 
    execinstr(sarq  (DestR,  (MIsrc, MIcount, aShiftRightMInt(MIsrc, 1), .Typedoperands)) ) 
  requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))

  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(extractMask(MIsrc, 1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
    requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
  
  // If MIcount < bitwidth(MIsrc)
  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(sarq  (DestR,  (MIsrc, MIcount, aShiftRightMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 
                aShiftRightMInt(MIsrc, uvalueMInt(MIcount)), .Typedoperands)) ) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, MIintermed, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(extractMask(MIintermed, 1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
    requires  notBool zeroMInt(MIcount) andBool 
              neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
              ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  // If MIcount >= bitwidth(MIsrc)
  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(sarq  (DestR,  (MIsrc, MIcount, sarOverflow(MIsrc),  .Typedoperands)) )
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(sarq  (DestR,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(getSignBit(MIsrc), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
  */


// sar-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vzeroall_ymm_ymm_ymm
*/

// vzeroall-ymm-ymm-ymm

  rule <k>
    execinstr(vzeroall  .Typedoperands) => .
  ...</k>
    <regstate> RSMap => updateMap(RSMap,
                          ("YMM0"  |->  zeroMIntW256) 
                          ("YMM1"  |->  zeroMIntW256) 
                          ("YMM2"  |->  zeroMIntW256) 
                          ("YMM3"  |->  zeroMIntW256) 
                          ("YMM4"  |->  zeroMIntW256) 
                          ("YMM5"  |->  zeroMIntW256) 
                          ("YMM6"  |->  zeroMIntW256) 
                          ("YMM7"  |->  zeroMIntW256) 
                          ("YMM8"  |->  zeroMIntW256) 
                          ("YMM9"  |->  zeroMIntW256) 
                          ("YMM10" |->  zeroMIntW256) 
                          ("YMM11" |->  zeroMIntW256) 
                          ("YMM12" |->  zeroMIntW256) 
                          ("YMM13" |->  zeroMIntW256) 
                          ("YMM14" |->  zeroMIntW256) 
                          ("YMM15" |->  zeroMIntW256) 
                        ) 
    </regstate>



// vzeroall-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vfmsub132pd_ymm_ymm_ymm, vfmadd132ps_ymm_ymm_ymm,
*/

// vfmsub132pd-ymm-ymm-ymm

  rule <k>
    execinstr(vfmsub132pd  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfmsub132pd  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 64), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
            splitVector(getRegisterValue(Y3, RSMap), 64), vfmul, 64), vfsub, 64)
      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfmsub132pd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmsub132ps-ymm-ymm-ymm

  rule <k>
    execinstr(vfmsub132ps  Y3:Ymm,  Y2:Ymm, Y1:Ymm, .Typedoperands) =>
      execinstr(vfmsub132ps  Y1, 
      joinVector(
        operateOnVector(splitVector(getRegisterValue(Y2, RSMap), 32), 
          operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
            splitVector(getRegisterValue(Y3, RSMap), 32), vfmul, 32), vfsub, 32)

      ), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vfmsub132ps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vfmsub132-semantics


/*@ This file defines the semantics of following  base instructions.
  - vrcpps_ymm_ymm
*/

// vrcpps-ymm-ymm

  rule <k>
    execinstr(vrcpps  Y1:Ymm,  Y2:Ymm, .Typedoperands) =>
      execinstr(vrcpps  Y2, joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), vfreciprocal, 32)), .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vrcpps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vrcpps-ymm-ymm-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vmulpd_ymm_ymm_ymm, vmulps_ymm_ymm_ymm,
*/

// vmulpd-ymm-ymm-ymm

  rule <k>
    execinstr(vmulpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vmulpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), splitVector(getRegisterValue(Y2, RSMap), 64), vfmul, 64)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmulpd  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>


// vmulps-ymm-ymm-ymm

  rule <k>
    execinstr(vmulps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vmulps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), splitVector(getRegisterValue(Y2, RSMap), 32), vfmul, 32)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> execinstr(vmulps  DestR, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) ...</k>



// vmul-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - vminpd_ymm_ymm_ymm, vminps_ymm_ymm_ymm,
*/

// vminpd-ymm-ymm-ymm

  rule <k>
    execinstr(vminpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
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
    execinstr(vminpd  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vminpd  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 64), 
          splitVector(getRegisterValue(Y2, RSMap), 64), vfmin, 64)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>
      requires notBool sameRegisters(Y1, Y2)

  rule <k> 
    execinstr(vminpd  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) 
  ...</k>
  */


// vminps-ymm-ymm-ymm

  rule <k>
    execinstr(vminps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
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
    execinstr(vminps  Y1:Ymm,  Y1:Ymm, Y2:Ymm, .Typedoperands) =>
      execinstr(vminps  Y2, getRegisterValue(Y1, RSMap), .Typedoperands) 
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
    execinstr(vminps  Y1:Ymm,  Y2:Ymm, Y3:Ymm, .Typedoperands) =>
      execinstr(vminps  Y3, 
      joinVector(operateOnVector(splitVector(getRegisterValue(Y1, RSMap), 32), 
          splitVector(getRegisterValue(Y2, RSMap), 32), vfmin, 32)), 
      .Typedoperands)
  ...</k>
    <regstate> RSMap</regstate>

  rule <k> 
    execinstr(vminps  DestR:Ymm, MIsrc:MInt, .Typedoperands ) => setRegisterValue(MIsrc, DestR) 
  ...</k>
  */



// vmin-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - shrq_r64_cl
*/

// shr-r64-cl

  rule <k> 
    execinstr(shrq  (%cl,  (R:R64, .Typedoperands)) ) =>
      execinstr(shrq  (R,  (getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 
                bitwidthMInt(getRegisterValue(R, RSMap))), .Typedoperands)) )
  ...</k>
    <regstate> RSMap</regstate>

  rule <k>
  execinstr(shrq  (R,  (MIsrc, MIcount, .Typedoperands)) ) => 
    setFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        getFlag("OF", RSMap)
      #else
        #ifMInt eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
        #then
          getSignBit(MIsrc)
        #else
          undef
        #fi 
      #fi  
        , 
        "OF") ~> 

    updateZeroFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("ZF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          lshrMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          shrOverflow(MIsrc)
        #fi 
      #fi  
        ) ~> 

    updateSignFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("SF", RSMap), mi(1, 1)) 
        #then
          mi(64, -9223372036854775808)
        #else
          mi(64, 0)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          lshrMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          shrOverflow(MIsrc)
        #fi 
      #fi  
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
            extractMask(lshrMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 1, 0)
          #else  
            getSignBit(MIsrc)
          #fi  
        #fi 
      #fi  
        , 
        "CF") ~> 

    updateParityFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("PF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          lshrMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          shrOverflow(MIsrc)
        #fi 
      #fi  
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
  /*
  // If MIcount == 0, no flags are affected
  rule
  execinstr(shrq  (_,  (MIsrc, MIcount, .Typedoperands)) ) => .
    requires zeroMInt(MIcount)
    
  // If MIcount == 1
  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) => 
    execinstr(shrq  (DestR,  (MIsrc, MIcount, lshrMInt(MIsrc, 1), .Typedoperands)) ) 
  requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))

  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(getSignBit(MIsrc), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(extractMask(MIsrc, 1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
    requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
  
  // If MIcount < bitwidth(MIsrc)
  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(shrq  (DestR,  (MIsrc, MIcount, lshrMInt(MIsrc, uvalueMInt(MIcount) -Int 1), 
                lshrMInt(MIsrc, uvalueMInt(MIcount)), .Typedoperands)) ) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, MIintermed, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(extractMask(MIintermed, 1, 0), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
    requires  notBool zeroMInt(MIcount) andBool 
              neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
              ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  // If MIcount >= bitwidth(MIsrc)
  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(shrq  (DestR,  (MIsrc, MIcount, shrOverflow(MIsrc), .Typedoperands)) )
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(shrq  (DestR,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(undef, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
  */


// shr-semantics


/*@ This file defines the semantics of following 51 base instructions.
  - salq_r64_cl
*/

// sal-r64-cl

  rule <k> 
    execinstr(salq  (%cl,  (R:R64, .Typedoperands)) ) =>
      execinstr(salq  (R,  (getRegisterValue(R, RSMap), shiftCountMask(getRegisterValue(%cl, RSMap), 64), .Typedoperands)) )
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
  execinstr(salq  (R,  (MIsrc:MInt, MIcount:MInt, .Typedoperands)) ) => 
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

    updateZeroFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("ZF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          shlMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          salOverflow(MIsrc)
        #fi 
      #fi  
        ) ~> 

    updateSignFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("SF", RSMap), mi(1, 1)) 
        #then
          mi(64, -9223372036854775808)
        #else
          mi(64, 0)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          shlMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          salOverflow(MIsrc)
        #fi 
      #fi  
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

    updateParityFlag(
      #ifMInt zeroMInt(MIcount)
      #then
        #ifMInt eqMInt( getFlag("PF", RSMap), mi(1, 1)) 
        #then
          mi(64, 0)
        #else
          mi(64, 1)
        #fi  
      #else
        #ifMInt  ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
        #then
          shlMInt(MIsrc, uvalueMInt(MIcount))
        #else 
          salOverflow(MIsrc)
        #fi 
      #fi  
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

  /*
  // If MIcount == 0, no flags are affected
  rule
  execinstr(salq  (_,  (MIsrc, MIcount, .Typedoperands)) ) => .
    requires zeroMInt(MIcount)
    
  // If MIcount == 1
  rule
  execinstr(salq  (R,  (MIsrc, MIcount, .Typedoperands)) ) => 
    execinstr(salq  (R,  (MIsrc, MIcount, shiftLeft(MIsrc, 1), .Typedoperands)) ) 
  requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))

  rule
  execinstr(salq  (R,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(xorMInt(getSignBit(MIsrc), getSignBit(MIresult)), "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(getSignBit(MIsrc), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, R) 
    requires eqMInt(MIcount, mi(bitwidthMInt(MIcount),1))
  
  // If MIcount < bitwidth(MIsrc)
  rule
  execinstr(salq  (R,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(salq  (R,  (MIsrc, MIcount, shiftLeft(MIsrc, 
              uvalueMInt(MIcount) -Int 1), shiftLeft(MIsrc, uvalueMInt(MIcount)), .Typedoperands)) ) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(salq  (R,  (MIsrc, MIcount, MIintermed, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(getSignBit(MIintermed), "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, R) 
    requires  notBool zeroMInt(MIcount) andBool 
              neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
              ultMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))


  // If MIcount >= bitwidth(MIsrc)
  rule
  execinstr(salq  (R,  (MIsrc, MIcount, .Typedoperands)) ) =>
    execinstr(salq  (R,  (MIsrc, MIcount, salOverflow(MIsrc),  .Typedoperands)) )
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))

  rule
  execinstr(salq  (R,  (MIsrc, MIcount, MIresult, .Typedoperands)) ) =>
      setFlag(undef, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      // Intel manual is not clear about carry Flag
      // if MIcount == bitwidth; CF == extractMask(Misrc, 1, 0); else CF == 0
      setFlag(undef, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, R) 
      requires  notBool zeroMInt(MIcount) andBool 
                neMInt(MIcount, mi(bitwidthMInt(MIcount),1)) andBool 
                ugeMInt(MIcount, mi(bitwidthMInt(MIcount),bitwidthMInt(MIsrc)))
  */


// sal-semantics


/*@ This file defines the semantics of following 51 base instructions.
  -  cmoveq_r64_r64
*/

// cmove-r64-r64

  /*
  rule <k> 
    execinstr(cmoveq  (R1:R64,  (R2:R64, .Typedoperands)) ) => .
  ...</k>
    <regstate> RSMap</regstate>
      requires sameRegisters(R1, R2) orBool zeroMInt(getFlag("ZF", RSMap))


  rule <k> 
    execinstr(cmoveq  (R1:R64,  (R2:R64, .Typedoperands)) ) => 
      setRegisterValue(getRegisterValue(R1, RSMap), R2)
  ...</k>
    <regstate> RSMap</regstate>
      requires  (notBool sameRegisters(R1, R2)) andBool (notBool zeroMInt(getFlag("ZF", RSMap)))
      */
  rule <k> 
    execinstr(cmoveq  (R1:R64,  (R2:R64, .Typedoperands)) ) => 
      setRegisterValue(
          #ifMInt zeroMInt(getFlag("ZF", RSMap)) #then 
            getRegisterValue(R2, RSMap) #else 
            getRegisterValue(R1, RSMap) #fi, 
          R2)
  ...</k>
    <regstate> RSMap</regstate>



// cmove-semantics



/*@ This file defines the semantics of following 51 base instructions.
  - orq_r64_r64,
*/

// or-r64-r64

  rule <k> 
    execinstr(orq  (R1:R64,  (R2:R64, .Typedoperands)) ) => 
      execinstr(orq  (R2, getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap), 
            orMInt(getRegisterValue(R1, RSMap), getRegisterValue(R2, RSMap)), .Typedoperands)) 
  ...</k>
    <regstate> RSMap</regstate>

  rule
      execinstr(orq  ( DestR, MIsrc1:MInt, MIsrc2:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      setFlag(zeroMIntW1, "OF") ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      setFlag(undef, "AF") ~> 
      setFlag(zeroMIntW1, "CF") ~> 
      updateParityFlag(MIresult) ~> 
      setRegisterValue(MIresult, DestR) 



// or-semantics

endmodule