.section .text
.globl _start

_start:
    //[32'12.375 32'12.375] 
    movq $0x4146000041460000, %rax
    //[32'0.625 32'0.625] 
    movq $0x3f2000003f200000, %rbx
    vmovq %rax, %xmm1
    vmovq %rbx, %xmm2
    //[32'12.375 32'12.375 32'12.375 32'12.375] 
    pshufd $0x0, %xmm1, %xmm1
    //[32'0.625 32'0.625 32'0.625 32'0.625] 
    pshufd $0x0, %xmm2, %xmm2

    // [32'13. 32'13. 32'13. 32'13.]
    vaddps %xmm1, %xmm2, %xmm3

    // [64'12.375]
    movq $0x4028C00000000000, %rax
    // [64'0.625 ]
    movq $0x3FE4000000000000, %rbx
    vmovq %rax, %xmm1
    vmovq %rbx, %xmm2
    //[64'12.375 64'12.375]
    shufpd $0x0, %xmm1, %xmm1
    //[64'0.625 64'0.625]
    shufpd $0x0, %xmm2, %xmm2

    // [64'13. 64'13.]
    vaddpd %xmm1, %xmm2, %xmm3

    movl  $1, %eax
    movl  $2, %ebx
    int   $0x80
