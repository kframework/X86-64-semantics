requires "x86-syntax.k"
requires "x86-configuration.k"
requires "x86-general-utils.k"

module X86-FLAG-CHECKS
  imports X86-SYNTAX
  imports X86-CONFIGURATION
  imports X86-GENERAL-UTILS

  /*@
    http://teaching.idallen.com/dat2343/10f/notes/040_overflow.txt
  */  
  
  /*@
    Update Overflow Flag.
  */  
  syntax KItem ::= updateOverflowAdd(MInt, MInt, MInt) 

  rule 
  <k> updateOverflowAdd(MIsrc1, MIsrc2, MIres) => . ...</k>
  <of> _ => fromBool( 
              eqMInt( 
                mi(bitwidthMInt(MIres),2), 
                addMInt(
                  xorMInt(
                    lshrMInt(MIsrc1, bitwidthMInt(MIres) -Int 1),
                    lshrMInt(MIres, bitwidthMInt(MIres) -Int 1)
                  ),
                  xorMInt(
                    lshrMInt(MIsrc2, bitwidthMInt(MIres) -Int 1),
                    lshrMInt(MIres, bitwidthMInt(MIres) -Int 1)
                  )
                )
              ) 
            , 1)
  </of>


  /*@
    Update Zero Flag.
  */  
  syntax KItem ::= updateZeroFlag(MInt) 
  rule 
  <k> updateZeroFlag(MI) => . ...</k>
  <zf> _ => fromBool(zeroMInt(MI),1) </zf>

  /*@
    Update Sign Flag.
  */  
  syntax KItem ::= updateSignFlag(MInt) 
  rule 
  <k> updateSignFlag(MI) => . ...</k>
  <sf> _ => fromBool( 
              eqMInt(
                mi(bitwidthMInt(MI),1), 
                lshrMInt(MI, bitwidthMInt(MI) -Int 1)) , 
              1) 
  </sf>

  /*@
    Update AuxCarry Flag.
  */  
  syntax KItem ::= updateAuxCarryFlag(MInt,MInt, MInt) 
  rule <k> updateAuxCarryFlag(MIsrc1, MIsrc2, MIres) => . ...</k>
  <af> _ =>  fromBool( 
              toBool(  
                andMInt( 
                  lshrMInt(
                    xorMInt( xorMInt( MIsrc1, MIsrc2), MIres), 
                    4
                  ),
                  mi(bitwidthMInt(MIres), 1)
                )
              )    
            , 1)
  </af>

  /*@
    Update Carry Flag.
  */  
  syntax Bool ::= carryHelperAdd(MInt,MInt, MInt) [function]
  rule  carryHelperAdd(MIsrc1, MIsrc2, MIres) => 
      ultMInt( MIres, MIsrc1) orBool ultMInt( MIres, MIsrc2)

  syntax KItem ::= updateCarryFlagAdd(MInt,MInt, MInt, MInt, MInt) 
  rule <k> updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) => . ...</k>
  <cf> _ => fromBool( carryHelperAdd(MIsrc1, MIsrc2, MIsum) orBool carryHelperAdd(MIsum, MIcarry, MIresult) , 1)
  </cf>

  /*@
    Update Parity Flag.
  */  
  syntax KItem ::= updateParityFlag(MInt) 
  rule <k> updateParityFlag(MI:MInt) => . ...</k>
  <pf> _ => 
          fromBool(
            toBool(
              xorMInt(
                andMInt(
                  addListMInt(
                      64,
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),1))),   64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),2))),   64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),4))),   64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),8))),   64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),16))),  64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),32))),  64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),64))),  64)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),128))), 64)
                  ), 
                  oneMIntW64),
                oneMIntW64)
            ), 
          1)
  </pf>


  /*@
    Setting the flags with 0 or 1.
  */
  syntax KItem ::= setOverflow(MInt) 
  syntax KItem ::= setZeroFlag(MInt) 
  syntax KItem ::= setSignFlag(MInt) 
  syntax KItem ::= setAuxCarryFlag(MInt) 
  syntax KItem ::= setCarryFlag(MInt) 
  syntax KItem ::= setParityFlag(MInt) 

  rule 
  <k> setOverflow(MI) => . ...</k>
  <of> _ => MI </of>

  rule 
  <k> setZeroFlag(MI) => . ...</k>
  <zf> _ => MI </zf>

  rule 
  <k> setSignFlag(MI) => . ...</k>
  <sf> _ => MI </sf>

  rule 
  <k> setAuxCarryFlag(MI) => . ...</k>
  <af> _ => MI </af>

  rule 
  <k> setCarryFlag(MI) => . ...</k>
  <cf> _ => MI </cf>

  rule 
  <k> setParityFlag(MI) => . ...</k>
  <pf> _ => MI </pf>

endmodule  
