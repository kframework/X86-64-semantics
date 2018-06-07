require "x86-configuration.k"

module X86-ABSTRACT-SEMANTICS
  imports X86-CONFIGURATION

  /*@
    X86-64 mnemonic allows the following ways of computing memory offsets.
      (%rax)
      -8 (%rax)
      (, %rbx)
      ( , %rbx, 4)
      -8 (, %rbx)
      -8 (, %rbx, 4)
      (%rax, %rbx)
      (%rax, %rbx, 4)
      -8 (%rax, %rbx)
      -8 (%rax, %rbx, 4)
    
    This means a memory instruction like `movq m64 R64` can have different variants. 

    The following code streamlines the offset calculation so as to have a single rule for each memory 
    instrcution.    
  */
  rule <k> (R1:R64):Mem => 
    memOffset( addMInt(mi(64, 0), addMInt(getRegisterValue(R1, RSMap), mulMInt(mi(64, 0), mi(64, 1))))) 
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> I:Int (R1:R64):Mem => 
    memOffset( addMInt(mi(64, I), addMInt(getRegisterValue(R1, RSMap), mulMInt(mi(64, 0), mi(64, 1)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> (, R2:R64):Mem => 
    memOffset( addMInt(mi(64, 0), addMInt(mi(64, 0), mulMInt(getRegisterValue(R2, RSMap), mi(64, 1)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> ( , R2:R64, S:Int):Mem => 
    memOffset( addMInt(mi(64, 0), addMInt(mi(64, 0), mulMInt(getRegisterValue(R2, RSMap), mi(64, S)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> I:Int (, R2:R64):Mem => 
    memOffset( addMInt(mi(64, I), addMInt(mi(64, 0), mulMInt(getRegisterValue(R2, RSMap), mi(64, 1)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> I:Int (, R2:R64, S:Int):Mem => 
    memOffset( addMInt(mi(64, I), addMInt(mi(64, 0), mulMInt(getRegisterValue(R2, RSMap), mi(64, S)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> (R1:R64, R2:R64):Mem => 
    memOffset( addMInt(mi(64, 0), addMInt(getRegisterValue(R1, RSMap), mulMInt(getRegisterValue(R2, RSMap), mi(64, 1)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> (R1:R64, R2:R64, S:Int):Mem => 
    memOffset( addMInt(mi(64, 0), addMInt(getRegisterValue(R1, RSMap), mulMInt(getRegisterValue(R2, RSMap), mi(64, S)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> I:Int (R1:R64, R2:R64):Mem => 
    memOffset( addMInt(mi(64, I), addMInt(getRegisterValue(R1, RSMap), mulMInt(getRegisterValue(R2, RSMap), mi(64, 1)))))
  ...</k>
      <regstate> RSMap </regstate>

  rule <k> I:Int (R1:R64, R2:R64, S:Int):Mem => 
    memOffset( addMInt(mi(64, I), addMInt(getRegisterValue(R1, RSMap), mulMInt(getRegisterValue(R2, RSMap), mi(64, S)))))
  ...</k>
      <regstate> RSMap </regstate>

  /*@
    Size of instructions.
  rule getISize((OpC:Opcode OpR:Operands):Instruction) => 1
  */  

  /*@
    Reg to Regtstate keys
  */

  rule convToRegKeys(R) =>  convToRegKeysHelper(convSubRegsToRegs(R))

  rule convToRegKeysHelper(%rax)   => "RAX"
  rule convToRegKeysHelper(%rbx)   => "RBX"
  rule convToRegKeysHelper(%rcx)   => "RCX"
  rule convToRegKeysHelper(%rdx)   => "RDX"
  rule convToRegKeysHelper(%rsi)   => "RSI"
  rule convToRegKeysHelper(%rdi)   => "RDI"
  rule convToRegKeysHelper(%rsp)   => "RSP"
  rule convToRegKeysHelper(%rbp)   => "RBP"
  rule convToRegKeysHelper(%r8)    => "R8"
  rule convToRegKeysHelper(%r9)    => "R9"
  rule convToRegKeysHelper(%r10)   => "R10"
  rule convToRegKeysHelper(%r11)   => "R11"
  rule convToRegKeysHelper(%r12)   => "R12"
  rule convToRegKeysHelper(%r13)   => "R13"
  rule convToRegKeysHelper(%r14)   => "R14"
  rule convToRegKeysHelper(%r15)   => "R15"
  rule convToRegKeysHelper(%ymm0)  => "YMM0"
  rule convToRegKeysHelper(%ymm1)  => "YMM1"
  rule convToRegKeysHelper(%ymm2)  => "YMM2"
  rule convToRegKeysHelper(%ymm3)  => "YMM3"
  rule convToRegKeysHelper(%ymm4)  => "YMM4"
  rule convToRegKeysHelper(%ymm5)  => "YMM5"
  rule convToRegKeysHelper(%ymm6)  => "YMM6"
  rule convToRegKeysHelper(%ymm7)  => "YMM7"
  rule convToRegKeysHelper(%ymm8)  => "YMM8"
  rule convToRegKeysHelper(%ymm9)  => "YMM9"
  rule convToRegKeysHelper(%ymm10) => "YMM10"
  rule convToRegKeysHelper(%ymm11) => "YMM11"
  rule convToRegKeysHelper(%ymm12) => "YMM12"
  rule convToRegKeysHelper(%ymm13) => "YMM13"
  rule convToRegKeysHelper(%ymm14) => "YMM14"
  rule convToRegKeysHelper(%ymm15) => "YMM15"

  /*@
    Subregs to Regs
  */
  rule convSubRegsToRegs(%al )  => %rax
  rule convSubRegsToRegs(%ah )  => %rax
  rule convSubRegsToRegs(%ax )  => %rax
  rule convSubRegsToRegs(%eax)  => %rax
  rule convSubRegsToRegs(%rax)  => %rax

  rule convSubRegsToRegs(%bl )  => %rbx
  rule convSubRegsToRegs(%bh )  => %rbx
  rule convSubRegsToRegs(%bx )  => %rbx
  rule convSubRegsToRegs(%ebx)  => %rbx
  rule convSubRegsToRegs(%rbx)  => %rbx

  rule convSubRegsToRegs(%cl )  => %rcx
  rule convSubRegsToRegs(%ch )  => %rcx
  rule convSubRegsToRegs(%cx )  => %rcx
  rule convSubRegsToRegs(%ecx)  => %rcx
  rule convSubRegsToRegs(%rcx)  => %rcx

  rule convSubRegsToRegs(%dl )  => %rdx
  rule convSubRegsToRegs(%dh )  => %rdx
  rule convSubRegsToRegs(%dx )  => %rdx
  rule convSubRegsToRegs(%edx)  => %rdx
  rule convSubRegsToRegs(%rdx)  => %rdx

  rule convSubRegsToRegs(%sil)  => %rsi
  rule convSubRegsToRegs(%si )  => %rsi
  rule convSubRegsToRegs(%esi)  => %rsi
  rule convSubRegsToRegs(%rsi)  => %rsi

  rule convSubRegsToRegs(%dil)  => %rdi
  rule convSubRegsToRegs(%di )  => %rdi
  rule convSubRegsToRegs(%edi)  => %rdi
  rule convSubRegsToRegs(%rdi)  => %rdi

  rule convSubRegsToRegs(%spl)  => %rsp
  rule convSubRegsToRegs(%sp )  => %rsp
  rule convSubRegsToRegs(%esp)  => %rsp
  rule convSubRegsToRegs(%rsp)  => %rsp

  rule convSubRegsToRegs(%bpl)  => %rbp
  rule convSubRegsToRegs(%bp)  => %rbp
  rule convSubRegsToRegs(%ebp)  => %rbp
  rule convSubRegsToRegs(%rbp)  => %rbp

  rule convSubRegsToRegs(%r8b)  => %r8
  rule convSubRegsToRegs(%r8w)  => %r8
  rule convSubRegsToRegs(%r8d)  => %r8
  rule convSubRegsToRegs(%r8 )  => %r8

  rule convSubRegsToRegs(%r9b)  => %r9
  rule convSubRegsToRegs(%r9w)  => %r9
  rule convSubRegsToRegs(%r9d)  => %r9
  rule convSubRegsToRegs(%r9 )  => %r9

  rule convSubRegsToRegs(%r10b) => %r10
  rule convSubRegsToRegs(%r10w) => %r10
  rule convSubRegsToRegs(%r10d) => %r10
  rule convSubRegsToRegs(%r10 ) => %r10

  rule convSubRegsToRegs(%r11b) => %r11
  rule convSubRegsToRegs(%r11w) => %r11
  rule convSubRegsToRegs(%r11d) => %r11
  rule convSubRegsToRegs(%r11 ) => %r11

  rule convSubRegsToRegs(%r12b) => %r12
  rule convSubRegsToRegs(%r12w) => %r12
  rule convSubRegsToRegs(%r12d) => %r12
  rule convSubRegsToRegs(%r12 ) => %r12

  rule convSubRegsToRegs(%r13b) => %r13
  rule convSubRegsToRegs(%r13w) => %r13
  rule convSubRegsToRegs(%r13d) => %r13
  rule convSubRegsToRegs(%r13 ) => %r13

  rule convSubRegsToRegs(%r14b) => %r14
  rule convSubRegsToRegs(%r14w) => %r14
  rule convSubRegsToRegs(%r14d) => %r14
  rule convSubRegsToRegs(%r14 ) => %r14

  rule convSubRegsToRegs(%r15b) => %r15
  rule convSubRegsToRegs(%r15w) => %r15
  rule convSubRegsToRegs(%r15d) => %r15
  rule convSubRegsToRegs(%r15 ) => %r15

  rule convSubRegsToRegs(%xmm0 )  => %ymm0
  rule convSubRegsToRegs(%xmm1 )  => %ymm1
  rule convSubRegsToRegs(%xmm2 )  => %ymm2
  rule convSubRegsToRegs(%xmm3 )  => %ymm3
  rule convSubRegsToRegs(%xmm4 )  => %ymm4
  rule convSubRegsToRegs(%xmm5 )  => %ymm5
  rule convSubRegsToRegs(%xmm6 )  => %ymm6
  rule convSubRegsToRegs(%xmm7 )  => %ymm7
  rule convSubRegsToRegs(%xmm8 )  => %ymm8
  rule convSubRegsToRegs(%xmm9 )  => %ymm9
  rule convSubRegsToRegs(%xmm10 ) => %ymm10
  rule convSubRegsToRegs(%xmm11 ) => %ymm11
  rule convSubRegsToRegs(%xmm12 ) => %ymm12
  rule convSubRegsToRegs(%xmm13 ) => %ymm13
  rule convSubRegsToRegs(%xmm14 ) => %ymm14
  rule convSubRegsToRegs(%xmm15 ) => %ymm15

  rule convSubRegsToRegs(%ymm0 )  => %ymm0
  rule convSubRegsToRegs(%ymm1 )  => %ymm1
  rule convSubRegsToRegs(%ymm2 )  => %ymm2
  rule convSubRegsToRegs(%ymm3 )  => %ymm3
  rule convSubRegsToRegs(%ymm4 )  => %ymm4
  rule convSubRegsToRegs(%ymm5 )  => %ymm5
  rule convSubRegsToRegs(%ymm6 )  => %ymm6
  rule convSubRegsToRegs(%ymm7 )  => %ymm7
  rule convSubRegsToRegs(%ymm8 )  => %ymm8
  rule convSubRegsToRegs(%ymm9 )  => %ymm9
  rule convSubRegsToRegs(%ymm10 ) => %ymm10
  rule convSubRegsToRegs(%ymm11 ) => %ymm11
  rule convSubRegsToRegs(%ymm12 ) => %ymm12
  rule convSubRegsToRegs(%ymm13 ) => %ymm13
  rule convSubRegsToRegs(%ymm14 ) => %ymm14
  rule convSubRegsToRegs(%ymm15 ) => %ymm15

  /*@
    Set the registers values.
    
    setRegisterValue(MI, R:RW)
    Updates W bits of `underlying Register`.
    
    Assumption: bitwidthMInt(MI) == W
      Need to zeroExtend or signExtend if bitwidthMInt(MI) < W

    If bitwidthMInt(MI) > W, then more bits than W in `underlying register`
      will be clobbered.
    If bitwidthMInt(MI) < W, then lesser bits than W in `underlying register`
      will be clobbered.

    Ex. setRegisterValue(M8, %ah): Updates 8 bits in rax
      starting from lsb 8.
  */
  rule <k> setRegisterValue(memLoadValue( MI:MInt ):MemLoadValue, R:Register) => setRegisterValue(MI, R)  ...</k>

  rule <k> setRegisterValue(MI64:MInt, R:R64) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> (_ => MI64) ...</regstate>

  rule <k> setRegisterValue(MI32:MInt, R:R32) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI32,  0)) ...</regstate>

  rule <k> setRegisterValue(MI16:MInt, R:R16) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI16,  0)) ...</regstate>

  rule <k> setRegisterValue(MI8:MInt, R:R8) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI8,   0)) ...</regstate>

  rule <k> setRegisterValue(MI8:MInt, R:Rh) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI8,   8)) ...</regstate>

  rule <k> setRegisterValue(MI128:MInt, X:Xmm) => .  ...</k>
    <regstate>... convToRegKeys(X) |-> ( MI256 => plugInMask(MI256, MI128, 0)) ...</regstate>

  rule <k> setRegisterValue(MI256:MInt, Y:Ymm) => .  ...</k>
    <regstate>... convToRegKeys(Y) |-> (_ => MI256) ...</regstate>

  /*@
    Setting the Parent register's values.
      Ex. setParentValue(MI, %ax) -> set MI to %rax
  */  
  rule <k> setParentValue(memLoadValue( MI:MInt ):MemLoadValue, R:Register) => 
    setRegisterValue(memLoadValue( MI:MInt ):MemLoadValue, convSubRegsToRegs(R))                                                    
  ...</k>
  rule <k> setParentValue(MI:MInt, R:Register) => 
    setRegisterValue(MI, convSubRegsToRegs(R))    
  ...</k>

  /*@
    Getting the registers values according to the register variants.
  */
  rule getRegisterValue(R:R8,  RSMap)  =>  extractMask({RSMap[convToRegKeys(R)]}:>MInt, 8, 0)
  rule getRegisterValue(R:R16, RSMap)  =>  extractMask({RSMap[convToRegKeys(R)]}:>MInt, 16, 0)
  rule getRegisterValue(R:R32, RSMap)  =>  extractMask({RSMap[convToRegKeys(R)]}:>MInt, 32, 0)
  rule getRegisterValue(R:R64, RSMap)  =>  {RSMap[convToRegKeys(R)]}:>MInt
  rule getRegisterValue(R:Rh,  RSMap)  =>  extractMask({RSMap[convToRegKeys(R)]}:>MInt, 8, 8)
  rule getRegisterValue(X:Xmm, RSMap)  =>  extractMask({RSMap[convToRegKeys(X)]}:>MInt, 128, 0)
  rule getRegisterValue(Y:Ymm, RSMap)  =>  {RSMap[convToRegKeys(Y)]}:>MInt
  rule getParentValue(R:Register, RSMap) => getRegisterValue(convSubRegsToRegs(R), RSMap)

  /*@
    handleImmediateWithSignExtend(Imm, M, N): Compute a MInt corresponding
    to the Imm value of width M and sign extend to N.
  */

  // Imm could be an Int
  rule handleImmediateWithSignExtend(($ I:Int):Imm, M:Int, N:Int) => signExtend(mi(M,I), N)

  // Or a HexConstant: For hexconstants ike 0x800, we have to provide the substr 800
  // as an argument to  String2Base                                          
  syntax String ::= HexConstant2String ( HexConstant )    [function, hook(STRING.token2string)]
  //rule handleImmediateWithSignExtend($0x H:HexConstant, M:Int, N:Int) =>
  //  signExtend(mi(M, String2Base(HexConstant2String(H), 16)), N)
  rule handleImmediateWithSignExtend((H:HexConstant):Imm, M:Int, N:Int) =>
    signExtend(mi(M, String2Base(substrString(HexConstant2String(H), 3, lengthString(HexConstant2String(H))), 16)), N)

  /*@ 
    Check if two registers are the same
  */  
  rule sameRegisters(R1:Register, R2:Register) =>  convToRegKeys(R1) ==String  convToRegKeys(R2)
  rule sameRegisters(R1:Register, S2:String)   =>  convToRegKeys(R1) ==String  S2

  /*@ 
    Update Register's value at arbitrary position.
  */  
  rule <k> setRegisterBitsAtPositon(MInew, R, P) => . ...</k>
    <regstate>... convToRegKeys(R) |-> ( MIold => plugInMask(MIold, MInew, P)) ...</regstate>

  /*@ 
    getRegisterBitsAtPositon(R, P, N) 
      Returns N bits of input register  R starting at 
    position P.
  */  
  rule getRegisterBitsAtPositon(R, N, P, RSMap) => extractMask(getRegisterValue(R, RSMap), N, P) 

  /*@ 
    Get Register size based on the variant used.
  */  
  rule getRegisterSize(R:R8)  => 8
  rule getRegisterSize(R:Rh)  => 8
  rule getRegisterSize(R:R16) => 16
  rule getRegisterSize(R:R32) => 32
  rule getRegisterSize(R:R64) => 64
  rule getRegisterSize(X:Xmm) => 128
  rule getRegisterSize(Y:Ymm) => 256

  
  /*@ 
    Incr/Dec RSP. Used for push/pop instructions.
  */  
  rule <k> decRSPInBytes(I:Int) => .  ...</k>
    <regstate> RSMap:Map => updateMap(
        RSMap, 
        "RSP" |-> subMInt({RSMap["RSP"]}:>MInt, mi(64, I)))
    </regstate>

  rule <k> incRSPInBytes(I:Int) => .  ...</k>
    <regstate> RSMap:Map => updateMap(
        RSMap, 
        "RSP" |-> addMInt({RSMap["RSP"]}:>MInt, mi(64, I)))
    </regstate>

  /*@
    pdepq/l
  */
  // Base Condition
  rule <k>
    parallelBitDeposit64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap),
          DestR, 63)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1)) andBool M ==Int 63

  rule <k>
    parallelBitDeposit64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0)) andBool M ==Int 63

  // General Condition
  rule <k>
    parallelBitDeposit64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap), DestR, M)
  ~>  parallelBitDeposit64(Mask, TempR, DestR, M +Int 1, K +Int  1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 1))
                andBool M =/=Int 63
      
  rule <k>
    parallelBitDeposit64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitDeposit64(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 0))
                andBool M =/=Int 63


  // Base Condition
  rule <k>
    parallelBitDeposit32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap),
          DestR, 31)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1)) andBool M ==Int 31

  rule <k>
    parallelBitDeposit32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0)) andBool M ==Int 31

  // General Condition
  rule <k>
    parallelBitDeposit32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, K, RSMap), DestR, M)
  ~>  parallelBitDeposit32(Mask, TempR, DestR, M +Int 1, K +Int 1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 1))
                andBool M =/=Int 31
      
  rule <k>
    parallelBitDeposit32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitDeposit32(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 0))
                andBool M =/=Int 31
    


