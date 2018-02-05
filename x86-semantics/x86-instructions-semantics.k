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


// movzbq-r64-r8

  rule <k>
    execinstr (movzbq R1:R8, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// xaddq-r64-r64

  rule <k>
    execinstr (xaddq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), getParentValue(R1, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// rclw-r16-one

  rule <k>
    execinstr (rclw $0x1, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// xorps-xmm-xmm

  rule <k>
    execinstr (xorps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// addw-r16-r16

  rule <k>
    execinstr (addw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R1, RSMap), 48, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 8, 16), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovhlps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovhlps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))) )


)

    </regstate>


// nop

  rule <k>
    execinstr (nop  .Typedoperands) ~> inforegisters ~> fetch => .
  ...</k>


// xchgl-r32-eax

  rule <k>
    execinstr (xchgl %eax, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(%rax, RSMap), 32, 64)) )


)

    </regstate>


// movss-xmm-xmm

  rule <k>
    execinstr (movss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// vfnmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vminps-xmm-xmm-xmm

  rule <k>
    execinstr (vminps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// vrcpps-xmm-xmm

  rule <k>
    execinstr (vrcpps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// shlq-r64-cl

  rule <k>
    execinstr (shlq %cl, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("SF", RSMap), mi(1, 1)) ) #then ( mi(64, -9223372036854775808) ) #else ( mi(64, 0) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  ) #fi) , 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "CF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("CF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(shlMInt(getParentValue(R2, RSMap),  ( uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))  -Int  1 ) ), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( undef ) #fi)  ) #fi)  ) #fi)  )

 "AF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("AF", RSMap) ) #else ( undef ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("PF", RSMap), mi(1, 1)) ) #then ( mi(8, 0) ) #else ( mi(8, 1) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))), 56, 64) ) #else ( mi(8, 0) ) #fi)  ) #fi) , 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("OF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( xorMInt((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) , (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(shlMInt(getParentValue(R2, RSMap), 1), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) ) #else ( undef ) #fi)  ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 1)) ) #then ( mi(64, 0) ) #else ( mi(64, 1) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  ) #fi) , mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movups-xmm-xmm

  rule <k>
    execinstr (movups R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// movsbl-r32-r8

  rule <k>
    execinstr (movsbl R1:R8, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64)) )


)

    </regstate>


// xorw-r16-r16

  rule <k>
    execinstr (xorw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "AF" |-> (undef)

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )


)

    </regstate>


// setc-r8

  rule <k>
    execinstr (setc R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// adcb-rh-r8

  rule <k>
    execinstr (adcb R1:R8, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovups-ymm-ymm

  rule <k>
    execinstr (vmovups R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// movswl-r32-r16

  rule <k>
    execinstr (movswl R1:R16, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)) )


)

    </regstate>


// vxorps-xmm-xmm-xmm

  rule <k>
    execinstr (vxorps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vpunpcklqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpcklqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// sete-r8

  rule <k>
    execinstr (sete R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vaddps-xmm-xmm-xmm

  rule <k>
    execinstr (vaddps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// vfnmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32)))))))) )


)

    </regstate>


// vmovdqu-ymm-ymm

  rule <k>
    execinstr (vmovdqu R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// cvtdq2pd-xmm-xmm

  rule <k>
    execinstr (cvtdq2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 53, 11), 64), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 53, 11), 64))) )


)

    </regstate>


// vpmovsxdq-xmm-xmm

  rule <k>
    execinstr (vpmovsxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// divpd-xmm-xmm

  rule <k>
    execinstr (divpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vsubpd-xmm-xmm-xmm

  rule <k>
    execinstr (vsubpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vfmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// vorpd-xmm-xmm-xmm

  rule <k>
    execinstr (vorpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vfmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// vfmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// movw-r16-r16

  rule <k>
    execinstr (movw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// vpmovzxdq-xmm-xmm

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vmovq-xmm-r64

  rule <k>
    execinstr (vmovq R1:R64, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(192, 0), xorMInt(getParentValue(R1, RSMap), mi(64, 0))) )


)

    </regstate>


// vmovss-xmm-xmm-xmm

  rule <k>
    execinstr (vmovss R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), extractMInt(getParentValue(R1, RSMap), 224, 256))) )


)

    </regstate>


// vpunpckhqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// movd-r32-xmm

  rule <k>
    execinstr (movd R1:Xmm, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// rsqrtps-xmm-xmm

  rule <k>
    execinstr (rsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// por-xmm-xmm

  rule <k>
    execinstr (por R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// sqrtps-xmm-xmm

  rule <k>
    execinstr (sqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// xchgw-r16-r16

  rule <k>
    execinstr (xchgw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64))   )


)

    </regstate>


// andnq-r64-r64-r64

  rule <k>
    execinstr (andnq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (mi(1, 0) )

convToRegKeys(R3) |-> (xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setnz-rh

  rule <k>
    execinstr (setnz R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( mi(8, 1) ) #else ( mi(8, 0) ) #fi) , extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// setae-r8

  rule <k>
    execinstr (setae R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// vfmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// movsbl-r32-rh

  rule <k>
    execinstr (movsbl R1:Rh, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)) )


)

    </regstate>


// vsqrtps-xmm-xmm

  rule <k>
    execinstr (vsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// setno-rh

  rule <k>
    execinstr (setno R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(31, 0), getFlag("OF", RSMap)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// movzwl-r32-r16

  rule <k>
    execinstr (movzwl R1:R16, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// setc-rh

  rule <k>
    execinstr (setc R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vmovapd-xmm-xmm

  rule <k>
    execinstr (vmovapd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setnge-rh

  rule <k>
    execinstr (setnge R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// seto-r8

  rule <k>
    execinstr (seto R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))) )


)

    </regstate>


// shlq-r64-one

  rule <k>
    execinstr (shlq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// addss-xmm-xmm

  rule <k>
    execinstr (addss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vfnmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) ) ) , 32)))), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// addsd-xmm-xmm

  rule <k>
    execinstr (addsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// cqto

  rule <k>
    execinstr (cqto  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RDX" |-> (ashrMInt(mi(64, svalueMInt(getParentValue(%rax, RSMap))), 63)   )


)

    </regstate>


// notw-r16

  rule <k>
    execinstr (notw R1:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))) )


)

    </regstate>


// vmulps-xmm-xmm-xmm

  rule <k>
    execinstr (vmulps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfnmsub231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// vmovapd-ymm-ymm

  rule <k>
    execinstr (vmovapd R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// vmovaps-ymm-ymm

  rule <k>
    execinstr (vmovaps R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// vmovdqa-xmm-xmm

  rule <k>
    execinstr (vmovdqa R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// xchgq-rax-r64

  rule <k>
    execinstr (xchgq R1:R64, %rax,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (getParentValue(R1, RSMap) )

convToRegKeys(R1) |-> (getParentValue(%rax, RSMap)   )


)

    </regstate>


// xorb-r8-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// incw-r16

  rule <k>
    execinstr (incw R1:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1))), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 8, 16), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(mi(16, 0), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// incl-r32

  rule <k>
    execinstr (incl R1:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(mi(32, 0), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpbroadcastq-ymm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// movq-xmm-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, 0), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// cvtss2sd-xmm-xmm

  rule <k>
    execinstr (cvtss2sd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// vmovq-r64-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256)   )


)

    </regstate>


// paddq-xmm-xmm

  rule <k>
    execinstr (paddq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), addMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// adcb-rh-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(getParentValue(R2, RSMap), 48, 56))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// shlxq-r64-r64-r64

  rule <k>
    execinstr (shlxq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )


)

    </regstate>


// vbroadcastsd-ymm-xmm

  rule <k>
    execinstr (vbroadcastsd R1:Xmm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// addl-r32-r32

  rule <k>
    execinstr (addl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R1, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfnmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vmaxps-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// addpd-xmm-xmm

  rule <k>
    execinstr (addpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// orw-r16-r16

  rule <k>
    execinstr (orw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(orMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64)))), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), orMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// adcb-r8-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 48, 56))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovupd-ymm-ymm

  rule <k>
    execinstr (vmovupd R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// sets-r8

  rule <k>
    execinstr (sets R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("SF", RSMap))) )


)

    </regstate>


// xorl-r32-r32

  rule <k>
    execinstr (xorl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (xorMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movdqa-xmm-xmm

  rule <k>
    execinstr (movdqa R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// shlb-r8-one

  rule <k>
    execinstr (shlb $0x1, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// stc

  rule <k>
    execinstr (stc  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 1)   )


)

    </regstate>


// xchgw-r16-ax

  rule <k>
    execinstr (xchgw %ax, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(%rax, RSMap), 48, 64))   )


)

    </regstate>


