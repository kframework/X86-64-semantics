requires "x86-syntax.k"
requires "x86-configuration.k"

module LOAD-PROGRAM-TO-MEMORY
  imports X86-SYNTAX
  imports X86-CONFIGURATION

  syntax Int ::= loc(MInt)
  syntax Int ::= getISize(Opcode, Typedoperands) [function]
  syntax Instruction ::= storedinstr(Opcode, Typedoperands)
  syntax Instruction ::= execinstr(Opcode, Typedoperands)

  rule getISize(OpC:Opcode, OpR:Typedoperands) => 1

  /*@
    Unroll intructions into KList.
  */
  rule I:Instruction Is:Instructions => I ~> Is

  /*@
    Load the instructions into Code memory.
  */
  rule  <k> OpC:Opcode OpR:Typedoperands => . ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(OpC,OpR)] </cmem>
        <nextLoc> L => addMInt(L, mi(64, getISize(OpC, OpR))) </nextLoc>
  /*@
    To stop the execution of instrcution, a sentinal instruction is stored in code memory, which upon fetching will stop further execution.
    Also rip is set to the next instrcution to execute.
  */
  rule  <k>.Instructions => .K ...</k>
        <cmem> CMap:Map => CMap[loc(L) <- storedinstr(sentinal, .Typedoperands)] </cmem>
        <nextLoc> L  </nextLoc>
        <rip> _ => LoadAddr </rip>
        <entrypoint> LoadAddr </entrypoint>

  /*@
    Fetch the instructions from Code memory.
  */
  rule <k> fetch => execinstr(OpC,OpR) ~> fetch ... </k>
  <cmem>... loc(PC) |-> storedinstr(OpC,OpR)   ...</cmem>
  <rip> PC => addMInt(PC,  mi(64,getISize(OpC,OpR))) </rip>

  /*@
    Once the sentinal instrcution is fetched, the execution stops.
  */
  rule <k> execinstr ( sentinal , .Typedoperands ) ~> fetch => . ... </k>


endmodule

module X86-FLAG-CHECKS
  imports MINT
  imports X86-SYNTAX
  imports X86-CONFIGURATION
  

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

  syntax KItem ::= updateZeroFlag(MInt) 
  rule <k> updateZeroFlag(MI) => . ...</k>
  <zf> _ => fromBool(zeroMInt(MI),1) </zf>

  syntax KItem ::= updateSignFlag(MInt) 
  rule <k> UpdateSignFlag(MI) => . ...</k>
  <sf> _ => fromBool( eqMInt(mi(bitwidthMInt(MI),1), lshrMInt(MI, bitwidthMInt(MI) -Int 1)) , 1) </sf>

  syntax KItem ::= updateAuxCarryFlag(MInt,MInt, MInt) 
  rule <k> updateAuxCarryFlag(MIsrc1, MIsrc2, MIres) => . ...</k>
  <af> _ =>  fromBool( 
              andInt( 
                lshrMInt(
                  xorMInt( xorMInt( MIsrc1, MIsrc2), MIres), 
                  4
                ),
                mi(bitwidthMInt(MIres), 1)
              ) 
            , 1)
  </af>

  syntax Bool ::= carryHelperAdd(MInt,MInt, MInt) [function]
  rule  carryHelperAdd(MIsrc1, MIsrc2, MIres) => 
      ultMInt( MIres, MIsrc1) orBool ultMInt( MIres, MIsrc2)

  syntax KItem ::= updateCarryFlagAdd(MInt,MInt, MInt, MInt, MInt) 
  rule <k> updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) => . ...</k>
  <cf> _ => fromBool( carryHelperAdd(MIsrc1, MIsrc2, MIsum) orBool carryHelperAdd(MIsum, MIcarry, MIresult) , 1)
  </cf>


  /*
  syntax MInt ::= addListMInt(Int, Typedoperands) [function]
  rule addListMInt(W:Int, (MI1:MInt, MI2:MInt, Rest)) => addMInt(addMInt(MI1, MI2), addListMInt(W, Rest))
  rule addListMInt(W:Int, .Typedoperands) => mi(W,0) 

  syntax KItem ::= updateParityFlag(MInt) 
  rule <k> updateParityFlag(MI) => . ...</k>
  <cf> _ => 
          addListMInt(bitwidthMInt(MI),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),1))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),2))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),4))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),8))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),32))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),64))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),128))), 32),
            fromBool(toBool(addMInt(MI, mi(bitwidthMInt(MI),256))), 32)
          )
  </cf>
  */
endmodule  

