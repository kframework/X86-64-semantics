requires "x86-configuration.k"

/*@ This file defines the semantics of following 51 base instructions.
  - popcntq_r64_r64,
*/

module POPCNT-R64-R64
  imports X86-CONFIGURATION

  rule <k> 
    execinstr(popcntq R1:R64, R2:R64, .Typedoperands) =>
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
    execinstr(popcntq  (R1:R64,  (R2:R64, .Typedoperands)) ) =>
      execinstr(popcntq  (R2, mi(getRegisterSize(R1), popCount(getRegisterValue(R1, RSMap))), .Typedoperands)) 
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr(popcntq  ( DestR, MIsrc, .Typedoperands )) => 
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
    execinstr(popcntq  ( DestR:R64, MIsrc, .Typedoperands )) => 
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

endmodule