endmodule

  /*
  context execinstr(_:Opcode (HOLE:Mem, .Operands):Operands)

  context execinstr(_:Opcode (HOLE:Mem, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, HOLE:Mem, .Operands):Operands)

  context execinstr(_:Opcode (HOLE:Mem, _:Operand, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, HOLE:Mem, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, _:Simpleoperand, HOLE:Mem, .Operands):Operands)

  context execinstr(_:Opcode (HOLE:Mem, _:Operand, _:Operand, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, HOLE:Mem, _:Operand, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, _:Simpleoperand, HOLE:Mem, _:Operand, .Operands):Operands)
  context execinstr(_:Opcode (_:Simpleoperand, _:Simpleoperand, _:Simpleoperand, HOLE:Mem, .Operands):Operands)
  */

  /*@
    Following states are using to define the initial and final
    states of register in the spec file. This is used to improve
    the runtime of kprove.
  syntax Map ::= "regstateInitConfig"  [function]
  syntax Map ::= "regstateFinalConfig" [function]

  rule regstateInitConfig =>  
      ("RIP" |->    (mi(64,  0:Int):MInt   )) 
      ("RAX" |->    (mi(64,   ?I1 :Int):MInt)) 
      ("RBX" |->    (mi(64,   ?I2 :Int):MInt)) 
      ("RCX" |->    (mi(64,   ?I3 :Int):MInt))
      ("RDX" |->    (mi(64,   ?I4 :Int):MInt))
      ("RSI" |->    (mi(64,   ?I5 :Int):MInt))
      ("RDI" |->    (mi(64,   ?I6 :Int):MInt))
      ("RSP" |->    (mi(64,   ?I7 :Int):MInt))
      ("RBP" |->    (mi(64,   ?I8 :Int):MInt))
      ("R8"  |->    (mi(64,   ?I9 :Int):MInt))
      ("R9"  |->    (mi(64,   ?I10:Int):MInt))
      ("R10" |->    (mi(64,   ?I11:Int):MInt))
      ("R11" |->    (mi(64,   ?I12:Int):MInt))
      ("R12" |->    (mi(64,   ?I13:Int):MInt))
      ("R13" |->    (mi(64,   ?I14:Int):MInt))
      ("R14" |->    (mi(64,   ?I15:Int):MInt))
      ("R15" |->    (mi(64,   ?I16:Int):MInt))
      ("CF" |->     (mi(1,    ?I17:Int):MInt))
      ("PF" |->     (mi(1,    ?I18:Int):MInt))
      ("AF" |->     (mi(1,    ?I19:Int):MInt))
      ("ZF" |->     (mi(1,    ?I20:Int):MInt))
      ("SF" |->     (mi(1,    ?I21:Int):MInt))
      ("OF" |->     (mi(1,    ?I22:Int):MInt))
      ("YMM0"   |->  (mi(256, ?I23:Int):MInt))
      ("YMM1"   |->  (mi(256, ?I24:Int):MInt))
      ("YMM2"   |->  (mi(256, ?I25:Int):MInt))
      ("YMM3"   |->  (mi(256, ?I26:Int):MInt))
      ("YMM4"   |->  (mi(256, ?I27:Int):MInt))
      ("YMM5"   |->  (mi(256, ?I28:Int):MInt))
      ("YMM6"   |->  (mi(256, ?I29:Int):MInt))
      ("YMM7"   |->  (mi(256, ?I30:Int):MInt))
      ("YMM8"   |->  (mi(256, ?I31:Int):MInt))
      ("YMM9"   |->  (mi(256, ?I32:Int):MInt))
      ("YMM10"  |->  (mi(256, ?I33:Int):MInt))
      ("YMM11"  |->  (mi(256, ?I34:Int):MInt))
      ("YMM12"  |->  (mi(256, ?I35:Int):MInt))
      ("YMM13"  |->  (mi(256, ?I36:Int):MInt))
      ("YMM14"  |->  (mi(256, ?I37:Int):MInt))
      ("YMM15"  |->  (mi(256, ?I38:Int):MInt))

    rule regstateFinalConfig =>  
      ("RIP" |->    ?K1:K) 
      ("RAX" |->    ?K2:K) 
      ("RBX" |->    ?K3:K) 
      ("RCX" |->    ?K4:K)
      ("RDX" |->    ?K5:K)
      ("RSI" |->    ?K6:K)
      ("RDI" |->    ?K7:K)
      ("RSP" |->    ?K8:K)
      ("RBP" |->    ?K9:K)
      ("R8"  |->    ?K10:K)
      ("R9"  |->    ?K11:K)
      ("R10" |->    ?K12:K)
      ("R11" |->    ?K13:K)
      ("R12" |->    ?K14:K)
      ("R13" |->    ?K15:K)
      ("R14" |->    ?K16:K)
      ("R15" |->    ?K17:K)
      ("CF" |->     ?K18:K)
      ("PF" |->     ?K19:K)
      ("AF" |->     ?K20:K)
      ("ZF" |->     ?K21:K)
      ("SF" |->     ?K22:K)
      ("OF" |->     ?K23:K)
      ("YMM0"  |->  ?K24:K)
      ("YMM1"  |->  ?K25:K)
      ("YMM2"  |->  ?K26:K)
      ("YMM3"  |->  ?K27:K)
      ("YMM4"  |->  ?K28:K)
      ("YMM5"  |->  ?K29:K)
      ("YMM6"  |->  ?K30:K)
      ("YMM7"  |->  ?K31:K)
      ("YMM8"  |->  ?K32:K)
      ("YMM9"  |->  ?K33:K)
      ("YMM10"  |-> ?K34:K)
      ("YMM11"  |-> ?K35:K)
      ("YMM12" |->  ?K36:K)
      ("YMM13" |->  ?K37:K)
      ("YMM14" |->  ?K38:K)
      ("YMM15" |->  ?K39:K)
  */
