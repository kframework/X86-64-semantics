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
        
  syntax Opcode ::= BaseOpcode | DerivedOpcode
  syntax BaseOpcode ::= "adcb"            [token]
                      | "adcw"            [token]
                      | "adcl"            [token]
                      | "adcq"            [token]
                      | "cmoveq"          [token]  
                      | "orq"             [token]
                      | "xorq"            [token]
                      | "movswq"          [token]  
                      | "movsbq"          [token]  
                      | "movslq"          [token]  
                      | "popcntq"         [token]   
                      | "salq"            [token]
                      | "sarq"            [token]
                      | "shrq"            [token]
                      | "movq"            [token]
                      | "movb"            [token]
                      | "vaddpd"          [token]
                      | "vaddps"          [token]
                      | "vsubpd"          [token]
                      | "vsubps"          [token]
                      | "vmulpd"          [token]
                      | "vmulps"          [token]
                      | "vrcpps"          [token]
                      | "vdivpd"          [token]
                      | "vdivps"          [token]
                      | "vmaxpd"          [token]
                      | "vmaxps"          [token]
                      | "vminpd"          [token]
                      | "vminps"          [token]
                      | "vsqrtps"         [token]
                      | "vsqrtpd"         [token]
                      | "vrsqrtps"        [token]
                      | "vzeroall"        [token]
                      | "vfmadd132pd"     [token]
                      | "vfmadd132ps"     [token]
                      | "vfmsub132pd"     [token]
                      | "vfmsub132ps"     [token]
                      | "vfnmadd132pd"    [token]
                      | "vfnmadd132ps"    [token]
                      | "vfnmsub132pd"    [token]
                      | "vfnmsub132ps"    [token]
                      | "vcvtdq2pd"       [token]
                      | "vcvtdq2ps"       [token]
                      | "vcvtpd2dq"       [token]
                      | "vcvtps2dq"       [token]
                      | "vcvtpd2ps"       [token]
                      | "vcvtps2pd"       [token]
                      | "vcvttpd2dq"      [token]
                      | "vcvttps2dq"      [token]

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

  syntax DerivedOpcode ::=       "addq" [token]
                              |  "andnq" [token]
                              |  "cbtw" [token]
                              |  "clc" [token]
                              |  "cltq" [token]
                              |  "cmovzq" [token]
                              |  "cmovzw" [token]
                              |  "cvtss2sd" [token]
                              |  "decb" [token]
                              |  "incl" [token]
                              |  "incw" [token]
                              |  "movapd" [token]
                              |  "movaps" [token]
                              |  "movddup" [token]
                              |  "movdqa" [token]
                              |  "movdqu" [token]
                              |  "movd" [token]
                              |  "movsbl" [token]
                              |  "movups" [token]
                              |  "movw" [token]
                              |  "movzbl" [token]
                              |  "movzbw" [token]
                              |  "movzbw" [token]
                              |  "movzwl" [token]
                              |  "nopl" [token]
                              |  "nop" [token]
                              |  "nopw" [token]
                              |  "rcll" [token]
                              |  "rclq" [token]
                              |  "rclw" [token]
endmodule
