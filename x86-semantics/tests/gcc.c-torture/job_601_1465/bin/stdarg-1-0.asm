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
    .comm	pap,8,8
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movl	-4(%rbp), %eax
    cmpl	$5, %eax
    jne	L59
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L56
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
    jmp	L57
L56:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L57:
    movl	(%rax), %eax
    movl	%eax, foo_arg(%rip)
    jmp	L60
L59:
    call	abort
L60:
    nop
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    cmpl	$16390, -4(%rbp)
    jne	L62
    movl	gap + 4(%rip), %eax
    cmpl	$176, %eax
    jnb	L63
    movq	gap + 16(%rip), %rax
    movl	gap + 4(%rip), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	gap + 4(%rip), %edx
    addl	$16, %edx
    movl	%edx, gap + 4(%rip)
    jmp	L64
L63:
    movq	gap + 8(%rip), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
L64:
    vmovsd	(%rax), %xmm0
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L65
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L65
    movl	gap(%rip), %eax
    cmpl	$48, %eax
    jnb	L66
    movq	gap + 16(%rip), %rax
    movl	gap(%rip), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	gap(%rip), %edx
    addl	$8, %edx
    movl	%edx, gap(%rip)
    jmp	L67
L66:
    movq	gap + 8(%rip), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
L67:
    movq	(%rax), %rax
    cmpq	$129, %rax
    je	L68
L65:
    call	abort
L62:
    cmpl	$16392, -4(%rbp)
    jne	L68
    movq	pap(%rip), %rax
    movl	(%rax), %edx
    cmpl	$48, %edx
    jnb	L69
    movq	16(%rax), %rdx
    movl	(%rax), %ecx
    movl	%ecx, %ecx
    addq	%rcx, %rdx
    movl	(%rax), %ecx
    addl	$8, %ecx
    movl	%ecx, (%rax)
    jmp	L70
L69:
    movq	8(%rax), %rdx
    leaq	8(%rdx), %rcx
    movq	%rcx, 8(%rax)
L70:
    movq	(%rdx), %rax
    cmpq	$14, %rax
    jne	L71
    movq	pap(%rip), %rax
    movl	4(%rax), %edx
    cmpl	$176, %edx
    jnb	L72
    movq	16(%rax), %rdx
    movl	4(%rax), %ecx
    movl	%ecx, %ecx
    addq	%rcx, %rdx
    movl	4(%rax), %ecx
    addl	$16, %ecx
    movl	%ecx, 4(%rax)
    jmp	L73
L72:
    movq	8(%rax), %rdx
    leaq	8(%rdx), %rcx
    movq	%rcx, 8(%rax)
L73:
    vmovsd	(%rdx), %xmm0
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L71
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L71
    movq	pap(%rip), %rax
    movl	(%rax), %edx
    cmpl	$48, %edx
    jnb	L74
    movq	16(%rax), %rdx
    movl	(%rax), %ecx
    movl	%ecx, %ecx
    addq	%rcx, %rdx
    movl	(%rax), %ecx
    addl	$8, %ecx
    movl	%ecx, (%rax)
    jmp	L75
L74:
    movq	8(%rax), %rdx
    leaq	8(%rdx), %rcx
    movq	%rcx, 8(%rax)
L75:
    movl	(%rdx), %eax
    cmpl	$17, %eax
    je	L68
L71:
    call	abort
L68:
    movl	-4(%rbp), %eax
    movl	%eax, bar_arg(%rip)
    nop
    leave
    ret
    .globl	f0
f0:
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
    je	L78
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L78:
    nop
    leave
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
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L81
    call	__stack_chk_fail
L81:
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
    je	L83
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L83:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    vmovsd	d(%rip), %xmm0
    vcvttsd2si	%xmm0, %eax
    movl	%eax, %edi
    call	bar
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L84
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L85
L84:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L85:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    movq	x(%rip), %rax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L86
    call	__stack_chk_fail
L86:
    leave
    ret
    .globl	f3
