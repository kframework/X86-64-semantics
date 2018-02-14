requires "x86-configuration.k"

/*@ This file defines the semantics of following 51 base instructions.
  - popcntq_r64_r64,
*/

module POPCNT-R64-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(popcntq R1:R64, R2:R64, .Typedoperands) =>
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

endmodule
