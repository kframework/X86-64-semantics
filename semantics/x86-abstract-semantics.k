require "x86-configuration.k"
require "hex-token.k"

module X86-ABSTRACT-SEMANTICS
  imports X86-CONFIGURATION
  imports HEX-TOKEN

  /*@
    Function related to null checks
  */
  rule isPointerValNull(Addr:MInt) => uvalueMInt(Addr) ==Int 0

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

  // (%r64)    
  rule <k> (R1:R64):Mem => 0 (R1:R64) ...</k>
  rule <k> I:Int (R1:R64):Mem => memOffset( addMInt(mi(64, I), getRegisterValue(R1, RSMap))) ... </k>
       <regstate> RSMap </regstate>

  // (, %r64)                                    
  rule <k> (, R2:R64):Mem         => 0 (, R2, 1) ...</k>
  rule <k> I:Int (, R2:R64):Mem   => I (, R2, 1) ...</k>
  rule <k> ( , R2:R64, S:Int):Mem => 0 (, R2, S) ...</k>
  rule <k> I:Int (, R2:R64):Mem   => I (, R2, 1) ...</k>
  rule <k> I:Int (, R2:R64, S:Int):Mem => memOffset( addMInt(mi(64, I), mulMInt(getRegisterValue(R2, RSMap), mi(64, S)))) ... </k>
       <regstate> RSMap </regstate>

  // (%r64, %r64)                                
  rule <k> (R1:R64, R2:R64):Mem => 0 (R1, R2, 1) ...</k>
  rule <k> (R1:R64, R2:R64, S:Int):Mem => 0 (R1, R2, S) ...</k>
  rule <k> I:Int (R1:R64, R2:R64):Mem => I (R1, R2, 1) ...</k>
  rule <k> I:Int (R1:R64, R2:R64, S:Int):Mem => memOffset( addMInt(mi(64, I), addMInt(getRegisterValue(R1, RSMap), mulMInt(getRegisterValue(R2, RSMap), mi(64, S))))) ...</k>
       <regstate> RSMap </regstate>

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

  // Or a HexConstant: For hexconstants like 0x800, we have to provide the substr 800
  // as an argument to  String2Base
  rule handleImmediateWithSignExtend(($ H:HexConstant):Imm, M:Int, N:Int) =>
    signExtend(mi(M, HexConstant2Int(H)), N)

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
    findLimitIndexE
  */
  rule findLimitIndexE(Value:MInt, Length:MInt, Imm8:MInt) => 
    #ifMInt absInt(svalueMInt(Length)) >Int 8  #then mi(8, 8)  #else mi(8, absInt(svalueMInt(Length))) #fi
      requires eqMInt(extractMInt(Imm8, 7, 8), mi(1, 1)) // Interpret as 8 words  

  rule findLimitIndexE(Value:MInt, Length:MInt, Imm8:MInt) => 
    #ifMInt absInt(svalueMInt(Length)) >Int 16 #then mi(8, 16) #else mi(8, absInt(svalueMInt(Length))) #fi
      requires eqMInt(extractMInt(Imm8, 7, 8), mi(1, 0)) // Interpret as 16 bytes  

  /*@
    findLimitIndexI
  */
  rule findLimitIndexI(Value:MInt, Imm8:MInt) => findLimitIndexIHelper(Value, 
      {#ifInt eqMInt(extractMInt(Imm8, 7, 8), mi(1, 1)) #then 16 #else 8 #fi}:>Int, 
      {#ifInt eqMInt(extractMInt(Imm8, 7, 8), mi(1, 1)) #then 8 #else 16 #fi}:>Int, 
      0) 

  rule findLimitIndexIHelper(Value:MInt, BitLength:Int, NumElems:Int, Count:Int) => mi(8, Count)
      requires Count ==Int NumElems


  rule findLimitIndexIHelper(Value:MInt, BitLength:Int, NumElems:Int, Count:Int) => mi(8, Count)
      requires Count =/=Int NumElems andBool 
      eqMInt(extractMask(Value, BitLength, Count *Int BitLength), mi(BitLength, 0)) 

  rule findLimitIndexIHelper(Value:MInt, BitLength:Int, NumElems:Int, Count:Int) => 
    findLimitIndexIHelper(Value, BitLength, NumElems, Count +Int 1)  
      requires Count =/=Int NumElems andBool 
      (notBool eqMInt(extractMask(Value, BitLength, Count *Int BitLength), mi(BitLength, 0)) )

  /*@
    Equal Any
  */

  rule equalAnyImpl(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) =>
    equalAnyImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, mi(NumElems, 0), NumElems, 0)

  rule equalAnyImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => IntRes1
    requires Count2 ==Int  UB2
    
  rule equalAnyImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => 
  equalAnyImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
      equalAnyImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, IntRes1, UB2, Count2, NumElems, 0), 
      UB2, Count2 +Int 1)
    requires Count2 =/=Int  UB2
    

  rule equalAnyImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UB1:Int, Count1:Int) => IntRes1
    requires Count1 ==Int  UB1

  rule equalAnyImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UB1:Int, Count1:Int) => 
    equalAnyImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
        updateIntRes1EqualAny(IntRes1, Count2, Count2, Count1, Value2, Value1, Limit2, Limit1, NumElems, SOrU), UB2, Count2, UB1, Count1 +Int 1)
    requires Count1 =/=Int  UB1


  rule   updateIntRes1EqualAny(IntRes1:MInt, Index:Int, Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    plugInMask(
        IntRes1, 
        orMInt(
          extractMask(IntRes1, 1, Index), 
          compareEqual(Count2, Count1, Value2, Value1, Limit2, Limit1, NumElems, SOrU)
        ), Index)

  // Compare Equal
  rule compareEqual(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 0)
      requires Count1 >=Int uvalueMInt(Limit1) orBool Count2 >=Int uvalueMInt(Limit2) // If any of the data is invalid return 0

  rule compareEqual(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    compareEqualSignedOrUnsigned(
        extractMask(Value2, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count2 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
        extractMask(Value1, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count1 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
        SOrU
    )           
      requires Count1 <Int uvalueMInt(Limit1) andBool Count2 <Int uvalueMInt(Limit2) // If both of the data are valid, return comparison result


  rule compareEqualSignedOrUnsigned(Data1:MInt, Data2:MInt,  SOrU:MInt) => 
    fromBoolToMInt(
      eqMInt(Data1, Data2),
      1)

  /*@
    Equal Each
  */

  rule equalEachImpl(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) =>
    equalEachImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, mi(NumElems, 0), NumElems, 0)

  rule equalEachImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => IntRes1
    requires Count2 ==Int  UB2
    
  rule equalEachImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => 
  equalEachImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
      updateIntRes1EqualEach(IntRes1, Count2, Value2, Value1, Limit2, Limit1, NumElems, SOrU), 
      UB2, Count2 +Int 1)
    requires Count2 =/=Int  UB2
    
  rule   updateIntRes1EqualEach(IntRes1:MInt, Index:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    plugInMask(
        IntRes1, 
        compareEach(Index, Value2, Value1, Limit2, Limit1, NumElems, SOrU),
        Index)

  // Compare Each
  rule compareEach(Index:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 0)
      requires // If one of valid and other invalid
        notBool (
          (Index <Int uvalueMInt(Limit1) andBool Index <Int uvalueMInt(Limit2))
        orBool 
          (Index >=Int uvalueMInt(Limit1) andBool Index >=Int uvalueMInt(Limit2))
          )

  rule compareEach(Index:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 1)
      requires // If both are invalid
          (Index >=Int uvalueMInt(Limit1) andBool Index >=Int uvalueMInt(Limit2))

  rule compareEach(Index:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    compareEqualSignedOrUnsigned(
        extractMask(Value2, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Index *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
        extractMask(Value1, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Index *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
        SOrU
    )           
      requires // If both of the data are valid
          (Index  <Int uvalueMInt(Limit1) andBool Index  <Int uvalueMInt(Limit2))

  /*@
    Range
  */
  // execinstr ( pcmpestri 8'4 , 128'0 , 128'0 , 8'0 , 8'0 , 8'16 , 1'0 , rangeImplHelper1 ( 128'0 , 128'0 , 8'0 , 8'0 , 16 , 1'0 , 16'0 , 16 , 0 ) , rangeImplHelper1 ( 128'0 , 128'0 , 8'0 , 8'0 , 16 , 1'0 , 16'0 , 16 , 0 ) , .Operands ) 
  rule rangeImpl(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) =>
    rangeImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, mi(NumElems, 0), NumElems, 0)

  rule rangeImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => IntRes1
    requires Count2 ==Int  UB2
    
  rule rangeImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
        SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => 
  rangeImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
      rangeImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, IntRes1, UB2, Count2, NumElems, 0), 
      UB2, Count2 +Int 1)
    requires Count2 =/=Int  UB2
    

  rule rangeImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UB1:Int, Count1:Int) => IntRes1
    requires Count1 ==Int  UB1

  rule rangeImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UB1:Int, Count1:Int) => 
    rangeImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
        updateIntRes1Range(IntRes1, Count2, Count2, Count1, Value2, Value1, Limit2, Limit1, NumElems, SOrU), UB2, Count2, UB1, Count1 +Int 2)
    requires Count1 =/=Int  UB1


  rule   updateIntRes1Range(IntRes1:MInt, Index:Int, Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, 
      Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    plugInMask(
        IntRes1, 
        orMInt(
          extractMask(IntRes1, 1, Index), 
          compareRange(Count2, Count1, Value2, Value1, Limit2, Limit1, NumElems, SOrU)
        ), 
        Index)

  // Compare Range
  rule compareRange(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 0)
      requires Count1 >=Int uvalueMInt(Limit1) orBool (Count1 +Int 1) >=Int uvalueMInt(Limit1) orBool Count2 >=Int uvalueMInt(Limit2)  
  // If any of the data is invalid return 0

  rule compareRange(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    andMInt(
      compareGESignedOrUnsigned(
          extractMask(Value2, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count2 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          extractMask(Value1, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count1 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          SOrU
      ),
      compareLESignedOrUnsigned(
          extractMask(Value2, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count2 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          extractMask(Value1, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count1 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          SOrU
      ))

      requires notBool (Count1 >=Int uvalueMInt(Limit1) orBool (Count1 +Int 1) >=Int uvalueMInt(Limit1) orBool Count2 >=Int uvalueMInt(Limit2)  )
  // If both of the data are valid, return comparison result

  /*@
    Equal Ordered
  */
  rule equalOrderedImpl(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) =>
    equalOrderedImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU, mi(NumElems, -1), NumElems, 0)

  rule equalOrderedImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => IntRes1
    requires Count2 ==Int  UB2
    
  rule equalOrderedImplHelper1(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
        SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int) => 
  equalOrderedImplHelper1(Value2, Value1, Limit2, Limit1, NumElems, SOrU,                           /* i limits           */ /* k limits*/
      equalOrderedImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, IntRes1, UB2, Count2, NumElems -Int Count2, 0, NumElems, Count2), 
      UB2, Count2 +Int 1)
    requires Count2 =/=Int  UB2
    

  rule equalOrderedImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UBi:Int, Counti:Int, UBk:Int, Countk:Int) => IntRes1
    requires Counti ==Int  UBi 

  rule equalOrderedImplHelper2(Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, 
      SOrU:MInt, IntRes1:MInt, UB2:Int, Count2:Int, UBi:Int, Counti:Int, UBk:Int, Countk:Int) => 
    equalOrderedImplHelper2(Value2, Value1, Limit2, Limit1, NumElems, SOrU, 
        updateIntRes1EqualOrdered(IntRes1, Count2, Countk, Counti, Value2, Value1, Limit2, Limit1, NumElems, SOrU), UB2, Count2, UBi, Counti +Int 1,  UBk, Countk +Int 1)
    requires Counti =/=Int  UBi


  rule   updateIntRes1EqualOrdered(IntRes1:MInt, Index:Int, Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, 
      Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
    plugInMask(
        IntRes1, 
        andMInt(
          extractMask(IntRes1, 1, Index), 
          compareEqualOrdered(Count2, Count1, Value2, Value1, Limit2, Limit1, NumElems, SOrU)
        ), Index)

  // Compare Equal Ordered
  rule compareEqualOrdered(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 1)
      requires Count1 >=Int uvalueMInt(Limit1) // If count1 is invalid

  rule compareEqualOrdered(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => mi(1, 0)
      requires Count1 <Int uvalueMInt(Limit1) andBool  Count2 >=Int uvalueMInt(Limit2) // If count1 is invalid, ut count2 invalid 

  rule compareEqualOrdered(Count2:Int, Count1:Int, Value2:MInt, Value1:MInt, Limit2:MInt, Limit1:MInt, NumElems:Int, SOrU:MInt) => 
      compareEqualSignedOrUnsigned(
          extractMask(Value2, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count2 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          extractMask(Value1, {#ifInt NumElems ==Int 8 #then 16 #else 8 #fi}:>Int, Count1 *Int {#if NumElems ==Int 8 #then 16 #else 8 #fi}:>Int),
          SOrU
      )

      requires Count1 <Int uvalueMInt(Limit1) andBool Count2 <Int uvalueMInt(Limit2) // If both of the data are valid, return comparison result

  // General
  // Compare Equal
  rule compareEqualSignedOrUnsigned(Data1:MInt, Data2:MInt,  SOrU:MInt) => 
    fromBoolToMInt(
      eqMInt(Data1, Data2),
      1)

  // Compare GE
  rule compareGESignedOrUnsigned(Data1:MInt, Data2:MInt,  SOrU:MInt) => 
    fromBoolToMInt(
      #ifBool eqMInt(SOrU, mi(1, 1)) #then sgeMInt(Data1, Data2) #else ugeMInt(Data1, Data2) #fi,
      1)  
    
  // Compare LE
  rule compareLESignedOrUnsigned(Data1:MInt, Data2:MInt,  SOrU:MInt) => 
    fromBoolToMInt(
      #ifBool eqMInt(SOrU, mi(1, 1)) #then sleMInt(Data1, Data2) #else uleMInt(Data1, Data2) #fi,
      1)  

  /*@ 
    Polarity
  */  
  rule  polarityImpl(IntRes1:MInt, Imm8:MInt, _:Int, _:MInt) => IntRes1
    requires eqMInt(extractMInt(Imm8, 2, 4), mi(2, 0))

  rule  polarityImpl(IntRes1:MInt, Imm8:MInt, _:Int, _:MInt) => negMInt(IntRes1)
    requires eqMInt(extractMInt(Imm8, 2, 4), mi(2, 1))

  rule  polarityImpl(IntRes1:MInt, Imm8:MInt, _:Int, _:MInt) => IntRes1
    requires eqMInt(extractMInt(Imm8, 2, 4), mi(2, 2))
    
  rule  polarityImpl(IntRes1:MInt, Imm8:MInt, NumElems:Int, Limit2:MInt) => 
    polarityImplHelper(IntRes1, Imm8, NumElems, Limit2, 0)      
      requires eqMInt(extractMInt(Imm8, 2, 4), mi(2, 3))

  rule polarityImplHelper(IntRes1:MInt, Imm8:MInt, NumElems:Int, Limit2:MInt, Count:Int) => IntRes1 
    requires Count ==Int NumElems

  rule polarityImplHelper(IntRes1:MInt, Imm8:MInt, NumElems:Int, Limit2:MInt, Count:Int) => 
    polarityImplHelper(
        updatePolarity(IntRes1, Count, Limit2), 
        Imm8, NumElems, Limit2, Count +Int 1)    
      requires Count =/=Int NumElems

  rule   updatePolarity(IntRes1:MInt, Index:Int, Limit2:MInt) => 
    plugInMask(
        IntRes1, 
        #ifMInt Index >=Int uvalueMInt(Limit2) #then 
          extractMask(IntRes1, 1, Index) #else
          negMInt(extractMask(IntRes1, 1, Index)) #fi
        , Index)

  /*@
    Expand Mask
  */
  rule expandMask(IntRes2:MInt) =>  expandMaskHelper(IntRes2, bitwidthMInt(IntRes2), 0)

  rule expandMaskHelper(IntRes2:MInt, NumElems:Int, Count:Int) => 
    #ifMInt eqMInt(extractMask(IntRes2, 1, Count), mi(1, 0)) 
    #then 
        {#ifMInt NumElems ==Int 8 #then mi(16, 0) #else mi(8, 0) #fi}:>MInt
    #else    
        {#ifMInt NumElems ==Int 8 #then mi(16, -1) #else mi(8, -1) #fi}:>MInt
    #fi
      requires Count ==Int (NumElems -Int 1)


  rule expandMaskHelper(IntRes2:MInt, NumElems:Int, Count:Int) => 
    concatenateMInt(
        expandMaskHelper(IntRes2, NumElems, Count +Int 1),
        #ifMInt eqMInt(extractMask(IntRes2, 1, Count), mi(1, 0)) 
        #then 
          {#ifMInt NumElems ==Int 8 #then mi(16, 0) #else mi(8, 0) #fi}:>MInt
        #else    
          {#ifMInt NumElems ==Int 8 #then mi(16, -1) #else mi(8, -1) #fi}:>MInt
        #fi
      )
        requires Count =/=Int (NumElems -Int 1)
endmodule

