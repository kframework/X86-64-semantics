requires "x86-semantic-utils.k"
/*@ This file defines the semantics of following 51 base instructions.
  - adcw_r16_r16, adcl_r32_r32, adcq_r64_r64, adcb_r8_r8,
*/

module ADC-R8-R8
  imports X86-SEMANTIC-UTILS

  rule <k> execinstr ( adcb , (%al ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%rax), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%rbx), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%rcx), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%rdx), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r8), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r9), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r10), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r11), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r12), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r13), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r14), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%al , .Typedoperands)) ) =>
  execinstr(adcb, (%rax, extractR8(%r15), extractR8(%rax), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%rax), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%rbx), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%rcx), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%rdx), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r8), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r9), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r10), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r11), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r12), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r13), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r14), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%bl , .Typedoperands)) ) =>
  execinstr(adcb, (%rbx, extractR8(%r15), extractR8(%rbx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%rax), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%rbx), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%rcx), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%rdx), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r8), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r9), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r10), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r11), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r12), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r13), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r14), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%cl , .Typedoperands)) ) =>
  execinstr(adcb, (%rcx, extractR8(%r15), extractR8(%rcx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%rax), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%rbx), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%rcx), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%rdx), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r8), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r9), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r10), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r11), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r12), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r13), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r14), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%dl , .Typedoperands)) ) =>
  execinstr(adcb, (%rdx, extractR8(%r15), extractR8(%rdx), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%rax), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%rbx), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%rcx), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%rdx), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r8), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r9), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r10), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r11), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r12), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r13), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r14), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r8b , .Typedoperands)) ) =>
  execinstr(adcb, (%r8, extractR8(%r15), extractR8(%r8), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%rax), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%rbx), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%rcx), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%rdx), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r8), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r9), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r10), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r11), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r12), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r13), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r14), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r9b , .Typedoperands)) ) =>
  execinstr(adcb, (%r9, extractR8(%r15), extractR8(%r9), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%rax), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%rbx), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%rcx), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%rdx), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r8), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r9), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r10), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r11), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r12), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r13), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r14), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r10b , .Typedoperands)) ) =>
  execinstr(adcb, (%r10, extractR8(%r15), extractR8(%r10), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%rax), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%rbx), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%rcx), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%rdx), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r8), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r9), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r10), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r11), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r12), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r13), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r14), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r11b , .Typedoperands)) ) =>
  execinstr(adcb, (%r11, extractR8(%r15), extractR8(%r11), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%rax), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%rbx), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%rcx), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%rdx), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r8), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r9), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r10), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r11), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r12), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r13), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r14), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r12b , .Typedoperands)) ) =>
  execinstr(adcb, (%r12, extractR8(%r15), extractR8(%r12), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%rax), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%rbx), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%rcx), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%rdx), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r8), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r9), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r10), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r11), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r12), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r13), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r14), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r13b , .Typedoperands)) ) =>
  execinstr(adcb, (%r13, extractR8(%r15), extractR8(%r13), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%rax), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%rbx), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%rcx), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%rdx), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r8), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r9), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r10), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r11), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r12), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r13), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r14), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r14b , .Typedoperands)) ) =>
  execinstr(adcb, (%r14, extractR8(%r15), extractR8(%r14), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%al ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%rax), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%bl ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%rbx), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%cl ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%rcx), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%dl ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%rdx), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r8b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r8), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r9b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r9), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r10b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r10), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r11b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r11), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r12b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r12), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r13b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r13), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r14b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r14), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>
  rule <k> execinstr ( adcb , (%r15b ,  (%r15b , .Typedoperands)) ) =>
  execinstr(adcb, (%r15, extractR8(%r15), extractR8(%r15), zeroExtend1to8(MI3), .Typedoperands)) ...</k>
  <cf> MI3 </cf>

  //MI,m2 type chaeck
  context execinstr(adcb, (_:Typeoperand, HOLE:Typeoperand, _:Typeoperand, _:MInt, .Typedoperands))
  context execinstr(adcb, (_:Typeoperand, MInt,          HOLE:Typeoperand, _:MInt, .Typedoperands))

  rule
    execinstr(adcb, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, .Typedoperands )) => 
      execinstr(adcb, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, MIcarry, addMInt(MIsrc1, MIsrc2), .Typedoperands )) 
  
  rule
    execinstr(adcb, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, .Typedoperands )) => 
      execinstr(adcb, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, MIcarry, MIsum, addMInt(MIsum, MIcarry), .Typedoperands ))

  rule
    execinstr(adcb, ( DestR:R64, MIsrc1:MInt, MIsrc2:MInt, MIcarry:MInt, MIsum:MInt, MIresult:MInt, .Typedoperands )) 
    => 
      updateOverflowAdd(MIsrc1, MIsrc2, MIresult) ~> 
      updateZeroFlag(MIresult) ~> 
      updateSignFlag(MIresult) ~> 
      updateAuxCarryFlag(MIsrc1, MIsrc2, MIresult) ~> 
      updateCarryFlagAdd(MIsrc1, MIsrc2, MIsum, MIcarry, MIresult) ~> 
      updateParityFlag(MIresult) ~> 
      plugin8(MIresult, DestR) 

endmodule

module ADD-IMM-R8
  imports X86-SEMANTIC-UTILS
  syntax Int ::= handleImmediate(Imm) [function]
  rule handleImmediate($ I:Int) => I

  rule <k> execinstr ( addq , (I:Imm ,  (%rax , .Typedoperands)) ) => updateReg(addMInt(mi(64, handleImmediate(I)), MI), %rax) ...</k>  <rax> MI </rax>
  rule <k> execinstr ( addq , (I:Imm ,  (%rcx , .Typedoperands)) ) => updateReg(addMInt(mi(64, handleImmediate(I)), MI), %rcx) ...</k>  <rcx> MI </rcx>
endmodule

module ADC-SEMANTICS
  imports ADC-R8-R8
endmodule

module ADD-SEMANTICS
  imports ADD-IMM-R8
endmodule