// sarxq-r64-r64-r64

  rule <k>
    execinstr (sarxq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( (#ifMInt (eqMInt((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) , mi(1, 0)) ) #then ( mi(64, 0) ) #else ( mi(64, -1) ) #fi)  ) #fi)  )


)

    </regstate>


// divps-xmm-xmm

  rule <k>
    execinstr (divps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// rclq-r64-one

  rule <k>
    execinstr (rclq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  orBool  ( ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)))  orBool  ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// mulpd-xmm-xmm

  rule <k>
    execinstr (mulpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setnp-r8

  rule <k>
    execinstr (setnp R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// vpmovzxwq-xmm-xmm

  rule <k>
    execinstr (vpmovzxwq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// vmovupd-xmm-xmm

  rule <k>
    execinstr (vmovupd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// cmovzq-r64-r64

  rule <k>
    execinstr (cmovzq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vfnmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vmovups-xmm-xmm

  rule <k>
    execinstr (vmovups R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vfnmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) ) ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// xaddl-r32-r32

  rule <k>
    execinstr (xaddl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R1, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovaps-xmm-xmm

  rule <k>
    execinstr (vmovaps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vbroadcastss-xmm-xmm

  rule <k>
    execinstr (vbroadcastss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vfmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// cmovnzw-r16-r16

  rule <k>
    execinstr (cmovnzw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( extractMInt(getParentValue(R1, RSMap), 48, 64) ) #else ( extractMInt(getParentValue(R2, RSMap), 48, 64) ) #fi) ) )


)

    </regstate>


// vfnmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32)))))))) )


)

    </regstate>


// cvtps2pd-xmm-xmm

  rule <k>
    execinstr (cvtps2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// mulps-xmm-xmm

  rule <k>
    execinstr (mulps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vmovsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmovsd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// movddup-xmm-xmm

  rule <k>
    execinstr (movddup R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// addb-r8-r8

  rule <k>
    execinstr (addb R1:R8, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movapd-xmm-xmm

  rule <k>
    execinstr (movapd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// movdqu-xmm-xmm

  rule <k>
    execinstr (movdqu R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// orps-xmm-xmm

  rule <k>
    execinstr (orps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vmovddup-xmm-xmm

  rule <k>
    execinstr (vmovddup R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vorps-xmm-xmm-xmm

  rule <k>
    execinstr (vorps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// decq-r64

  rule <k>
    execinstr (decq R1:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(mi(64, 1), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovlhps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovlhps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movzbw-r16-rh

  rule <k>
    execinstr (movzbw R1:Rh, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))) )


)

    </regstate>


// clc

  rule <k>
    execinstr (clc  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )


)

    </regstate>


// addps-xmm-xmm

  rule <k>
    execinstr (addps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// setb-r8

  rule <k>
    execinstr (setb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// vaddpd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// nopl-r32

  rule <k>
    execinstr (nopl R1:R32,  .Typedoperands) => .
  ...</k>


// rcpps-xmm-xmm

  rule <k>
    execinstr (rcpps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// movsd-xmm-xmm

  rule <k>
    execinstr (movsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vfmsub132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// movzbw-r16-r8

  rule <k>
    execinstr (movzbw R1:R8, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vfmadd231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// rcpss-xmm-xmm

  rule <k>
    execinstr (rcpss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// shll-r32-one

  rule <k>
    execinstr (shll $0x1, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vsqrtpd-xmm-xmm

  rule <k>
    execinstr (vsqrtpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), 2), 64), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64))) )


)

    </regstate>


// pmovzxwq-xmm-xmm

  rule <k>
    execinstr (pmovzxwq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// movzbl-r32-rh

  rule <k>
    execinstr (movzbl R1:Rh, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))   )


)

    </regstate>


// decb-r8

  rule <k>
    execinstr (decb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// rolw-r16-one

  rule <k>
    execinstr (rolw $0x1, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64))  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ))) )


)

    </regstate>


// rolq-r64-one

  rule <k>
    execinstr (rolq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ( ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)))  orBool  ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// xchgq-r64-r64

  rule <k>
    execinstr (xchgq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )


)

    </regstate>


// pmovsxdq-xmm-xmm

  rule <k>
    execinstr (pmovsxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// vmovdqu-xmm-xmm

  rule <k>
    execinstr (vmovdqu R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// popcntw-r16-r16

  rule <k>
    execinstr (popcntw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (mi(1, 0) )

 "AF" |-> (mi(1, 0) )

 "PF" |-> (mi(1, 0) )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, countOnes(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), 0)), 48, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpbroadcastq-xmm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// xchgl-eax-r32

  rule <k>
    execinstr (xchgl R1:R32, %eax,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(%rax, RSMap), 32, 64))   )


)

    </regstate>


// unpcklpd-xmm-xmm

  rule <k>
    execinstr (unpcklpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movlhps-xmm-xmm

  rule <k>
    execinstr (movlhps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movq-r64-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256) )


)

    </regstate>


// xchgl-r32-r32

  rule <k>
    execinstr (xchgl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))   )


)

    </regstate>


