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
/*
  rule convToRegKeysHelper(%mm0)  => "MM0"
  rule convToRegKeysHelper(%mm1)  => "MM1"
  rule convToRegKeysHelper(%mm2)  => "MM2"
  rule convToRegKeysHelper(%mm3)  => "MM3"
  rule convToRegKeysHelper(%mm4)  => "MM4"
  rule convToRegKeysHelper(%mm5)  => "MM5"
  rule convToRegKeysHelper(%mm6)  => "MM6"
  rule convToRegKeysHelper(%mm7)  => "MM7"
*/

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
/*
  rule convSubRegsToRegs(%mm0 )  => %mm0
  rule convSubRegsToRegs(%mm1 )  => %mm1
  rule convSubRegsToRegs(%mm2 )  => %mm2
  rule convSubRegsToRegs(%mm3 )  => %mm3
  rule convSubRegsToRegs(%mm4 )  => %mm4
  rule convSubRegsToRegs(%mm5 )  => %mm5
  rule convSubRegsToRegs(%mm6 )  => %mm6
  rule convSubRegsToRegs(%mm7 )  => %mm7
*/
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
/*
  rule <k> setRegisterValue(MI64:MInt, M:Mm) => .  ...</k>
    <regstate>... convToRegKeys(M) |-> ( _ => MI64) ...</regstate>
*/

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
/*
  rule getRegisterValue(M:Mm,  RSMap)  =>  {RSMap[convToRegKeys(M)]}:>MInt
*/
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
  // rule getRegisterSize(M:Mm) => 64

  
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
    

  /*@
    pextl/q
  */
   // Base Condition
  rule <k>
    parallelBitExtract32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, 31, RSMap), DestR, K)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1)) andBool M ==Int 31

  rule <k>
    parallelBitExtract32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0)) andBool M ==Int 31

  // General Condition
  rule <k>
    parallelBitExtract32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, M, RSMap), DestR, K)
  ~>  parallelBitExtract32(Mask, TempR, DestR, M +Int 1, K +Int 1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 1))
                andBool M =/=Int 31
      
  rule <k>
    parallelBitExtract32(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitExtract32(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 31 -Int M, 32 -Int M), mi(1, 0))
                andBool M =/=Int 31
             

  // Base Condition
  rule <k>
    parallelBitExtract64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, 63, RSMap), DestR, K)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 1)) andBool M ==Int 63

  rule <k>
    parallelBitExtract64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
    .
  ...</k>  
    requires eqMInt( extractMInt(Mask, 0, 1), mi(1, 0)) andBool M ==Int 63

  // General Condition
  rule <k>
    parallelBitExtract64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
      setRegisterBitsAtPositon(getRegisterBitsAtPositon(TempR, 1, M, RSMap), DestR, K)
  ~>  parallelBitExtract64(Mask, TempR, DestR, M +Int 1, K +Int 1)
  ...</k>  
    <regstate> RSMap:Map </regstate>
      requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 1))
                andBool M =/=Int 63
      
  rule <k>
    parallelBitExtract64(Mask:MInt, TempR:Register, DestR:Register, M:Int, K:Int) => 
        parallelBitExtract64(Mask, TempR, DestR, M +Int 1, K)
  ...</k>  
    requires eqMInt( extractMInt(Mask, 63 -Int M, 64 -Int M), mi(1, 0))
                andBool M =/=Int 63               


  /*@
    bsf/bsr
  */
  rule scanForward(M:MInt, N:Int, W:Int) => W -Int 1 -Int N
    requires eqMInt(extractMInt(M, N, N +Int 1), mi(1,1)) 

  rule scanForward(M:MInt, N:Int, W:Int) => scanForward(M, N -Int 1, W)
    requires notBool eqMInt(extractMInt(M, N, N +Int 1), mi(1,1))

  rule scanReverse(M:MInt, N:Int, W:Int) => W -Int 1 -Int N
    requires eqMInt(extractMInt(M, N, N +Int 1), mi(1,1)) 

  rule scanReverse(M:MInt, N:Int, W:Int) => scanReverse(M, N +Int 1, W)
    requires notBool eqMInt(extractMInt(M, N, N +Int 1), mi(1,1))

  /*@
    pcmpestri
  */
  rule findLimitIndexE(Value:MInt, Length:MInt, Imm8:MInt) => 
    #ifMInt absInt(svalueMInt(Length)) >Int 8 #then mi(8, 8) #else Imm8 #fi
      requires eqMInt(extractMInt(Imm8, 7, 8), mi(1, 1)) // Interpret as 8 words  

  rule findLimitIndexE(Value:MInt, Length:MInt, Imm8:MInt) => 
    #ifMInt absInt(svalueMInt(Length)) >Int 16 #then mi(8, 16) #else Imm8 #fi
      requires eqMInt(extractMInt(Imm8, 7, 8), mi(1, 0)) // Interpret as 16 bytes  
endmodule
