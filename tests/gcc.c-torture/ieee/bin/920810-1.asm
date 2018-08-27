normalize:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    movl	$0, %eax
    vmovq	%rax, %xmm1
    vucomisd	-8(%rbp), %xmm1
    jp	L2
    movl	$0, %eax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    jne	L2
    movl	$0, %eax
    movq	%rax, -8(%rbp)
L2:
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
LC2:
    .string	"%g"
LC3:
    .string	"0"
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovsd $LC1(%rip), %xmm0
    movl	$1, %eax
    call	normalize
    vmovq	%xmm0, %rdx
    leaq	-32(%rbp), %rax
    vmovq	%rdx, %xmm0
    movl	$LC2, %esi
    movq	%rax, %rdi
    movl	$1, %eax
    call	sprintf
    leaq	-32(%rbp), %rax
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L7
    call	abort
L7:
    movl	$0, %edi
    call	exit
LC1:
    .long	0
    .long	-2147483648
