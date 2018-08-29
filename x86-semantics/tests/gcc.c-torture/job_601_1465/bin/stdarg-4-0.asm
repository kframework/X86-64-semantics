    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .comm	x,8,8
    .comm	y,8,8
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L58
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L58:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    leaq	-208(%rbp), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L59
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L60
L59:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L60:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$47, %eax
    ja	L61
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L62
L61:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L62:
    movq	(%rax), %rdx
    movq	x(%rip), %rax
    addq	%rdx, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L63
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L64
L63:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L64:
    vmovsd	(%rax), %xmm1
    movq	x(%rip), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L65
    call	__stack_chk_fail
L65:
    leave
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L67
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L67:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    leaq	-208(%rbp), %rax
    movq	%rax, -224(%rbp)
    movq	-224(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$47, %eax
    ja	L68
    movq	-224(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-224(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-224(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-224(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L69
L68:
    movq	-224(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-224(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L69:
    movl	(%rax), %eax
    cltq
    movq	%rax, y(%rip)
    movq	-224(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$47, %eax
    ja	L70
    movq	-224(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-224(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-224(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-224(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L71
L70:
    movq	-224(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-224(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L71:
    movq	(%rax), %rdx
    movq	y(%rip), %rax
    addq	%rdx, %rax
    movq	%rax, y(%rip)
    movq	-224(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L72
    movq	-224(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-224(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-224(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-224(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L73
L72:
    movq	-224(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-224(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L73:
    vmovsd	(%rax), %xmm1
    movq	y(%rip), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, y(%rip)
    movq	-224(%rbp), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L74
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L75
L74:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L75:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$47, %eax
    ja	L76
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L77
L76:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L77:
    movq	(%rax), %rdx
    movq	x(%rip), %rax
    addq	%rdx, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L78
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L79
L78:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L79:
    vmovsd	(%rax), %xmm1
    movq	x(%rip), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L80
    call	__stack_chk_fail
L80:
    leave
    ret
    .globl	f3h
f3h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    movq	%r8, -40(%rbp)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	-16(%rbp), %rax
    addq	%rax, %rdx
    movq	-24(%rbp), %rax
    addq	%rax, %rdx
    movq	-32(%rbp), %rax
    addq	%rax, %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    popq	%rbp
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$272, %rsp
    movl	%edi, -260(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L84
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L84:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$4, -260(%rbp)
    ja	L85
    movl	-260(%rbp), %eax
    movq	L87(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L87:
    .quad	L86
    .quad	L88
    .quad	L89
    .quad	L90
    .quad	L91
    .text
L86:
    movl	-260(%rbp), %eax
    movl	$0, %r8d
    movl	$0, %ecx
    movl	$0, %edx
    movl	$0, %esi
    movl	%eax, %edi
    call	f3h
    movq	%rax, -248(%rbp)
    jmp	L92
L88:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L93
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L94
L93:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L94:
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movq	-240(%rbp), %rsi
    movl	-260(%rbp), %eax
    movl	$0, %r8d
    movl	$0, %ecx
    movl	$0, %edx
    movl	%eax, %edi
    call	f3h
    movq	%rax, -248(%rbp)
    jmp	L92
L89:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L95
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L96
L95:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L96:
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L97
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L98
L97:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L98:
    movq	(%rax), %rax
    movq	%rax, -232(%rbp)
    movq	-232(%rbp), %rdx
    movq	-240(%rbp), %rsi
    movl	-260(%rbp), %eax
    movl	$0, %r8d
    movl	$0, %ecx
    movl	%eax, %edi
    call	f3h
    movq	%rax, -248(%rbp)
    jmp	L92
L90:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L99
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L100
L99:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L100:
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L101
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L102
L101:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L102:
    movq	(%rax), %rax
    movq	%rax, -232(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L103
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L104
L103:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L104:
    movq	(%rax), %rax
    movq	%rax, -224(%rbp)
    movq	-224(%rbp), %rcx
    movq	-232(%rbp), %rdx
    movq	-240(%rbp), %rsi
    movl	-260(%rbp), %eax
    movl	$0, %r8d
    movl	%eax, %edi
    call	f3h
    movq	%rax, -248(%rbp)
    jmp	L92
L91:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L105
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L106
L105:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L106:
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L107
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L108
L107:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L108:
    movq	(%rax), %rax
    movq	%rax, -232(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L109
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L110
L109:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L110:
    movq	(%rax), %rax
    movq	%rax, -224(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L111
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L112
L111:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L112:
    movq	(%rax), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rdi
    movq	-224(%rbp), %rcx
    movq	-232(%rbp), %rdx
    movq	-240(%rbp), %rsi
    movl	-260(%rbp), %eax
    movq	%rdi, %r8
    movl	%eax, %edi
    call	f3h
    movq	%rax, -248(%rbp)
    jmp	L92
L85:
    call	abort
L92:
    movq	-248(%rbp), %rax
    movq	-184(%rbp), %rdi
    xorq	$40, %rdi
    je	L114
    call	__stack_chk_fail
L114:
    leave
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L116
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L116:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-228(%rbp), %eax
    cmpl	$4, %eax
    je	L118
    cmpl	$5, %eax
    je	L119
    jmp	L134
L118:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L120
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L121
L120:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L121:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, y(%rip)
    jmp	L122
L119:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L123
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L124
L123:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L124:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, y(%rip)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L125
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L126
L125:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L126:
    vmovsd	(%rax), %xmm1
    movq	y(%rip), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    vaddsd	%xmm1, %xmm0, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, y(%rip)
    jmp	L122
L134:
    call	abort
L122:
    leaq	-208(%rbp), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L127
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L128
L127:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L128:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$47, %eax
    ja	L129
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L130
L129:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L130:
    movq	(%rax), %rdx
    movq	x(%rip), %rax
    addq	%rdx, %rax
    movq	%rax, x(%rip)
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$175, %eax
    ja	L131
    movq	-216(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-216(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-216(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-216(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L132
L131:
    movq	-216(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-216(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L132:
    vmovsd	(%rax), %xmm1
    movq	x(%rip), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L133
    call	__stack_chk_fail
L133:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	LC0(%rip), %xmm0
    movabsq	$4625196817309499392, %rax
    vmovapd	%xmm0, %xmm1
    movl	$128, %esi
    vmovq	%rax, %xmm0
    movl	$3, %edi
    movl	$2, %eax
    call	f1
    movq	x(%rip), %rax
    cmpq	$176, %rax
    je	L136
    call	abort
L136:
    vmovsd	LC2(%rip), %xmm1
    vmovsd	LC3(%rip), %xmm0
    movabsq	$4625759767262920704, %rax
    vmovapd	%xmm1, %xmm2
    movl	$17, %ecx
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	$7, %edx
    movl	$5, %esi
    movl	$6, %edi
    movl	$3, %eax
    call	f2
    movq	x(%rip), %rax
    cmpq	$100, %rax
    jne	L137
    movq	y(%rip), %rax
    cmpq	$30, %rax
    je	L138
L137:
    call	abort
L138:
    movl	$0, %edi
    movl	$0, %eax
    call	f3
    testq	%rax, %rax
    je	L139
    call	abort
L139:
    movl	$18, %esi
    movl	$1, %edi
    movl	$0, %eax
    call	f3
    cmpq	$19, %rax
    je	L140
    call	abort
L140:
    movl	$100, %edx
    movl	$18, %esi
    movl	$2, %edi
    movl	$0, %eax
    call	f3
    cmpq	$120, %rax
    je	L141
    call	abort
L141:
    movl	$300, %ecx
    movl	$100, %edx
    movl	$18, %esi
    movl	$3, %edi
    movl	$0, %eax
    call	f3
    cmpq	$421, %rax
    je	L142
    call	abort
L142:
    movl	$86, %r8d
    movl	$64, %ecx
    movl	$71, %edx
    movl	$18, %esi
    movl	$4, %edi
    movl	$0, %eax
    call	f3
    cmpq	$243, %rax
    je	L143
    call	abort
L143:
    vmovsd	LC4(%rip), %xmm1
    vmovsd	LC5(%rip), %xmm0
    movabsq	$4618441417868443648, %rax
    vmovapd	%xmm1, %xmm2
    movl	$16, %esi
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	$4, %edi
    movl	$3, %eax
    call	f4
    movq	x(%rip), %rax
    cmpq	$43, %rax
    jne	L144
    movq	y(%rip), %rax
    cmpq	$6, %rax
    je	L145
L144:
    call	abort
L145:
    vmovsd	LC7(%rip), %xmm2
    vmovsd	LC8(%rip), %xmm1
    vmovsd	LC9(%rip), %xmm0
    movabsq	$4619567317775286272, %rax
    vmovapd	%xmm2, %xmm3
    movl	$17, %esi
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	$5, %edi
    movl	$4, %eax
    call	f4
    movq	x(%rip), %rax
    cmpq	$144, %rax
    jne	L146
    movq	y(%rip), %rax
    cmpq	$28, %rax
    je	L147
L146:
    call	abort
L147:
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1077936128
LC2:
    .long	0
    .long	1078984704
LC3:
    .long	0
    .long	1077084160
LC4:
    .long	0
    .long	1077018624
LC5:
    .long	0
    .long	1075970048
LC7:
    .long	0
    .long	1080000512
LC8:
    .long	0
    .long	1072693248
LC9:
    .long	0
    .long	1077215232