// setb-rh

  rule <k>
    execinstr (setb R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// movb-rh-rh

  rule <k>
    execinstr (movb R1:Rh, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// setnp-rh

  rule <k>
    execinstr (setnp R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vcvtss2sd-xmm-xmm-xmm

  rule <k>
    execinstr (vcvtss2sd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// cmovzw-r16-r16

  rule <k>
    execinstr (cmovzw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( extractMInt(getParentValue(R2, RSMap), 48, 64) ) #else ( extractMInt(getParentValue(R1, RSMap), 48, 64) ) #fi) ) )


)

    </regstate>


// incb-r8

  rule <k>
    execinstr (incb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(mi(8, 0), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vrsqrtps-xmm-xmm

  rule <k>
    execinstr (vrsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// vfnmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) ) ) , 32)))), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// cbtw

  rule <k>
    execinstr (cbtw  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64))), 48, 64)) )


)

    </regstate>


// mulsd-xmm-xmm

  rule <k>
    execinstr (mulsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// nopw-r16

  rule <k>
    execinstr (nopw R1:R16,  .Typedoperands) => .
  ...</k>


// setbe-r8

  rule <k>
    execinstr (setbe R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(7, 0), getFlag("CF", RSMap)) ) #else ( concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)) ) #fi) ) )


)

    </regstate>


// vcvtps2pd-xmm-xmm

  rule <k>
    execinstr (vcvtps2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// movsbw-r16-rh

  rule <k>
    execinstr (movsbw R1:Rh, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 48, 64)) )


)

    </regstate>


// movupd-xmm-xmm

  rule <k>
    execinstr (movupd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// addq-r64-r64

  rule <k>
    execinstr (addq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), getParentValue(R1, RSMap))  orBool  ultMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setz-r8

  rule <k>
    execinstr (setz R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vfmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// setno-r8

  rule <k>
    execinstr (setno R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("OF", RSMap)), mi(8, 1))) )


)

    </regstate>


// xaddb-r8-r8

  rule <k>
    execinstr (xaddb R1:R8, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>


// movaps-xmm-xmm

  rule <k>
    execinstr (movaps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setp-r8

  rule <k>
    execinstr (setp R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("PF", RSMap))) )


)

    </regstate>


// vmovdqa-ymm-ymm

  rule <k>
    execinstr (vmovdqa R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// rcll-r32-one

  rule <k>
    execinstr (rcll $0x1, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// setnae-rh

  rule <k>
    execinstr (setnae R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vpxor-xmm-xmm-xmm

  rule <k>
    execinstr (vpxor R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// cltq

  rule <k>
    execinstr (cltq  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 32, 64))) )


)

    </regstate>


// vfmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// xchgq-r64-rax

  rule <k>
    execinstr (xchgq %rax, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (getParentValue(R2, RSMap) )

convToRegKeys(R2) |-> (getParentValue(%rax, RSMap) )


)

    </regstate>


// setpo-r8

  rule <k>
    execinstr (setpo R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))) )


)

    </regstate>


// mulss-xmm-xmm

  rule <k>
    execinstr (mulss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vcvtdq2ps-xmm-xmm

  rule <k>
    execinstr (vcvtdq2ps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 128, 160)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 160, 192)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 24, 8), 32), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 24, 8), 32))))) )


)

    </regstate>

endmodule
