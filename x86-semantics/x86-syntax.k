module X86-SYNTAX
  /*@ 
    The following captures  the At&t syntax of x86 assembly.
  */
  syntax Instructions ::= List{Instruction, ""} [klabel(instructionlist)]
  syntax Instruction ::= Label 
                       | Opcode Typedoperands
                       | ".section" ".text" [token]
                       | ".globl" "_start"  [token]
  syntax Label ::=  "_start" ":" [token]
        
  syntax HexConstant ::=  r"[0-9a-fA-F]*" [token]

  syntax Typedoperands ::= List{Typeoperand, ","} [klabel(typeoperandlist)]
  syntax Typeoperand ::=  Imm
                       | Mm
                       | Sreg
//                     | St
                       | Memoffs
                       | Mem
                       | Register
  syntax Register ::= Rh
                    | R8
                    | R16
                    | R32
                    | R64
                    | Xmm
                    | Ymm
  syntax Memoffs ::= Offset
                   | Sreg ":" Offset
  syntax Offset ::= Int
  syntax Imm ::= "$" Int
               | "$0x" HexConstant
  syntax Mem ::= "(" R32 ")"
               | "(" R64 ")"
               | "(" Rip ")"
               | Sreg ":" "(" R32 ")"
               | Sreg ":" "(" R64 ")"
               | Sreg ":" "(" Rip ")"
               | Offset "(" R32 ")"
               | Offset "(" R64 ")"
               | Offset "(" Rip ")"
               | Sreg ":" Offset "(" R32 ")"
               | Sreg ":" Offset "(" R64 ")"
               | Sreg ":" Offset "(" Rip ")"
               | "(" "," R32 "," Scale ")"
               | "(" "," R64 "," Scale ")"
               | "(" "," R32 ")"
               | "(" "," R64 ")"
               | Sreg ":" "(" "," R32 "," Scale ")"
               | Sreg ":" "(" "," R64 "," Scale ")"
               | Sreg ":" "(" "," R32 ")"
               | Sreg ":" "(" "," R64 ")"
               | Offset "(" "," R32 "," Scale ")"
               | Offset "(" "," R64 "," Scale ")"
               | Offset "(" "," R32 ")"
               | Offset "(" "," R64 ")"
               | Sreg ":" Offset "(" "," R32 "," Scale ")"
               | Sreg ":" Offset "(" "," R64 "," Scale ")"
               | Sreg ":" Offset "(" "," R32 ")"
               | Sreg ":" Offset "(" "," R64 ")"
               | "(" R32 "," R32 "," Scale ")"
               | "(" R64 "," R64 "," Scale ")"
               | "(" R32 "," R32 ")"
               | "(" R64 "," R64 ")"
               | Sreg ":" "(" R32 "," R32 "," Scale ")"
               | Sreg ":" "(" R64 "," R64 "," Scale ")"
               | Sreg ":" "(" R32 "," R32 ")"
               | Sreg ":" "(" R64 "," R64 ")"
               | Offset "(" R32 "," R32 "," Scale ")"
               | Offset "(" R64 "," R64 "," Scale ")"
               | Offset "(" R32 "," R32 ")"
               | Offset "(" R64 "," R64 ")"
               | Sreg ":" Offset "(" R32 "," R32 "," Scale ")"
               | Sreg ":" Offset "(" R64 "," R64 "," Scale ")"
               | Sreg ":" Offset "(" R32 "," R32 ")"
               | Sreg ":" Offset "(" R64 "," R64 ")"
  syntax Rip ::= "%rip"
  syntax Scale ::= "1"
                 | "2"
                 | "3"
                 | "4"
  syntax Mm ::= "%mm0"
              | "%mm1"
              | "%mm2"
              | "%mm3"
              | "%mm4"
              | "%mm5"
              | "%mm6"
              | "%mm7"
  syntax Rh ::= "%ah"
              | "%bh"
              | "%ch"
              | "%dh"
  syntax R8 ::= "%al"
              | "%bl"
              | "%cl"
              | "%dl"
              | "%sil"
              | "%dil"
              | "%spl"
              | "%bpl"
              | "%r8b"
              | "%r9b"
              | "%r10b"
              | "%r11b"
              | "%r12b"
              | "%r13b"
              | "%r14b"
              | "%r15b"
  syntax R16 ::= "%ax"
               | "%bx"
               | "%cx"
               | "%dx"
               | "%si"
               | "%di"
               | "%sp"
               | "%bp"
               | "%r8w"
               | "%r9w"
               | "%r10w"
               | "%r11w"
               | "%r12w"
               | "%r13w"
               | "%r14w"
               | "%r15w"
  syntax R32 ::= "%eax"
               | "%ebx"
               | "%ecx"
               | "%edx"
               | "%esi"
               | "%edi"
               | "%esp"
               | "%ebp"
               | "%r8d"
               | "%r9d"
               | "%r10d"
               | "%r11d"
               | "%r12d"
               | "%r13d"
               | "%r14d"
               | "%r15d"
  syntax R64 ::= "%rax"
               | "%rbx"
               | "%rcx"
               | "%rdx"
               | "%rsi"
               | "%rdi"
               | "%rsp"
               | "%rbp"
               | "%r8"
               | "%r9"
               | "%r10"
               | "%r11"
               | "%r12"
               | "%r13"
               | "%r14"
               | "%r15"
  syntax Sreg ::= "%es"
                | "%cs"
                | "%ss"
                | "%ds"
                | "%fs"
                | "%gs"
