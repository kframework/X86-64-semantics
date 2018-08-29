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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .comm	foo_arg,4,4
    .comm	bar_arg,4,4
    .comm	x,8,8
    .comm	d,8,8
    .comm	gap,24,16
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movl	-4(%rbp), %eax
    cmpl	$8, %eax
    je	L55
    cmpl	$11, %eax
    je	L56
    cmpl	$5, %eax
    jne	L71
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L58
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L59
L58:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L59:
    movl	(%rax), %eax
    movl	%eax, foo_arg(%rip)
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$176, %eax
    jnb	L60
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L61
L60:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L61:
    vmovsd	(%rax), %xmm1
    movl	foo_arg(%rip), %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vaddsd	%xmm1, %xmm0, %xmm0
    vcvttsd2si	%xmm0, %eax
    movl	%eax, foo_arg(%rip)
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L62
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L63
L62:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L63:
    movq	(%rax), %rax
    movl	%eax, %edx
    movl	foo_arg(%rip), %eax
    addl	%edx, %eax
    movl	%eax, foo_arg(%rip)
    jmp	L64
L55:
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L65
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L66
L65:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L66:
    movq	(%rax), %rax
    movl	%eax, foo_arg(%rip)
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$176, %eax
    jnb	L67
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L68
L67:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L68:
    vmovsd	(%rax), %xmm1
    movl	foo_arg(%rip), %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vaddsd	%xmm1, %xmm0, %xmm0
    vcvttsd2si	%xmm0, %eax
    movl	%eax, foo_arg(%rip)
    jmp	L64
