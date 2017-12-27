requires "x86-configuration.k"
requires "x86-general-utils.k"

module X86-ABSTRACT-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-GENERAL-UTILS

  rule getISize((OpC:Opcode OpR:Typedoperands):Instruction) => 1

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
  rule <k> setRegisterValue(MI64, R:R64) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> (_ => MI64) ...</regstate>

  rule <k> setRegisterValue(MI32, R:R32) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI32,  0)) ...</regstate>

  rule <k> setRegisterValue(MI16, R:R16) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI16,  0)) ...</regstate>

  rule <k> setRegisterValue(MI8, R:R8) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI8,   0)) ...</regstate>

  rule <k> setRegisterValue(MI8, R:Rh) => .  ...</k>
    <regstate>... convToRegKeys(R) |-> ( MI64 => plugInMask(MI64,  MI8,   8)) ...</regstate>

  rule <k> setRegisterValue(MI128, X:Xmm) => .  ...</k>
    <regstate>... convToRegKeys(X) |-> ( MI256 => plugInMask(MI256, MI128, 0)) ...</regstate>

  rule <k> setRegisterValue(MI256, Y:Ymm) => .  ...</k>
    <regstate>... convToRegKeys(Y) |-> (_ => MI256) ...</regstate>

  /*@
    Getting the registers values according to the register variants.
  */
  rule getRegisterValue(R:R8,  RSMap)  =>  extractMask(RSMap[convToRegKeys(R)]:>MInt, 8, 0)
  rule getRegisterValue(R:R16, RSMap)  =>  extractMask(RSMap[convToRegKeys(R)]:>MInt, 16, 0)
  rule getRegisterValue(R:R32, RSMap)  =>  extractMask(RSMap[convToRegKeys(R)]:>MInt, 32, 0)
  rule getRegisterValue(R:R64, RSMap)  =>  RSMap[convToRegKeys(R)]:>MInt
  rule getRegisterValue(R:Rh,  RSMap)  =>  extractMask(RSMap[convToRegKeys(R)]:>MInt, 8, 8)
  rule getRegisterValue(X:Xmm, RSMap)  =>  extractMask(RSMap[convToRegKeys(X)]:>MInt, 128, 0)
  rule getRegisterValue(Y:Ymm, RSMap)  =>  RSMap[convToRegKeys(Y)]:>MInt

  /*@
    handleImmediate(Imm, W): Compute a MInt corresponding
    to the Imm value of width W.
  */
  // Imm could be an Int
  rule handleImmediate($ I:Int, W:Int) => mi(W,I)
  // Or a HexConstant
  syntax String ::= HexConstant2String ( HexConstant )    [function, hook(STRING.token2string)]
  rule handleImmediate($0x H:HexConstant, W:Int) =>
    mi(W, String2Base(HexConstant2String(H), 16))

  /*@ 
    Check if two registers are the same
  */  
  rule sameRegisters(R1, R2) =>  convToRegKeys(R1) ==String  convToRegKeys(R2)

  /*@ 
    Update Register's value at arbitrary position.
  */  
  rule <k> setRegisterBitsAtPositon(MInew, R, P) => . ...</k>
    <regstate>... convToRegKeys(R) |-> ( MIold => plugInMask(MIold, MInew, P)) ...</regstate>
      requires (P +Int bitwidthMInt(MInew)) <=Int bitwidthMInt(MIold)

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
endmodule


