module  X86-SEMANTIC-UTILITIES
  imports LOAD-PROGRAM-TO-MEMORY
  imports X86-FLAG-CHECKS

  /*@
    The lookup and update operations on the registers require two cells, k and
    regs for integer registers.  We have included only the rule for the integer
    registers case.  If the current computational task is an integer register
    lookup, for a register R, as shown below the resulting configuration has
    the corresponding value I for R from the integer register file.
  */
  rule <k> %rax => MI ...</k> <rax> MI </rax>
  rule <k> %rbx => MI ...</k> <rbx> MI </rbx>
  rule <k> %rcx => MI ...</k> <rcx> MI </rcx>
  rule <k> %rdx => MI ...</k> <rdx> MI </rdx>
  rule <k> %rsi => MI ...</k> <rsi> MI </rsi>
  rule <k> %rdi => MI ...</k> <rdi> MI </rdi>
  rule <k> %r8 => MI ...</k> <r8> MI </r8>
  rule <k> %r9 => MI ...</k> <r9> MI </r9>
  rule <k> %r10 => MI ...</k> <r10> MI </r10>
  rule <k> %r11 => MI ...</k> <r11> MI </r11>
  rule <k> %r12 => MI ...</k> <r12> MI </r12>
  rule <k> %r13 => MI ...</k> <r13> MI </r13>
  rule <k> %r14 => MI ...</k> <r14> MI </r14>
  rule <k> %r15 => MI ...</k> <r15> MI </r15>

  /*@
    if the top computational task is to update a register, say Rd with a computed
    value I, the previous value of Rd, denoted by the wildcard _, is replaced by
    I, as shown below.
  */
  syntax KItem ::= updateReg(K, Register) [strict(1)]
  rule <k> updateReg(MI:MInt, %rax) => . ...</k> <rax> _ => MI </rax>
  rule <k> updateReg(MI:MInt, %rbx) => . ...</k> <rbx> _ => MI </rbx>
  rule <k> updateReg(MI:MInt, %rcx) => . ...</k> <rcx> _ => MI </rcx>
  rule <k> updateReg(MI:MInt, %rdx) => . ...</k> <rdx> _ => MI </rdx>
  rule <k> updateReg(MI:MInt, %rsi) => . ...</k> <rsi> _ => MI </rsi>
  rule <k> updateReg(MI:MInt, %rdi) => . ...</k> <rdi> _ => MI </rdi>
  rule <k> updateReg(MI:MInt, %r8)  => . ...</k> <r8>  _ => MI </r8>
  rule <k> updateReg(MI:MInt, %r9)  => . ...</k> <r9>  _ => MI </r9>
  rule <k> updateReg(MI:MInt, %r10) => . ...</k> <r10> _ => MI </r10>
  rule <k> updateReg(MI:MInt, %r11) => . ...</k> <r11> _ => MI </r11>
  rule <k> updateReg(MI:MInt, %r12) => . ...</k> <r12> _ => MI </r12>
  rule <k> updateReg(MI:MInt, %r13) => . ...</k> <r13> _ => MI </r13>
  rule <k> updateReg(MI:MInt, %r14) => . ...</k> <r14> _ => MI </r14>
  rule <k> updateReg(MI:MInt, %r15) => . ...</k> <r15> _ => MI </r15>

  /*@ Conversion from/to MInt and Bool
  */  
  syntax Bool ::= toBool(MInt) [function]
  rule toBool(MI) => true
    requires uvalueMInt(MI) =/=Int 0
  rule toBool(MI) => false
    requires uvalueMInt(MI) ==Int 0

  syntax MInt ::= fromBool(Bool, Int) [function]
  rule fromBool(B:Bool, W:Int) => mi(W,1)
    requires B
  rule fromBool(B:Bool, W:Int) => mi(W,0)
    requires notBool B

  /*@ truncateMtoN: Truncates a MInt(M,V1) to MInt(N,V2)
    Todo : type check
  */
  syntax MInt ::= truncate64to8(MInt) [function]
  syntax MInt ::= truncate64to16(MInt) [function]
  syntax MInt ::= truncate64to32(MInt) [function]

  rule truncate64to8(MI) => mi(8, svalueMInt(andMInt(MI, mi(64,255))))
  rule truncate64to16(MI) => mi(16, svalueMInt(andMInt(MI, mi(64,65535))))
  rule truncate64to32(MI) => mi(32, svalueMInt(andMInt(MI, mi(64,4294967295))))

  /*@ extractM: Extracts the lower M bits from a R^$ register.
    Todo : type check
  */
  syntax Typeoperand ::= extractR8(R64)
  syntax Typeoperand ::= extractR16(R64)
  syntax Typeoperand ::= extractR32(R64)
  syntax Typeoperand ::= MInt
  rule <k> extractR8(%rax) => truncate64to8(MI) ...</k>
  <rax> MI </rax>
  rule <k> extractR16(%rax) => truncate64to16(MI) ...</k>
  <rax> MI </rax>
  rule <k> extractR32(%rax) => truncate64to32(MI) ...</k>
  <rax> MI </rax>

  /*@ zeroExtendMtoN: Zero extend MInt(M, V1) to MInt(N,V2)
  */
  syntax MInt ::= zeroExtend1to8(MInt) [function]
  syntax MInt ::= zeroExtend8to64(MInt) [function]

  rule zeroExtend1to8(MI) => mi(8, uvalueMInt(MI))
  rule zeroExtend8to64(MI) => mi(64, uvalueMInt(MI))

  /*@ pluginM: plugin MInt(M, V) to lower 8 bits of R64. 
  */  
  syntax MInt ::= plugin8(MInt, R64)
  rule <k> plugin8(MId:MInt, %rax) => updateReg(orMInt(zeroExtend8to64(MId), andMInt(MIs, mi(64,-256)))   , %rax) ...</k>
  <rax> MIs </rax>

  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>
endmodule