L56:
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L69
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L70
L69:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L70:
    movl	(%rax), %eax
    movl	%eax, foo_arg(%rip)
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    addq	$15, %rax
    andq	$-16, %rax
    leaq	16(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
    fldt	(%rax)
    movl	foo_arg(%rip), %eax
    movl	%eax, -20(%rbp)
    fildl	-20(%rbp)
    faddp	%st, %st(1)
    fisttpl	-8(%rbp)
    movl	-8(%rbp), %eax
    movl	%eax, foo_arg(%rip)
    jmp	L64
L71:
    call	abort
L64:
    nop
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    cmpl	$16386, -4(%rbp)
    jne	L73
    movl	gap(%rip), %eax
    cmpl	$48, %eax
    jnb	L74
    movq	gap + 16(%rip), %rax
    movl	gap(%rip), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	gap(%rip), %edx
    addl	$8, %edx
    movl	%edx, gap(%rip)
    jmp	L75
L74:
    movq	gap + 8(%rip), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
L75:
    movl	(%rax), %eax
    cmpl	$13, %eax
    jne	L76
    movl	gap + 4(%rip), %eax
    cmpl	$176, %eax
    jnb	L77
    movq	gap + 16(%rip), %rax
    movl	gap + 4(%rip), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	gap + 4(%rip), %edx
    addl	$16, %edx
    movl	%edx, gap + 4(%rip)
    jmp	L78
L77:
    movq	gap + 8(%rip), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
L78:
    vmovsd	(%rax), %xmm0
    vucomisd	LC1(%rip), %xmm0
    jp	L76
    vucomisd	LC1(%rip), %xmm0
    je	L73
L76:
    call	abort
L73:
    movl	-4(%rbp), %eax
    movl	%eax, bar_arg(%rip)
    nop
    leave
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$72, %rsp
    movl	%edi, -180(%rbp)
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
    movl	$8, gap(%rip)
    movl	$48, gap + 4(%rip)
    leaq	16(%rbp), %rax
    movq	%rax, gap + 8(%rip)
    leaq	-176(%rbp), %rax
    movq	%rax, gap + 16(%rip)
    movl	gap(%rip), %eax
    cmpl	$48, %eax
    jnb	L82
    movq	gap + 16(%rip), %rax
    movl	gap(%rip), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	gap(%rip), %edx
    addl	$8, %edx
    movl	%edx, gap(%rip)
    jmp	L83
L82:
    movq	gap + 8(%rip), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
L83:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    nop
    leave
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$192, %rsp
    movl	%edi, -180(%rbp)
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
    movl	$8, gap(%rip)
    movl	$48, gap + 4(%rip)
    leaq	16(%rbp), %rax
    movq	%rax, gap + 8(%rip)
    leaq	-176(%rbp), %rax
    movq	%rax, gap + 16(%rip)
    movl	-180(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    leave
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$448, %rsp
    movl	%edi, -436(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L89
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L89:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -336(%rbp)
    movl	$48, -332(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -328(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -320(%rbp)
    movl	-336(%rbp), %eax
    cmpl	$48, %eax
    jnb	L90
    movq	-320(%rbp), %rax
    movl	-336(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-336(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -336(%rbp)
    jmp	L91
L90:
    movq	-328(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -328(%rbp)
L91:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L92
    call	__stack_chk_fail
L92:
    leave
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$448, %rsp
    movl	%edi, -436(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L94
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L94:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -336(%rbp)
    movl	$48, -332(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -328(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -320(%rbp)
    movl	-436(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L95
    call	__stack_chk_fail
L95:
    leave
    ret
    .globl	f5
f5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$448, %rsp
    movl	%edi, -436(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L97
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L97:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -336(%rbp)
    movl	$48, -332(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -328(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -320(%rbp)
    leaq	-432(%rbp), %rax
    leaq	96(%rax), %rdx
    movl	-436(%rbp), %eax
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	foo
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L98
    call	__stack_chk_fail
L98:
    leave
    ret
    .globl	f6
f6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L100
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L100:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L101
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L102
L101:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L102:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L103
    call	__stack_chk_fail
L103:
    leave
    ret
    .globl	f7
f7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L105
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L105:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L106
    call	__stack_chk_fail
L106:
    leave
    ret
    .globl	f8
f8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L108
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L108:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    leaq	-272(%rbp), %rax
    leaq	8(%rax), %rdx
    movl	-276(%rbp), %eax
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	foo
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L109
    call	__stack_chk_fail
L109:
    leave
    ret
    .globl	f10
f10:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L111
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L111:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -216(%rbp)
    movl	$48, -212(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -208(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -200(%rbp)
    movl	-216(%rbp), %eax
    cmpl	$48, %eax
    jnb	L112
    movq	-200(%rbp), %rax
    movl	-216(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-216(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -216(%rbp)
    jmp	L113
L112:
    movq	-208(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -208(%rbp)
L113:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L114
    call	__stack_chk_fail
L114:
    leave
    ret
    .globl	f11
f11:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
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
    movl	$8, -216(%rbp)
    movl	$48, -212(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -208(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -200(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L117
    call	__stack_chk_fail
L117:
    leave
    ret
    .globl	f12
f12:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L119
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L119:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -216(%rbp)
    movl	$48, -212(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -208(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-272(%rbp), %rax
    leaq	56(%rax), %rdx
    movl	-276(%rbp), %eax
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	foo
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L120
    call	__stack_chk_fail
L120:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$79, %esi
    movl	$1, %edi
    movl	$0, %eax
    call	f1
    movq	x(%rip), %rax
    cmpq	$79, %rax
    je	L122
    call	abort
L122:
    movabsq	$-4599301119452119040, %rax
    vmovq	%rax, %xmm0
    movl	$13, %esi
    movl	$16386, %edi
    movl	$1, %eax
    call	f2
    movl	bar_arg(%rip), %eax
    cmpl	$16386, %eax
    je	L123
    call	abort
L123:
    movl	$2031, %esi
    movl	$3, %edi
    movl	$0, %eax
    call	f3
    movq	x(%rip), %rax
    cmpq	$2031, %rax
    je	L124
    call	abort
L124:
    movl	$18, %esi
    movl	$4, %edi
    movl	$0, %eax
    call	f4
    movl	bar_arg(%rip), %eax
    cmpl	$4, %eax
    je	L125
    call	abort
L125:
    movabsq	$4626041242239631360, %rax
    movl	$18, %edx
    vmovq	%rax, %xmm0
    movl	$1, %esi
    movl	$5, %edi
    movl	$1, %eax
    call	f5
    movl	foo_arg(%rip), %eax
    cmpl	$38, %eax
    je	L126
    call	abort
L126:
    movl	$18, %esi
    movl	$6, %edi
    movl	$0, %eax
    call	f6
    movq	x(%rip), %rax
    cmpq	$18, %rax
    je	L127
    call	abort
L127:
    movl	$7, %edi
    movl	$0, %eax
    call	f7
    movl	bar_arg(%rip), %eax
    cmpl	$7, %eax
    je	L128
    call	abort
L128:
    movabsq	$4623507967449235456, %rax
    vmovq	%rax, %xmm0
    movl	$2031, %esi
    movl	$8, %edi
    movl	$1, %eax
    call	f8
    movl	foo_arg(%rip), %eax
    cmpl	$2044, %eax
    je	L129
    call	abort
L129:
    movl	$180, %esi
    movl	$9, %edi
    movl	$0, %eax
    call	f10
    movq	x(%rip), %rax
    cmpq	$180, %rax
    je	L130
    call	abort
L130:
    movl	$10, %edi
    movl	$0, %eax
    call	f11
    movl	bar_arg(%rip), %eax
    cmpl	$10, %eax
    je	L131
    call	abort
L131:
    fldt	LC4(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movl	$2030, %esi
    movl	$11, %edi
    movl	$0, %eax
    call	f12
    addq	$16, %rsp
    movl	foo_arg(%rip), %eax
    cmpl	$2042, %eax
    je	L132
    call	abort
L132:
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC1:
    .long	0
    .long	-1070858240
LC4:
    .long	0
    .long	3221225472
    .long	16386
    .long	0
