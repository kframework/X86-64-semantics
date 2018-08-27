nzerod:
    .long	0
    .long	-2147483648
nzerof:
    .long	2147483648
    .bss
zerod:
    .zero	8
zerof:
    .zero	4
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movq $nzerod(%rip), %rbx
    movq $zerod(%rip), %rax
    vmovq	%rax, %xmm0
    call	negd
    vmovq	%xmm0, %rax
    vmovq	%rbx, %xmm1
    vmovq	%rax, %xmm0
    call	expectd
    movl $nzerof(%rip), %ebx
    movl $zerof(%rip), %eax
    vmovd	%eax, %xmm0
    call	negf
    vmovd	%ebx, %xmm1
    call	expectf
    movq $zerod(%rip), %rbx
    movq $nzerod(%rip), %rax
    vmovq	%rax, %xmm0
    call	negd
    vmovq	%xmm0, %rax
    vmovq	%rbx, %xmm1
    vmovq	%rax, %xmm0
    call	expectd
    movl $zerof(%rip), %ebx
    movl $nzerof(%rip), %eax
    vmovd	%eax, %xmm0
    call	negf
    vmovd	%ebx, %xmm1
    call	expectf
    movl	$0, %edi
    call	exit
expectd:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    movq	-16(%rbp), %rdx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jp	L3
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    jne	L3
    leaq	-16(%rbp), %rcx
    leaq	-8(%rbp), %rax
    movl	$8, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L2
L3:
    call	abort
L2:
    leave
    ret
expectf:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	-4(%rbp), %eax
    movl	-8(%rbp), %edx
    vmovd	%eax, %xmm2
    vmovd	%edx, %xmm3
    vucomiss	%xmm3, %xmm2
    jp	L6
    vmovd	%eax, %xmm4
    vmovd	%edx, %xmm5
    vucomiss	%xmm5, %xmm4
    jne	L6
    leaq	-8(%rbp), %rcx
    leaq	-4(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L5
L6:
    call	abort
L5:
    leave
    ret
negd:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    movq	-8(%rbp), %rax
    vmovsd $LC0(%rip), %xmm0
    btcq	$63, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
negf:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    movl	-4(%rbp), %eax
    vmovss $LC1(%rip), %xmm0
    vmovd	%eax, %xmm1
    vxorps	%xmm0, %xmm1, %xmm1
    vmovaps	%xmm1, %xmm0
    popq	%rbp
    ret
LC0:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
LC1:
    .long	2147483648
    .long	0
    .long	0
    .long	0
