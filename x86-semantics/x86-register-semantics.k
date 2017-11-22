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
                      32,
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),1))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),2))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),4))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),8))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),16))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),32))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),64))), 32)
                      fromBool(toBool(andMInt(MI, mi(bitwidthMInt(MI),128))), 32)
                  ), 
                  mi(32,1)),
                mi(32,1))
            ), 
          1)
  </pf>
endmodule  

module X86-REGISTER-OPERATIONS
endmodule

module X86-REGISTER-SEMANTICS
  imports X86-FLAG-CHECKS
  //imports X86-REGISTER-OPERATIONS
  imports X86-SYNTAX
  imports X86-CONFIGURATION
  imports X86-GENERAL-UTILS

  /*@
    if the top computational task is to update a register, say Rd with a computed
    value I, the previous value of Rd, denoted by the wildcard _, is replaced by
    I, as shown below.
  */
  syntax KItem ::= updateReg(K, Register) [strict(1)]

  /*@ extractM: Extracts the lower M bits from a R^$ register.
    Todo : type check
  */
  syntax Typeoperand ::= extractR8(R64)
  syntax Typeoperand ::= extractR16(R64)
  syntax Typeoperand ::= extractR32(R64)
  syntax Typeoperand ::= MInt

  /*@ pluginM: plugin MInt(M, V) to lower 8 bits of R64. 
  */  
  syntax MInt ::= plugin8(MInt, R64)


  rule <k> %rax => MI ...</k> <rax> MI </rax>
  rule <k> %rbx => MI ...</k> <rbx> MI </rbx>
  rule <k> %rcx => MI ...</k> <rcx> MI </rcx>
  rule <k> %rdx => MI ...</k> <rdx> MI </rdx>
  rule <k> %rsi => MI ...</k> <rsi> MI </rsi>
  rule <k> %rdi => MI ...</k> <rdi> MI </rdi>
  rule <k> %rsp => MI ...</k> <rsp> MI </rsp>
  rule <k> %rbp => MI ...</k> <rbp> MI </rbp>
  rule <k> %r8 => MI ...</k> <r8> MI </r8>
  rule <k> %r9 => MI ...</k> <r9> MI </r9>
  rule <k> %r10 => MI ...</k> <r10> MI </r10>
  rule <k> %r11 => MI ...</k> <r11> MI </r11>
  rule <k> %r12 => MI ...</k> <r12> MI </r12>
  rule <k> %r13 => MI ...</k> <r13> MI </r13>
  rule <k> %r14 => MI ...</k> <r14> MI </r14>
  rule <k> %r15 => MI ...</k> <r15> MI </r15>

  rule <k> updateReg(MI:MInt, %rax) => . ...</k> <rax> _ => MI </rax>
  rule <k> updateReg(MI:MInt, %rbx) => . ...</k> <rbx> _ => MI </rbx>
  rule <k> updateReg(MI:MInt, %rcx) => . ...</k> <rcx> _ => MI </rcx>
  rule <k> updateReg(MI:MInt, %rdx) => . ...</k> <rdx> _ => MI </rdx>
  rule <k> updateReg(MI:MInt, %rsi) => . ...</k> <rsi> _ => MI </rsi>
  rule <k> updateReg(MI:MInt, %rdi) => . ...</k> <rdi> _ => MI </rdi>
  rule <k> updateReg(MI:MInt, %rsp) => . ...</k> <rsp> _ => MI </rsp>
  rule <k> updateReg(MI:MInt, %rbp) => . ...</k> <rbp> _ => MI </rbp>
  rule <k> updateReg(MI:MInt, %r8) => . ...</k> <r8> _ => MI </r8>
  rule <k> updateReg(MI:MInt, %r9) => . ...</k> <r9> _ => MI </r9>
  rule <k> updateReg(MI:MInt, %r10) => . ...</k> <r10> _ => MI </r10>
  rule <k> updateReg(MI:MInt, %r11) => . ...</k> <r11> _ => MI </r11>
  rule <k> updateReg(MI:MInt, %r12) => . ...</k> <r12> _ => MI </r12>
  rule <k> updateReg(MI:MInt, %r13) => . ...</k> <r13> _ => MI </r13>
  rule <k> updateReg(MI:MInt, %r14) => . ...</k> <r14> _ => MI </r14>
  rule <k> updateReg(MI:MInt, %r15) => . ...</k> <r15> _ => MI </r15>

  rule <k> extractR8(%rax) => truncate64to8(MI) ...</k>
  <rax> MI </rax>
  rule <k> extractR8(%rbx) => truncate64to8(MI) ...</k>
  <rbx> MI </rbx>
  rule <k> extractR8(%rcx) => truncate64to8(MI) ...</k>
  <rcx> MI </rcx>
  rule <k> extractR8(%rdx) => truncate64to8(MI) ...</k>
  <rdx> MI </rdx>
  rule <k> extractR8(%rsi) => truncate64to8(MI) ...</k>
  <rsi> MI </rsi>
  rule <k> extractR8(%rdi) => truncate64to8(MI) ...</k>
  <rdi> MI </rdi>
  rule <k> extractR8(%rsp) => truncate64to8(MI) ...</k>
  <rsp> MI </rsp>
  rule <k> extractR8(%rbp) => truncate64to8(MI) ...</k>
  <rbp> MI </rbp>
  rule <k> extractR8(%r8) => truncate64to8(MI) ...</k>
  <r8> MI </r8>
  rule <k> extractR8(%r9) => truncate64to8(MI) ...</k>
  <r9> MI </r9>
  rule <k> extractR8(%r10) => truncate64to8(MI) ...</k>
  <r10> MI </r10>
  rule <k> extractR8(%r11) => truncate64to8(MI) ...</k>
  <r11> MI </r11>
  rule <k> extractR8(%r12) => truncate64to8(MI) ...</k>
  <r12> MI </r12>
  rule <k> extractR8(%r13) => truncate64to8(MI) ...</k>
  <r13> MI </r13>
  rule <k> extractR8(%r14) => truncate64to8(MI) ...</k>
  <r14> MI </r14>
  rule <k> extractR8(%r15) => truncate64to8(MI) ...</k>
  <r15> MI </r15>


  rule <k> extractR16(%rax) => truncate64to16(MI) ...</k>
  <rax> MI </rax>
  rule <k> extractR16(%rbx) => truncate64to16(MI) ...</k>
  <rbx> MI </rbx>
  rule <k> extractR16(%rcx) => truncate64to16(MI) ...</k>
  <rcx> MI </rcx>
  rule <k> extractR16(%rdx) => truncate64to16(MI) ...</k>
  <rdx> MI </rdx>
  rule <k> extractR16(%rsi) => truncate64to16(MI) ...</k>
  <rsi> MI </rsi>
  rule <k> extractR16(%rdi) => truncate64to16(MI) ...</k>
  <rdi> MI </rdi>
  rule <k> extractR16(%rsp) => truncate64to16(MI) ...</k>
  <rsp> MI </rsp>
  rule <k> extractR16(%rbp) => truncate64to16(MI) ...</k>
  <rbp> MI </rbp>
  rule <k> extractR16(%r8) => truncate64to16(MI) ...</k>
  <r8> MI </r8>
  rule <k> extractR16(%r9) => truncate64to16(MI) ...</k>
  <r9> MI </r9>
  rule <k> extractR16(%r10) => truncate64to16(MI) ...</k>
  <r10> MI </r10>
  rule <k> extractR16(%r11) => truncate64to16(MI) ...</k>
  <r11> MI </r11>
  rule <k> extractR16(%r12) => truncate64to16(MI) ...</k>
  <r12> MI </r12>
  rule <k> extractR16(%r13) => truncate64to16(MI) ...</k>
  <r13> MI </r13>
  rule <k> extractR16(%r14) => truncate64to16(MI) ...</k>
  <r14> MI </r14>
  rule <k> extractR16(%r15) => truncate64to16(MI) ...</k>
  <r15> MI </r15>


  rule <k> extractR32(%rax) => truncate64to32(MI) ...</k>
  <rax> MI </rax>
  rule <k> extractR32(%rbx) => truncate64to32(MI) ...</k>
  <rbx> MI </rbx>
  rule <k> extractR32(%rcx) => truncate64to32(MI) ...</k>
  <rcx> MI </rcx>
  rule <k> extractR32(%rdx) => truncate64to32(MI) ...</k>
  <rdx> MI </rdx>
  rule <k> extractR32(%rsi) => truncate64to32(MI) ...</k>
  <rsi> MI </rsi>
  rule <k> extractR32(%rdi) => truncate64to32(MI) ...</k>
  <rdi> MI </rdi>
  rule <k> extractR32(%rsp) => truncate64to32(MI) ...</k>
  <rsp> MI </rsp>
  rule <k> extractR32(%rbp) => truncate64to32(MI) ...</k>
  <rbp> MI </rbp>
  rule <k> extractR32(%r8) => truncate64to32(MI) ...</k>
  <r8> MI </r8>
  rule <k> extractR32(%r9) => truncate64to32(MI) ...</k>
  <r9> MI </r9>
  rule <k> extractR32(%r10) => truncate64to32(MI) ...</k>
  <r10> MI </r10>
  rule <k> extractR32(%r11) => truncate64to32(MI) ...</k>
  <r11> MI </r11>
  rule <k> extractR32(%r12) => truncate64to32(MI) ...</k>
  <r12> MI </r12>
  rule <k> extractR32(%r13) => truncate64to32(MI) ...</k>
  <r13> MI </r13>
  rule <k> extractR32(%r14) => truncate64to32(MI) ...</k>
  <r14> MI </r14>
  rule <k> extractR32(%r15) => truncate64to32(MI) ...</k>
  <r15> MI </r15>

  rule <k> 
    plugin8(MId:MInt, %rax) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rax) ...</k>
  <rax> MIs </rax>
  rule <k> 
    plugin8(MId:MInt, %rbx) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rbx) ...</k>
  <rbx> MIs </rbx>
  rule <k> 
    plugin8(MId:MInt, %rcx) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rcx) ...</k>
  <rcx> MIs </rcx>
  rule <k> 
    plugin8(MId:MInt, %rdx) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rdx) ...</k>
  <rdx> MIs </rdx>
  rule <k> 
    plugin8(MId:MInt, %rsi) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rsi) ...</k>
  <rsi> MIs </rsi>
  rule <k> 
    plugin8(MId:MInt, %rdi) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rdi) ...</k>
  <rdi> MIs </rdi>
  rule <k> 
    plugin8(MId:MInt, %rsp) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rsp) ...</k>
  <rsp> MIs </rsp>
  rule <k> 
    plugin8(MId:MInt, %rbp) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rbp) ...</k>
  <rbp> MIs </rbp>
  rule <k> 
    plugin8(MId:MInt, %r8) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r8) ...</k>
  <r8> MIs </r8>
  rule <k> 
    plugin8(MId:MInt, %r9) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r9) ...</k>
  <r9> MIs </r9>
  rule <k> 
    plugin8(MId:MInt, %r10) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r10) ...</k>
  <r10> MIs </r10>
  rule <k> 
    plugin8(MId:MInt, %r11) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r11) ...</k>
  <r11> MIs </r11>
  rule <k> 
    plugin8(MId:MInt, %r12) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r12) ...</k>
  <r12> MIs </r12>
  rule <k> 
    plugin8(MId:MInt, %r13) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r13) ...</k>
  <r13> MIs </r13>
  rule <k> 
    plugin8(MId:MInt, %r14) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r14) ...</k>
  <r14> MIs </r14>
  rule <k> 
    plugin8(MId:MInt, %r15) =>
      updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %r15) ...</k>
  <r15> MIs </r15>
endmodule
