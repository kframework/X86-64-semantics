    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L12:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L12
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    vmovsd	%xmm0, -16(%rbp)
    nop
    popq	%rbp
    ret
    .globl	g
g:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    vmovsd	%xmm0, -56(%rbp)
    vmovsd	%xmm1, -64(%rbp)
    vmovsd	%xmm2, -72(%rbp)
    vmovsd	%xmm3, -80(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovsd	-56(%rbp), %xmm0
    vaddsd	-64(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	-72(%rbp), %xmm0
    vmulsd	-80(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movl	$16, %eax
    subq	$1, %rax
    addq	$47, %rax
    movl	$16, %ecx
    movl	$0, %edx
    divq	%rcx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -24(%rbp)
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rax
    vmovq	%rdx, %xmm0
    movq	%rax, %rdi
    call	f
    vmovsd	-40(%rbp), %xmm0
    vmulsd	-32(%rbp), %xmm0, %xmm0
    vmulsd	-56(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vaddsd	-64(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L42
    call	__stack_chk_fail
L42:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	$LC0(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm2
    vmovsd	-16(%rbp), %xmm1
    vmovsd	-24(%rbp), %xmm0
    movq	-32(%rbp), %rax
    vmovapd	%xmm2, %xmm3
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	g
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L49
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L50
L49:
    call	abort
L50:
    vmovsd	$LC0(%rip), %xmm0
    vucomisd	-32(%rbp), %xmm0
    jp	L46
    vmovsd	$LC0(%rip), %xmm0
    vucomisd	-32(%rbp), %xmm0
    jne	L46
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-24(%rbp), %xmm0
    jp	L46
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-24(%rbp), %xmm0
    jne	L46
    vmovsd	-16(%rbp), %xmm0
    vucomisd	$LC2(%rip), %xmm0
    jp	L46
    vmovsd	-16(%rbp), %xmm0
    vucomisd	$LC2(%rip), %xmm0
    jne	L46
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    jp	L46
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L51
L46:
    call	abort
L51:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	1072693248
LC2:
    .long	0
    .long	1076101120
