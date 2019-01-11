    .section	.rodata
LC2:
    .string	"Sandeep"
LC3:
    .string	"int=%d  char*=%s float=%f double=%f"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$10, -24(%rbp)
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, -20(%rbp)
    vmovsd	LC1(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    leaq	LC2(%rip), %rax
    movq	%rax, -8(%rbp)
    vcvtss2sd	-20(%rbp), %xmm2, %xmm2
    vmovq	%xmm2, %rax
    vmovsd	-16(%rbp), %xmm0
    movq	-8(%rbp), %rdx
    movl	-24(%rbp), %ecx
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	%ecx, %esi
    leaq	LC3(%rip), %rdi
    movl	$2, %eax
    call	printf
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	1072064102
LC1:
    .long	1717986918
    .long	1073899110