f3:
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
    je	L88
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L88:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L89
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L90
L89:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L90:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, d(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L91
    call	__stack_chk_fail
L91:
    leave
    ret
    .globl	f4
f4:
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
    je	L93
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L93:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L94
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L95
L94:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L95:
    vmovsd	(%rax), %xmm0
    vcvttsd2siq	%xmm0, %rax
    movq	%rax, x(%rip)
    leaq	-208(%rbp), %rdx
    movl	-212(%rbp), %eax
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	foo
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L96
    call	__stack_chk_fail
L96:
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
    je	L98
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L98:
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
    movq	(%rax), %rdx
    movq	%rdx, gap(%rip)
    movq	8(%rax), %rdx
    movq	%rdx, gap + 8(%rip)
    movq	16(%rax), %rax
    movq	%rax, gap + 16(%rip)
    movl	-212(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L99
    call	__stack_chk_fail
L99:
    leave
    ret
    .globl	f6
f6:
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
    je	L101
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L101:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    vmovsd	d(%rip), %xmm0
    vcvttsd2si	%xmm0, %eax
    movl	%eax, %edi
    call	bar
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L102
    movl	-208(%rbp), %eax
    addl	$8, %eax
    movl	%eax, -208(%rbp)
    jmp	L103
L102:
    movq	-200(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -200(%rbp)
L103:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L104
    movl	-208(%rbp), %eax
    addl	$8, %eax
    movl	%eax, -208(%rbp)
    jmp	L105
L104:
    movq	-200(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -200(%rbp)
L105:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L106
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L107
L106:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L107:
    movq	(%rax), %rax
    movq	%rax, x(%rip)
    movq	x(%rip), %rax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L108
    call	__stack_chk_fail
L108:
    leave
    ret
    .globl	f7
f7:
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
    je	L110
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L110:
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
    movq	%rax, pap(%rip)
    movl	-212(%rbp), %eax
    movl	%eax, %edi
    call	bar
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L111
    call	__stack_chk_fail
L111:
    leave
    ret
    .globl	f8
f8:
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
    je	L113
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L113:
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
    movq	%rax, pap(%rip)
    movl	-212(%rbp), %eax
    movl	%eax, %edi
    call	bar
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L114
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L115
L114:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L115:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, d(%rip)
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L116
    call	__stack_chk_fail
L116:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, %edi
    movl	$0, %eax
    call	f0
    movl	$2, %edi
    movl	$0, %eax
    call	f1
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, d(%rip)
    movl	$28, %esi
    movl	$3, %edi
    movl	$0, %eax
    call	f2
    movl	bar_arg(%rip), %eax
    cmpl	$28, %eax
    jne	L118
    movq	x(%rip), %rax
    cmpq	$28, %rax
    je	L119
L118:
    call	abort
L119:
    movabsq	$4638813169307877376, %rax
    vmovq	%rax, %xmm0
    movl	$4, %edi
    movl	$1, %eax
    call	f3
    vmovsd	d(%rip), %xmm0
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L131
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L132
L131:
    call	abort
L132:
    movabsq	$4625196817309499392, %rax
    movl	$128, %esi
    vmovq	%rax, %xmm0
    movl	$5, %edi
    movl	$1, %eax
    call	f4
    movq	x(%rip), %rax
    cmpq	$16, %rax
    jne	L122
    movl	foo_arg(%rip), %eax
    cmpl	$128, %eax
    je	L123
L122:
    call	abort
L123:
    movabsq	$4625478292286210048, %rax
    movl	$129, %esi
    vmovq	%rax, %xmm0
    movl	$16390, %edi
    movl	$1, %eax
    call	f5
    movl	bar_arg(%rip), %eax
    cmpl	$16390, %eax
    je	L124
    call	abort
L124:
    movq	$-31, %rcx
    movl	$14, %edx
    movl	$12, %esi
    movl	$7, %edi
    movl	$0, %eax
    call	f6
    movl	bar_arg(%rip), %eax
    cmpl	$-31, %eax
    je	L125
    call	abort
L125:
    vmovsd	LC4(%rip), %xmm0
    movabsq	$4638813169307877376, %rax
    vmovapd	%xmm0, %xmm1
    movl	$17, %edx
    vmovq	%rax, %xmm0
    movl	$14, %esi
    movl	$16392, %edi
    movl	$2, %eax
    call	f7
    movl	bar_arg(%rip), %eax
    cmpl	$16392, %eax
    je	L126
    call	abort
L126:
    vmovsd	LC5(%rip), %xmm0
    movabsq	$4638813169307877376, %rax
    vmovapd	%xmm0, %xmm1
    movl	$17, %edx
    vmovq	%rax, %xmm0
    movl	$14, %esi
    movl	$16392, %edi
    movl	$2, %eax
    call	f8
    movl	bar_arg(%rip), %eax
    cmpl	$16392, %eax
    jne	L127
    vmovsd	d(%rip), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L127
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L133
L127:
    call	abort
L133:
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1076953088
LC1:
    .long	0
    .long	1080057856
LC2:
    .long	0
    .long	1077870592
LC4:
    .long	0
    .long	1077542912
LC5:
    .long	0
    .long	1077608448
