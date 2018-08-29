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
    .comm	foo_arg,4,4
    .comm	bar_arg,4,4
    .comm	x,8,8
    .comm	d,8,8
    .comm	gap,24,16
    .comm	s1,32,32
    .comm	s2,16,16
    .comm	y,4,4
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    movl	%eax, bar_arg(%rip)
    nop
    popq	%rbp
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movl	%edi, -212(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L59
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L59:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L60
L63:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L61
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L62
L61:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L62:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
L60:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L63
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L64
    call	__stack_chk_fail
L64:
    leave
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movl	%edi, -212(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L66
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L66:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L67
L70:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L68
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L69
L68:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L69:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, d(%rip)
L67:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L70
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L71
    call	__stack_chk_fail
L71:
    leave
    ret
    .globl	f3
f3:
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
    je	L73
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L73:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	-228(%rbp), %eax
    movl	%eax, -212(%rbp)
    jmp	L74
L77:
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L75
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L76
L75:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L76:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    movq	x(%rip), %rax
    movl	%eax, %edi
    call	bar
L74:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L77
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L78
    call	__stack_chk_fail
L78:
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
    je	L80
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L80:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	-228(%rbp), %eax
    movl	%eax, -212(%rbp)
    jmp	L81
L84:
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L82
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L83
L82:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L83:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, d(%rip)
    vmovsd	d(%rip), %xmm1
    vmovsd	LC0(%rip), %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2si	%xmm0, %eax
    movl	%eax, %edi
    call	bar
L81:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L84
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L85
    call	__stack_chk_fail
L85:
    leave
    ret
    .globl	f5
f5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movl	%edi, -212(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L87
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L87:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L88
L89:
    movq	-200(%rbp), %rax
    leaq	32(%rax), %rdx
    movq	%rdx, -200(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, s1(%rip)
    movq	8(%rax), %rdx
    movq	%rdx, s1 + 8(%rip)
    movq	16(%rax), %rdx
    movq	%rdx, s1 + 16(%rip)
    movq	24(%rax), %rax
    movq	%rax, s1 + 24(%rip)
L88:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L89
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L90
    call	__stack_chk_fail
L90:
    leave
    ret
    .globl	f6
f6:
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
    je	L92
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L92:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    jmp	L93
L96:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L94
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L94
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    leaq	(%rax,%rdx), %rcx
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rax, %rdx
    leaq	-224(%rbp), %rax
    vmovsd	(%rdx), %xmm0
    vmovsd	%xmm0, (%rax)
    leaq	8(%rax), %rdx
    movq	(%rcx), %rcx
    movq	%rcx, (%rdx)
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L95
L94:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L95:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, s2(%rip)
    movq	%rdx, s2 + 8(%rip)
L93:
    movl	-228(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -228(%rbp)
    testl	%eax, %eax
    jg	L96
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L97
    call	__stack_chk_fail
L97:
    leave
    ret
    .globl	f7
f7:
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
    je	L99
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L99:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	-228(%rbp), %eax
    movl	%eax, -212(%rbp)
    jmp	L100
L101:
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movq	-200(%rbp), %rax
    leaq	32(%rax), %rdx
    movq	%rdx, -200(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, s1(%rip)
    movq	8(%rax), %rdx
    movq	%rdx, s1 + 8(%rip)
    movq	16(%rax), %rdx
    movq	%rdx, s1 + 16(%rip)
    movq	24(%rax), %rax
    movq	%rax, s1 + 24(%rip)
    movl	s1(%rip), %eax
    movl	%eax, %edi
    call	bar
L100:
    movl	-212(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -212(%rbp)
    testl	%eax, %eax
    jg	L101
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L102
    call	__stack_chk_fail
L102:
    leave
    ret
    .globl	f8
f8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movl	%edi, -244(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L104
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L104:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	-244(%rbp), %eax
    movl	%eax, -228(%rbp)
    jmp	L105
L110:
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L106
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L106
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    leaq	(%rax,%rdx), %rcx
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rax, %rdx
    leaq	-224(%rbp), %rax
    vmovsd	(%rdx), %xmm0
    vmovsd	%xmm0, (%rax)
    leaq	8(%rax), %rdx
    movq	(%rcx), %rcx
    movq	%rcx, (%rdx)
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L107
L106:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L107:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, s2(%rip)
    movq	%rdx, s2 + 8(%rip)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L108
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L109
L108:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L109:
    movl	(%rax), %eax
    movl	%eax, y(%rip)
    movq	s2 + 8(%rip), %rax
    movl	%eax, %edi
    call	bar
L105:
    movl	-228(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -228(%rbp)
    testl	%eax, %eax
    jg	L110
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L111
    call	__stack_chk_fail
L111:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    subq	$8, %rsp
    pushq	$13
    pushq	$11
    pushq	$9
    movl	$7, %r9d
    movl	$5, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$7, %edi
    movl	$0, %eax
    call	f1
    addq	$32, %rsp
    movq	x(%rip), %rax
    cmpq	$11, %rax
    je	L113
    call	abort
L113:
    vmovsd	LC1(%rip), %xmm5
    vmovsd	LC2(%rip), %xmm4
    vmovsd	LC3(%rip), %xmm3
    vmovsd	LC4(%rip), %xmm2
    vmovsd	LC0(%rip), %xmm1
    vmovsd	LC5(%rip), %xmm0
    movabsq	$4607182418800017408, %rax
    vmovapd	%xmm5, %xmm6
    vmovapd	%xmm4, %xmm5
    vmovapd	%xmm3, %xmm4
    vmovapd	%xmm2, %xmm3
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	$6, %edi
    movl	$7, %eax
    call	f2
    vmovsd	d(%rip), %xmm0
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L141
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L142
L141:
    call	abort
L142:
    movl	$3, %edx
    movl	$1, %esi
    movl	$2, %edi
    movl	$0, %eax
    call	f3
    movl	bar_arg(%rip), %eax
    cmpl	$1, %eax
    jne	L116
    movq	x(%rip), %rax
    cmpq	$1, %rax
    je	L117
L116:
    call	abort
L117:
    vmovsd	LC7(%rip), %xmm0
    movabsq	$4625478292286210048, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    movl	$2, %edi
    movl	$2, %eax
    call	f4
    movl	bar_arg(%rip), %eax
    cmpl	$21, %eax
    jne	L118
    vmovsd	d(%rip), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L118
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L143
L118:
    call	abort
L143:
    movl	$131, -64(%rbp)
    movl	$251, -48(%rbp)
    vmovsd	LC9(%rip), %xmm0
    vmovsd	%xmm0, -56(%rbp)
    vmovsd	LC10(%rip), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-64(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	-56(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$254, -16(%rbp)
    vmovsd	LC11(%rip), %xmm0
    vmovsd	%xmm0, -8(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-8(%rbp)
    pushq	-16(%rbp)
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movl	$2, %edi
    movl	$0, %eax
    call	f5
    addq	$96, %rsp
    movl	s1(%rip), %eax
    cmpl	$131, %eax
    jne	L121
    movl	s1 + 16(%rip), %eax
    cmpl	$254, %eax
    jne	L121
    vmovsd	s1 + 8(%rip), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L121
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L121
    vmovsd	s1 + 24(%rip), %xmm0
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L121
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L144
L121:
    call	abort
L144:
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-8(%rbp)
    pushq	-16(%rbp)
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movl	$3, %edi
    movl	$0, %eax
    call	f5
    addq	$96, %rsp
    movl	s1(%rip), %eax
    cmpl	$131, %eax
    jne	L124
    movl	s1 + 16(%rip), %eax
    cmpl	$251, %eax
    jne	L124
    vmovsd	s1 + 8(%rip), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L124
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L124
    vmovsd	s1 + 24(%rip), %xmm0
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L124
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L145
L124:
    call	abort
L145:
    movq	$138, -88(%rbp)
    vmovsd	LC3(%rip), %xmm0
    vmovsd	%xmm0, -96(%rbp)
    movq	$257, -72(%rbp)
    vmovsd	LC12(%rip), %xmm0
    vmovsd	%xmm0, -80(%rbp)
    vmovsd	-96(%rbp), %xmm1
    movq	-88(%rbp), %rcx
    vmovsd	-80(%rbp), %xmm0
    movq	-72(%rbp), %rdx
    movq	-96(%rbp), %rsi
    movq	-88(%rbp), %rax
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rsi, %xmm0
    movq	%rax, %rsi
    movl	$2, %edi
    movl	$3, %eax
    call	f6
    movq	s2 + 8(%rip), %rax
    cmpq	$257, %rax
    jne	L127
    vmovsd	s2(%rip), %xmm0
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L127
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L146
L127:
    call	abort
L146:
    vmovsd	-96(%rbp), %xmm1
    movq	-88(%rbp), %rcx
    vmovsd	-80(%rbp), %xmm0
    movq	-72(%rbp), %rdx
    movq	-96(%rbp), %rsi
    movq	-88(%rbp), %rax
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rsi, %xmm0
    movq	%rax, %rsi
    movl	$3, %edi
    movl	$3, %eax
    call	f6
    movq	s2 + 8(%rip), %rax
    cmpq	$138, %rax
    jne	L130
    vmovsd	s2(%rip), %xmm0
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L130
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L147
L130:
    call	abort
L147:
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-8(%rbp)
    pushq	-16(%rbp)
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    movl	$2, %edi
    movl	$0, %eax
    call	f7
    addq	$96, %rsp
    movl	s1(%rip), %eax
    cmpl	$131, %eax
    jne	L133
    movl	s1 + 16(%rip), %eax
    cmpl	$254, %eax
    jne	L133
    vmovsd	s1 + 8(%rip), %xmm0
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L133
    vmovsd	LC9(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L133
    vmovsd	s1 + 24(%rip), %xmm0
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L133
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L148
L133:
    call	abort
L148:
    movl	bar_arg(%rip), %eax
    cmpl	$131, %eax
    je	L136
    call	abort
L136:
    vmovsd	-96(%rbp), %xmm1
    movq	-88(%rbp), %rcx
    vmovsd	-96(%rbp), %xmm0
    movq	-88(%rbp), %rdx
    movq	-80(%rbp), %rsi
    movq	-72(%rbp), %rax
    vmovapd	%xmm1, %xmm2
    vmovapd	%xmm0, %xmm1
    vmovq	%rsi, %xmm0
    movq	%rax, %rsi
    movl	$3, %edi
    movl	$3, %eax
    call	f8
    movq	s2 + 8(%rip), %rax
    cmpq	$257, %rax
    jne	L137
    vmovsd	s2(%rip), %xmm0
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L137
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L149
L137:
    call	abort
L149:
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1074790400
LC1:
    .long	0
    .long	1078984704
LC2:
    .long	0
    .long	1077936128
LC3:
    .long	0
    .long	1076887552
LC4:
    .long	0
    .long	1075838976
LC5:
    .long	0
    .long	1073741824
LC7:
    .long	0
    .long	1077084160
LC8:
    .long	0
    .long	1076953088
LC9:
    .long	0
    .long	1076756480
LC10:
    .long	0
    .long	1080549376
LC11:
    .long	0
    .long	1080442880
LC12:
    .long	0
    .long	1080426496
