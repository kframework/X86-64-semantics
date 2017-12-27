requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-FLAG-CHECKS
  imports X86-FLAG-CHECKS-SYNTAX
  imports X86-CONFIGURATION

  /*@
    http://teaching.idallen.com/dat2343/10f/notes/040_overflow.txt
  */  
  
  /*@
    Update Overflow Flag.
  */  
  rule 
  <k> updateOverflowAdd(MIsrc1, MIsrc2, MIres) => . ...</k>
  <regstate>  
    RMap => RMap["OF" <- 
      fromBool( 
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
    ] 
  </regstate>


  /*@
    Update Zero Flag.
  */  
  rule 
  <k> updateZeroFlag(MI) => . ...</k>
  <regstate>  
    RMap => RMap["ZF" <- fromBool(zeroMInt(MI),1)] 
  </regstate>

  /*@
    Update Sign Flag.
  */  
  rule 
  <k> updateSignFlag(MI) => . ...</k>
  <regstate>  
    RMap => RMap["SF" <- 
        fromBool( 
          eqMInt(
            mi(bitwidthMInt(MI),1), 
            lshrMInt(MI, bitwidthMInt(MI) -Int 1)) , 
          1) 
    ] 
  </regstate>

  /*@
    Update AuxCarry Flag.
  */  
  rule <k> updateAuxCarryFlag(MIsrc1, MIsrc2, MIres) => . ...</k>
  <regstate>  
    RMap => RMap["AF" <- 
      fromBool( 
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
    ] 
  </regstate>

  /*@
    Update Carry Flag.
  */  
  rule  carryHelperAdd(MIsrc1, MIsrc2, MIres) => 
      ultMInt( MIres, MIsrc1) orBool ultMInt( MIres, MIsrc2)

  rule <k> updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) => . ...</k>
  <regstate>  
    RMap => RMap["CF" <- 
      fromBool( carryHelperAdd(MIsrc1, MIsrc2, MIsum) orBool 
          carryHelperAdd(MIsum, MIcarry, MIresult) , 1)
    ] 
  </regstate>

  /*@
    Update Parity Flag.
  */  
  rule <k> updateParityFlag(MI:MInt) => . ...</k>
  <regstate>  
    RMap => RMap["PF" <- 
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
    ] 
  </regstate>

  /*@
    Setting the flags with 0 or 1.
  */
  rule 
  <k> setFlag(MI, FL) => . ...</k>
  <regstate>  
    RMap => RMap[FL <- MI] 
  </regstate>

  rule getFlag(FName, RSMap) => RSMap[FName]:>MInt 

endmodule  