/*                
  syntax St ::= "%st"
              | "%st(0)"
              | "%st(1)"
              | "%st(2)"
              | "%st(3)"
              | "%st(4)"
              | "%st(5)"
              | "%st(6)"
              | "%st(7)"
*/
  syntax Xmm ::= "%xmm0"
               | "%xmm1"
               | "%xmm2"
               | "%xmm3"
               | "%xmm4"
               | "%xmm5"
               | "%xmm6"
               | "%xmm7"
               | "%xmm8"
               | "%xmm9"
               | "%xmm10"
               | "%xmm11"
               | "%xmm12"
               | "%xmm13"
               | "%xmm14"
               | "%xmm15"
  syntax Ymm ::= "%ymm0"
               | "%ymm1"
               | "%ymm2"
               | "%ymm3"
               | "%ymm4"
               | "%ymm5"
               | "%ymm6"
               | "%ymm7"
               | "%ymm8"
               | "%ymm9"
               | "%ymm10"
               | "%ymm11"
               | "%ymm12"
               | "%ymm13"
               | "%ymm14"
               | "%ymm15"

  syntax Opcode ::= "adcb" [token]
                  | "adcl" [token]
                  | "adcq" [token]
                  | "adcw" [token]
                  | "addb" [token]
                  | "addl" [token]
                  | "addpd" [token]
                  | "addps" [token]
                  | "addq" [token]
                  | "addsd" [token]
                  | "addss" [token]
                  | "addsubpd" [token]
                  | "addsubps" [token]
                  | "addw" [token]
                  | "andb" [token]
                  | "andl" [token]
                  | "andnl" [token]
                  | "andnpd" [token]
                  | "andnps" [token]
                  | "andnq" [token]
                  | "andpd" [token]
                  | "andps" [token]
                  | "andq" [token]
                  | "andw" [token]
                  | "bextrl" [token]
                  | "bextrq" [token]
                  | "blendvpd" [token]
                  | "blendvps" [token]
                  | "blsil" [token]
                  | "blsiq" [token]
                  | "blsmskl" [token]
                  | "blsmskq" [token]
                  | "blsrl" [token]
                  | "blsrq" [token]
                  | "bswap" [token]
                  | "btcl" [token]
                  | "btcq" [token]
                  | "btcw" [token]
                  | "btl" [token]
                  | "btq" [token]
                  | "btrl" [token]
                  | "btrq" [token]
                  | "btrw" [token]
                  | "btsl" [token]
                  | "btsq" [token]
                  | "btsw" [token]
                  | "btw" [token]
                  | "bzhil" [token]
                  | "bzhiq" [token]
                  | "cbtw" [token]
                  | "clc" [token]
                  | "cltd" [token]
                  | "cltq" [token]
                  | "cmc" [token]
                  | "cmovael" [token]
                  | "cmovaeq" [token]
                  | "cmovaew" [token]
                  | "cmoval" [token]
                  | "cmovaq" [token]
                  | "cmovaw" [token]
                  | "cmovbel" [token]
                  | "cmovbeq" [token]
                  | "cmovbew" [token]
                  | "cmovbl" [token]
                  | "cmovbq" [token]
                  | "cmovbw" [token]
                  | "cmovcl" [token]
                  | "cmovcq" [token]
                  | "cmovcw" [token]
                  | "cmovel" [token]
                  | "cmoveq" [token]
                  | "cmovew" [token]
                  | "cmovgel" [token]
                  | "cmovgeq" [token]
                  | "cmovgew" [token]
                  | "cmovgl" [token]
                  | "cmovgq" [token]
                  | "cmovgw" [token]
                  | "cmovlel" [token]
                  | "cmovleq" [token]
                  | "cmovlew" [token]
                  | "cmovll" [token]
                  | "cmovlq" [token]
                  | "cmovlw" [token]
                  | "cmovnael" [token]
                  | "cmovnaeq" [token]
                  | "cmovnaew" [token]
                  | "cmovnal" [token]
                  | "cmovnaq" [token]
                  | "cmovnaw" [token]
                  | "cmovnbel" [token]
                  | "cmovnbeq" [token]
                  | "cmovnbew" [token]
                  | "cmovnbl" [token]
                  | "cmovnbq" [token]
                  | "cmovnbw" [token]
                  | "cmovncl" [token]
                  | "cmovncq" [token]
                  | "cmovncw" [token]
                  | "cmovnel" [token]
                  | "cmovneq" [token]
                  | "cmovnew" [token]
                  | "cmovngel" [token]
                  | "cmovngeq" [token]
                  | "cmovngew" [token]
                  | "cmovngl" [token]
                  | "cmovngq" [token]
                  | "cmovngw" [token]
                  | "cmovnlel" [token]
                  | "cmovnleq" [token]
                  | "cmovnlew" [token]
                  | "cmovnll" [token]
                  | "cmovnlq" [token]
                  | "cmovnlw" [token]
                  | "cmovnol" [token]
                  | "cmovnoq" [token]
                  | "cmovnow" [token]
                  | "cmovnpl" [token]
                  | "cmovnpq" [token]
                  | "cmovnpw" [token]
                  | "cmovnsl" [token]
                  | "cmovnsq" [token]
                  | "cmovnsw" [token]
                  | "cmovnzl" [token]
                  | "cmovnzq" [token]
                  | "cmovnzw" [token]
                  | "cmovol" [token]
                  | "cmovoq" [token]
                  | "cmovow" [token]
                  | "cmovpel" [token]
                  | "cmovpeq" [token]
                  | "cmovpew" [token]
                  | "cmovpl" [token]
                  | "cmovpol" [token]
                  | "cmovpoq" [token]
                  | "cmovpow" [token]
                  | "cmovpq" [token]
                  | "cmovpw" [token]
                  | "cmovsl" [token]
                  | "cmovsq" [token]
                  | "cmovsw" [token]
                  | "cmovzl" [token]
                  | "cmovzq" [token]
                  | "cmovzw" [token]
                  | "cmpb" [token]
                  | "cmpl" [token]
                  | "cmpq" [token]
                  | "cmpw" [token]
                  | "cmpxchgb" [token]
                  | "cmpxchgl" [token]
                  | "cmpxchgq" [token]
                  | "cmpxchgw" [token]
                  | "comisd" [token]
                  | "comiss" [token]
                  | "cqto" [token]
                  | "cvtdq2pd" [token]
                  | "cvtdq2ps" [token]
                  | "cvtpd2dq" [token]
                  | "cvtpd2ps" [token]
                  | "cvtps2dq" [token]
                  | "cvtps2pd" [token]
                  | "cvtsd2sil" [token]
                  | "cvtsd2siq" [token]
                  | "cvtsd2ss" [token]
                  | "cvtsi2sdl" [token]
                  | "cvtsi2sdq" [token]
                  | "cvtsi2ssl" [token]
                  | "cvtsi2ssq" [token]
                  | "cvtss2sd" [token]
                  | "cvtss2sil" [token]
                  | "cvtss2siq" [token]
                  | "cvttpd2dq" [token]
                  | "cvttps2dq" [token]
                  | "cvttsd2sil" [token]
                  | "cvttsd2siq" [token]
                  | "cvttss2sil" [token]
                  | "cvttss2siq" [token]
                  | "cwtd" [token]
                  | "cwtl" [token]
                  | "decb" [token]
                  | "decl" [token]
                  | "decq" [token]
                  | "decw" [token]
                  | "divb" [token]
                  | "divl" [token]
                  | "divpd" [token]
                  | "divps" [token]
                  | "divq" [token]
                  | "divsd" [token]
                  | "divss" [token]
                  | "divw" [token]
                  | "haddpd" [token]
                  | "haddps" [token]
                  | "hsubpd" [token]
                  | "hsubps" [token]
                  | "idivb" [token]
                  | "idivl" [token]
                  | "idivq" [token]
                  | "idivw" [token]
                  | "imulb" [token]
                  | "imull" [token]
                  | "imulq" [token]
                  | "imulw" [token]
                  | "incb" [token]
                  | "incl" [token]
                  | "incq" [token]
                  | "incw" [token]
                  | "lzcntl" [token]
                  | "lzcntq" [token]
                  | "lzcntw" [token]
                  | "maxpd" [token]
                  | "maxps" [token]
                  | "maxsd" [token]
                  | "maxss" [token]
                  | "minpd" [token]
                  | "minps" [token]
                  | "minsd" [token]
                  | "minss" [token]
                  | "movapd" [token]
                  | "movaps" [token]
                  | "movb" [token]
                  | "movd" [token]
                  | "movddup" [token]
                  | "movdqa" [token]
                  | "movdqu" [token]
                  | "movhlps" [token]
                  | "movl" [token]
                  | "movlhps" [token]
                  | "movmskpd" [token]
                  | "movmskps" [token]
                  | "movq" [token]
                  | "movsbl" [token]
                  | "movsbq" [token]
                  | "movsbw" [token]
                  | "movsd" [token]
                  | "movshdup" [token]
                  | "movsldup" [token]
                  | "movslq" [token]
                  | "movss" [token]
                  | "movswl" [token]
                  | "movswq" [token]
                  | "movupd" [token]
                  | "movups" [token]
                  | "movw" [token]
                  | "movzbl" [token]
                  | "movzbq" [token]
                  | "movzbw" [token]
                  | "movzwl" [token]
                  | "movzwq" [token]
                  | "mulb" [token]
                  | "mull" [token]
                  | "mulpd" [token]
                  | "mulps" [token]
                  | "mulq" [token]
                  | "mulsd" [token]
                  | "mulss" [token]
                  | "mulw" [token]
                  | "mulxl" [token]
                  | "mulxq" [token]
                  | "negb" [token]
                  | "negl" [token]
                  | "negq" [token]
                  | "negw" [token]
                  | "nop" [token]
                  | "nopl" [token]
                  | "nopw" [token]
                  | "notb" [token]
                  | "notl" [token]
                  | "notq" [token]
                  | "notw" [token]
                  | "orb" [token]
                  | "orl" [token]
                  | "orpd" [token]
                  | "orps" [token]
                  | "orq" [token]
                  | "orw" [token]
                  | "pabsb" [token]
                  | "pabsd" [token]
                  | "pabsw" [token]
                  | "packssdw" [token]
                  | "packsswb" [token]
                  | "packusdw" [token]
                  | "packuswb" [token]
                  | "paddb" [token]
                  | "paddd" [token]
                  | "paddq" [token]
                  | "paddsb" [token]
                  | "paddsw" [token]
                  | "paddusb" [token]
                  | "paddusw" [token]
                  | "paddw" [token]
                  | "pand" [token]
                  | "pandn" [token]
                  | "pavgb" [token]
                  | "pavgw" [token]
                  | "pblendvb" [token]
                  | "pcmpeqb" [token]
                  | "pcmpeqd" [token]
                  | "pcmpeqq" [token]
                  | "pcmpeqw" [token]
                  | "pcmpgtb" [token]
                  | "pcmpgtd" [token]
                  | "pcmpgtq" [token]
                  | "pcmpgtw" [token]
                  | "pdepl" [token]
                  | "pdepq" [token]
                  | "pextl" [token]
                  | "pextq" [token]
                  | "phaddd" [token]
                  | "phaddsw" [token]
                  | "phaddw" [token]
                  | "phminposuw" [token]
                  | "phsubd" [token]
                  | "phsubsw" [token]
                  | "phsubw" [token]
                  | "pmaddubsw" [token]
                  | "pmaddwd" [token]
                  | "pmaxsb" [token]
                  | "pmaxsd" [token]
                  | "pmaxsw" [token]
                  | "pmaxub" [token]
                  | "pmaxud" [token]
                  | "pmaxuw" [token]
                  | "pminsb" [token]
                  | "pminsd" [token]
                  | "pminsw" [token]
                  | "pminub" [token]
                  | "pminud" [token]
                  | "pminuw" [token]
                  | "pmovmskb" [token]
                  | "pmovsxbd" [token]
                  | "pmovsxbq" [token]
                  | "pmovsxbw" [token]
                  | "pmovsxdq" [token]
                  | "pmovsxwd" [token]
                  | "pmovsxwq" [token]
                  | "pmovzxbd" [token]
                  | "pmovzxbq" [token]
                  | "pmovzxbw" [token]
                  | "pmovzxdq" [token]
                  | "pmovzxwd" [token]
                  | "pmovzxwq" [token]
                  | "pmuldq" [token]
                  | "pmulhrsw" [token]
                  | "pmulhuw" [token]
                  | "pmulhw" [token]
                  | "pmulld" [token]
                  | "pmullw" [token]
                  | "pmuludq" [token]
                  | "popcntl" [token]
                  | "popcntq" [token]
                  | "popcntw" [token]
                  | "por" [token]
                  | "psadbw" [token]
                  | "pshufb" [token]
                  | "psignb" [token]
                  | "psignd" [token]
                  | "psignw" [token]
                  | "pslld" [token]
                  | "psllq" [token]
                  | "psllw" [token]
                  | "psrad" [token]
                  | "psraw" [token]
                  | "psrld" [token]
                  | "psrlq" [token]
                  | "psrlw" [token]
                  | "psubb" [token]
                  | "psubd" [token]
                  | "psubq" [token]
                  | "psubsb" [token]
                  | "psubsw" [token]
                  | "psubusb" [token]
                  | "psubusw" [token]
                  | "psubw" [token]
                  | "ptest" [token]
                  | "punpckhbw" [token]
                  | "punpckhdq" [token]
                  | "punpckhqdq" [token]
                  | "punpckhwd" [token]
                  | "punpcklbw" [token]
                  | "punpckldq" [token]
                  | "punpcklqdq" [token]
                  | "punpcklwd" [token]
                  | "pxor" [token]
                  | "rclb" [token]
                  | "rcll" [token]
                  | "rclq" [token]
                  | "rclw" [token]
                  | "rcpps" [token]
                  | "rcpss" [token]
                  | "rcrb" [token]
                  | "rcrl" [token]
                  | "rcrq" [token]
                  | "rcrw" [token]
                  | "rolb" [token]
                  | "roll" [token]
                  | "rolq" [token]
                  | "rolw" [token]
                  | "rorb" [token]
                  | "rorl" [token]
                  | "rorq" [token]
                  | "rorw" [token]
                  | "rsqrtps" [token]
                  | "rsqrtss" [token]
                  | "salb" [token]
                  | "sall" [token]
                  | "salq" [token]
                  | "salw" [token]
                  | "sarb" [token]
                  | "sarl" [token]
                  | "sarq" [token]
                  | "sarw" [token]
                  | "sarxl" [token]
                  | "sarxq" [token]
                  | "sbbb" [token]
                  | "sbbl" [token]
                  | "sbbq" [token]
                  | "sbbw" [token]
                  | "seta" [token]
                  | "setae" [token]
                  | "setb" [token]
                  | "setbe" [token]
                  | "setc" [token]
                  | "sete" [token]
                  | "setg" [token]
                  | "setge" [token]
                  | "setl" [token]
                  | "setle" [token]
                  | "setna" [token]
                  | "setnae" [token]
                  | "setnb" [token]
                  | "setnbe" [token]
                  | "setnc" [token]
                  | "setne" [token]
                  | "setng" [token]
                  | "setnge" [token]
                  | "setnl" [token]
                  | "setnle" [token]
                  | "setno" [token]
                  | "setnp" [token]
                  | "setns" [token]
                  | "setnz" [token]
                  | "seto" [token]
                  | "setp" [token]
                  | "setpe" [token]
                  | "setpo" [token]
                  | "sets" [token]
                  | "setz" [token]
                  | "shlb" [token]
                  | "shll" [token]
                  | "shlq" [token]
                  | "shlw" [token]
                  | "shlxl" [token]
                  | "shlxq" [token]
                  | "shrb" [token]
                  | "shrl" [token]
                  | "shrq" [token]
                  | "shrw" [token]
                  | "shrxl" [token]
                  | "shrxq" [token]
                  | "sqrtpd" [token]
                  | "sqrtps" [token]
                  | "sqrtsd" [token]
                  | "sqrtss" [token]
                  | "stc" [token]
                  | "subb" [token]
                  | "subl" [token]
                  | "subpd" [token]
                  | "subps" [token]
                  | "subq" [token]
                  | "subsd" [token]
                  | "subss" [token]
                  | "subw" [token]
                  | "testb" [token]
                  | "testl" [token]
                  | "testq" [token]
                  | "testw" [token]
                  | "tzcntl" [token]
                  | "tzcntq" [token]
                  | "tzcntw" [token]
                  | "ucomisd" [token]
                  | "ucomiss" [token]
                  | "unpckhpd" [token]
                  | "unpckhps" [token]
                  | "unpcklpd" [token]
                  | "unpcklps" [token]
                  | "vaddpd" [token]
                  | "vaddps" [token]
                  | "vaddsd" [token]
                  | "vaddss" [token]
                  | "vaddsubpd" [token]
                  | "vaddsubps" [token]
                  | "vandnpd" [token]
                  | "vandnps" [token]
                  | "vandpd" [token]
                  | "vandps" [token]
                  | "vblendvpd" [token]
                  | "vblendvps" [token]
                  | "vbroadcastsd" [token]
                  | "vbroadcastss" [token]
                  | "vcomisd" [token]
                  | "vcomiss" [token]
                  | "vcvtdq2pd" [token]
                  | "vcvtdq2ps" [token]
                  | "vcvtpd2dq" [token]
                  | "vcvtpd2dqx" [token]
                  | "vcvtpd2ps" [token]
                  | "vcvtph2ps" [token]
                  | "vcvtps2dq" [token]
                  | "vcvtps2pd" [token]
                  | "vcvtsd2sil" [token]
                  | "vcvtsd2siq" [token]
                  | "vcvtsd2ss" [token]
                  | "vcvtsi2sdl" [token]
                  | "vcvtsi2sdq" [token]
                  | "vcvtsi2ssl" [token]
                  | "vcvtsi2ssq" [token]
                  | "vcvtss2sd" [token]
                  | "vcvtss2sil" [token]
                  | "vcvtss2siq" [token]
                  | "vcvttpd2dq" [token]
                  | "vcvttps2dq" [token]
                  | "vcvttsd2sil" [token]
                  | "vcvttsd2siq" [token]
                  | "vcvttss2sil" [token]
                  | "vcvttss2siq" [token]
                  | "vdivpd" [token]
                  | "vdivps" [token]
                  | "vdivsd" [token]
                  | "vdivss" [token]
                  | "vfmadd132pd" [token]
                  | "vfmadd132ps" [token]
                  | "vfmadd132sd" [token]
                  | "vfmadd132ss" [token]
                  | "vfmadd213pd" [token]
                  | "vfmadd213ps" [token]
                  | "vfmadd213sd" [token]
                  | "vfmadd213ss" [token]
                  | "vfmadd231pd" [token]
                  | "vfmadd231ps" [token]
                  | "vfmadd231sd" [token]
                  | "vfmadd231ss" [token]
                  | "vfmaddsub132pd" [token]
                  | "vfmaddsub132ps" [token]
                  | "vfmaddsub213pd" [token]
                  | "vfmaddsub213ps" [token]
                  | "vfmaddsub231pd" [token]
                  | "vfmaddsub231ps" [token]
                  | "vfmsub132pd" [token]
                  | "vfmsub132ps" [token]
                  | "vfmsub132sd" [token]
                  | "vfmsub132ss" [token]
                  | "vfmsub213pd" [token]
                  | "vfmsub213ps" [token]
                  | "vfmsub213sd" [token]
                  | "vfmsub213ss" [token]
                  | "vfmsub231pd" [token]
                  | "vfmsub231ps" [token]
                  | "vfmsub231sd" [token]
                  | "vfmsub231ss" [token]
                  | "vfmsubadd132pd" [token]
                  | "vfmsubadd132ps" [token]
                  | "vfmsubadd213pd" [token]
                  | "vfmsubadd213ps" [token]
                  | "vfmsubadd231pd" [token]
                  | "vfmsubadd231ps" [token]
                  | "vfnmadd132pd" [token]
                  | "vfnmadd132ps" [token]
                  | "vfnmadd132sd" [token]
                  | "vfnmadd132ss" [token]
                  | "vfnmadd213pd" [token]
                  | "vfnmadd213ps" [token]
                  | "vfnmadd213sd" [token]
                  | "vfnmadd213ss" [token]
                  | "vfnmadd231pd" [token]
                  | "vfnmadd231ps" [token]
                  | "vfnmadd231sd" [token]
                  | "vfnmadd231ss" [token]
                  | "vfnmsub132pd" [token]
                  | "vfnmsub132ps" [token]
                  | "vfnmsub132sd" [token]
                  | "vfnmsub132ss" [token]
                  | "vfnmsub213pd" [token]
                  | "vfnmsub213ps" [token]
                  | "vfnmsub213sd" [token]
                  | "vfnmsub213ss" [token]
                  | "vfnmsub231pd" [token]
                  | "vfnmsub231ps" [token]
                  | "vfnmsub231sd" [token]
                  | "vfnmsub231ss" [token]
                  | "vhaddpd" [token]
                  | "vhaddps" [token]
                  | "vhsubpd" [token]
                  | "vhsubps" [token]
                  | "vmaxpd" [token]
                  | "vmaxps" [token]
                  | "vmaxsd" [token]
                  | "vmaxss" [token]
                  | "vminpd" [token]
                  | "vminps" [token]
                  | "vminsd" [token]
                  | "vminss" [token]
                  | "vmovapd" [token]
                  | "vmovaps" [token]
                  | "vmovd" [token]
                  | "vmovddup" [token]
                  | "vmovdqa" [token]
                  | "vmovdqu" [token]
                  | "vmovhlps" [token]
                  | "vmovlhps" [token]
                  | "vmovmskpd" [token]
                  | "vmovmskps" [token]
                  | "vmovq" [token]
                  | "vmovsd" [token]
                  | "vmovshdup" [token]
                  | "vmovsldup" [token]
                  | "vmovss" [token]
                  | "vmovupd" [token]
                  | "vmovups" [token]
                  | "vmulpd" [token]
                  | "vmulps" [token]
                  | "vmulsd" [token]
                  | "vmulss" [token]
                  | "vorpd" [token]
                  | "vorps" [token]
                  | "vpabsb" [token]
                  | "vpabsd" [token]
                  | "vpabsw" [token]
                  | "vpackssdw" [token]
                  | "vpacksswb" [token]
                  | "vpackusdw" [token]
                  | "vpackuswb" [token]
                  | "vpaddb" [token]
                  | "vpaddd" [token]
                  | "vpaddq" [token]
                  | "vpaddsb" [token]
                  | "vpaddsw" [token]
                  | "vpaddusb" [token]
                  | "vpaddusw" [token]
                  | "vpaddw" [token]
                  | "vpand" [token]
                  | "vpandn" [token]
                  | "vpavgb" [token]
                  | "vpavgw" [token]
                  | "vpblendvb" [token]
                  | "vpbroadcastb" [token]
                  | "vpbroadcastd" [token]
                  | "vpbroadcastq" [token]
                  | "vpbroadcastw" [token]
                  | "vpcmpeqb" [token]
                  | "vpcmpeqd" [token]
                  | "vpcmpeqq" [token]
                  | "vpcmpeqw" [token]
                  | "vpcmpgtb" [token]
                  | "vpcmpgtd" [token]
                  | "vpcmpgtq" [token]
                  | "vpcmpgtw" [token]
                  | "vpermd" [token]
                  | "vpermilpd" [token]
                  | "vpermilps" [token]
                  | "vpermps" [token]
                  | "vphaddd" [token]
                  | "vphaddsw" [token]
                  | "vphaddw" [token]
                  | "vphminposuw" [token]
                  | "vphsubd" [token]
                  | "vphsubsw" [token]
                  | "vphsubw" [token]
                  | "vpmaddubsw" [token]
                  | "vpmaddwd" [token]
                  | "vpmaxsb" [token]
                  | "vpmaxsd" [token]
                  | "vpmaxsw" [token]
                  | "vpmaxub" [token]
                  | "vpmaxud" [token]
                  | "vpmaxuw" [token]
                  | "vpminsb" [token]
                  | "vpminsd" [token]
                  | "vpminsw" [token]
                  | "vpminub" [token]
                  | "vpminud" [token]
                  | "vpminuw" [token]
                  | "vpmovmskb" [token]
                  | "vpmovsxbd" [token]
                  | "vpmovsxbq" [token]
                  | "vpmovsxbw" [token]
                  | "vpmovsxdq" [token]
                  | "vpmovsxwd" [token]
                  | "vpmovsxwq" [token]
                  | "vpmovzxbd" [token]
                  | "vpmovzxbq" [token]
                  | "vpmovzxbw" [token]
                  | "vpmovzxdq" [token]
                  | "vpmovzxwd" [token]
                  | "vpmovzxwq" [token]
                  | "vpmuldq" [token]
                  | "vpmulhrsw" [token]
                  | "vpmulhuw" [token]
                  | "vpmulhw" [token]
                  | "vpmulld" [token]
                  | "vpmullw" [token]
                  | "vpmuludq" [token]
                  | "vpor" [token]
                  | "vpsadbw" [token]
                  | "vpshufb" [token]
                  | "vpsignb" [token]
                  | "vpsignd" [token]
                  | "vpsignw" [token]
                  | "vpslld" [token]
                  | "vpsllq" [token]
                  | "vpsllvd" [token]
                  | "vpsllvq" [token]
                  | "vpsllw" [token]
                  | "vpsrad" [token]
                  | "vpsravd" [token]
                  | "vpsraw" [token]
                  | "vpsrld" [token]
                  | "vpsrlq" [token]
                  | "vpsrlvd" [token]
                  | "vpsrlvq" [token]
                  | "vpsrlw" [token]
                  | "vpsubb" [token]
                  | "vpsubd" [token]
                  | "vpsubq" [token]
                  | "vpsubsb" [token]
                  | "vpsubsw" [token]
                  | "vpsubusb" [token]
                  | "vpsubusw" [token]
                  | "vpsubw" [token]
                  | "vptest" [token]
                  | "vpunpckhbw" [token]
                  | "vpunpckhdq" [token]
                  | "vpunpckhqdq" [token]
                  | "vpunpckhwd" [token]
                  | "vpunpcklbw" [token]
                  | "vpunpckldq" [token]
                  | "vpunpcklqdq" [token]
                  | "vpunpcklwd" [token]
                  | "vpvmpgtq" [token]
                  | "vpxor" [token]
                  | "vrcpps" [token]
                  | "vrcpss" [token]
                  | "vrsqrtps" [token]
                  | "vrsqrtss" [token]
                  | "vsqrtpd" [token]
                  | "vsqrtps" [token]
                  | "vsqrtsd" [token]
                  | "vsqrtss" [token]
                  | "vsubpd" [token]
                  | "vsubps" [token]
                  | "vsubsd" [token]
                  | "vsubss" [token]
                  | "vtestpd" [token]
                  | "vtestps" [token]
                  | "vucomisd" [token]
                  | "vucomiss" [token]
                  | "vunpckhpd" [token]
                  | "vunpckhps" [token]
                  | "vunpcklpd" [token]
                  | "vunpcklps" [token]
                  | "vxorpd" [token]
                  | "vxorps" [token]
                  | "vzeroall" [token]
                  | "vzeroupper" [token]
                  | "xaddb" [token]
                  | "xaddl" [token]
                  | "xaddq" [token]
                  | "xaddw" [token]
                  | "xchgb" [token]
                  | "xchgl" [token]
                  | "xchgq" [token]
                  | "xchgw" [token]
                  | "xorb" [token]
                  | "xorl" [token]
                  | "xorpd" [token]
                  | "xorps" [token]
                  | "xorq" [token]
                  | "xorw" [token]
endmodule
