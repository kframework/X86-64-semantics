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
    .globl	to_hex
to_hex:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    cmpl	$15, -4(%rbp)
    jbe	L54
    call	abort
L54:
    movl	-4(%rbp), %eax
    movzbl	hex2436(%rax), %eax
    movsbl	%al, %eax
    leave
    ret
    .globl	f0
f0:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$232, %rsp
    movq	%rdi, -232(%rbp)
    movq	%rsi, -184(%rbp)
    movq	%rdx, -176(%rbp)
    movq	%rcx, -168(%rbp)
    movq	%r8, -160(%rbp)
    movq	%r9, -152(%rbp)
    testb	%al, %al
    je	L57
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L57:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$8, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-232(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$16, %rax
    je	L59
    call	abort
L62:
    movq	-232(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -232(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L60
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L61
L60:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L61:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L59
    call	abort
L59:
    movq	-232(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L62
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L63
    call	__stack_chk_fail
L63:
    addq	$232, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$232, %rsp
    movl	%edi, -228(%rbp)
    movq	%rsi, -240(%rbp)
    movq	%rdx, -176(%rbp)
    movq	%rcx, -168(%rbp)
    movq	%r8, -160(%rbp)
    movq	%r9, -152(%rbp)
    testb	%al, %al
    je	L65
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L65:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$16, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-240(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$15, %rax
    je	L67
    call	abort
L70:
    movq	-240(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -240(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L68
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L69
L68:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L69:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L67
    call	abort
L67:
    movq	-240(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L70
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L71
    call	__stack_chk_fail
L71:
    addq	$232, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$232, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movq	%rdx, -240(%rbp)
    movq	%rcx, -168(%rbp)
    movq	%r8, -160(%rbp)
    movq	%r9, -152(%rbp)
    testb	%al, %al
    je	L73
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L73:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$24, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-240(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$14, %rax
    je	L75
    call	abort
L78:
    movq	-240(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -240(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L76
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L77
L76:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L77:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L75
    call	abort
L75:
    movq	-240(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L78
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L79
    call	__stack_chk_fail
L79:
    addq	$232, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movq	%rcx, -248(%rbp)
    movq	%r8, -160(%rbp)
    movq	%r9, -152(%rbp)
    testb	%al, %al
    je	L81
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L81:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$32, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-248(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$13, %rax
    je	L83
    call	abort
L86:
    movq	-248(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -248(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L84
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L85
L84:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L85:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L83
    call	abort
L83:
    movq	-248(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L86
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L87
    call	__stack_chk_fail
L87:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movq	%r8, -248(%rbp)
    movq	%r9, -152(%rbp)
    testb	%al, %al
    je	L89
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L89:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$40, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-248(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$12, %rax
    je	L91
    call	abort
L94:
    movq	-248(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -248(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L92
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L93
L92:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L93:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L91
    call	abort
L91:
    movq	-248(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L94
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L95
    call	__stack_chk_fail
L95:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f5
f5:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movq	%r9, -256(%rbp)
    testb	%al, %al
    je	L97
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L97:
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$11, %rax
    je	L99
    call	abort
L102:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L100
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L101
L100:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L101:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L99
    call	abort
L99:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L102
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L103
    call	__stack_chk_fail
L103:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f6
f6:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L105
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L105:
    movq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	24(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$10, %rax
    je	L107
    call	abort
L110:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L108
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L109
L108:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L109:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L107
    call	abort
L107:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L110
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L111
    call	__stack_chk_fail
L111:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f7
f7:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L113
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L113:
    movq	24(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	32(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$9, %rax
    je	L115
    call	abort
L118:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L116
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L117
L116:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L117:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L115
    call	abort
L115:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L118
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L119
    call	__stack_chk_fail
L119:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f8
f8:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L121
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L121:
    movq	32(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	40(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$8, %rax
    je	L123
    call	abort
L126:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L124
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L125
L124:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L125:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L123
    call	abort
L123:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L126
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L127
    call	__stack_chk_fail
L127:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f9
f9:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L129
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L129:
    movq	40(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	48(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$7, %rax
    je	L131
    call	abort
L134:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L132
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L133
L132:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L133:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L131
    call	abort
L131:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L134
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L135
    call	__stack_chk_fail
L135:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f10
f10:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L137
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L137:
    movq	48(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	56(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$6, %rax
    je	L139
    call	abort
L142:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L140
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L141
L140:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L141:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L139
    call	abort
L139:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L142
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L143
    call	__stack_chk_fail
L143:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f11
f11:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L145
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L145:
    movq	56(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	64(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$5, %rax
    je	L147
    call	abort
L150:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L148
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L149
L148:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L149:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L147
    call	abort
L147:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L150
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L151
    call	__stack_chk_fail
L151:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f12
f12:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L153
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L153:
    movq	64(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	72(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$4, %rax
    je	L155
    call	abort
L158:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L156
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L157
L156:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L157:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L155
    call	abort
L155:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L158
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L159
    call	__stack_chk_fail
L159:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f13
f13:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L161
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L161:
    movq	72(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	80(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    je	L163
    call	abort
L166:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L164
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L165
L164:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L165:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L163
    call	abort
L163:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L166
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L167
    call	__stack_chk_fail
L167:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f14
f14:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L169
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L169:
    movq	80(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	88(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$2, %rax
    je	L171
    call	abort
L174:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L172
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L173
L172:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L173:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L171
    call	abort
L171:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L174
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L175
    call	__stack_chk_fail
L175:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	f15
f15:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$248, %rsp
    movl	%edi, -228(%rbp)
    movl	%esi, -232(%rbp)
    movl	%edx, -236(%rbp)
    movl	%ecx, -240(%rbp)
    movl	%r8d, -244(%rbp)
    movl	%r9d, -248(%rbp)
    testb	%al, %al
    je	L177
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L177:
    movq	88(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$40, %rax
    movq	%rax, -200(%rbp)
    xorl	%eax, %eax
    movl	$48, -224(%rbp)
    movl	$48, -220(%rbp)
    leaq	96(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-192(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	-256(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$1, %rax
    je	L179
    call	abort
L182:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L180
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L181
L180:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L181:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L179
    call	abort
L179:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L182
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L183
    call	__stack_chk_fail
L183:
    addq	$248, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"0123456789abcdef"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$LC0, -8(%rbp)
    movq	-8(%rbp), %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movl	$4, %r9d
    movl	$3, %r8d
    movl	$2, %ecx
    movl	$1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	f0
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$1, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movl	$4, %r9d
    movl	$3, %r8d
    movl	$2, %ecx
    movl	$1, %edx
    movq	%rax, %rsi
    movl	$0, %edi
    movl	$0, %eax
    call	f1
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$2, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movl	$4, %r9d
    movl	$3, %r8d
    movl	$2, %ecx
    movq	%rax, %rdx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f2
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$3, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movl	$4, %r9d
    movl	$3, %r8d
    movq	%rax, %rcx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f3
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$4, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movl	$4, %r9d
    movq	%rax, %r8
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f4
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$5, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	$5
    movq	%rax, %r9
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f5
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$6, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    pushq	%rax
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f6
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$7, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	%rax
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f7
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$8, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	%rax
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f8
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$9, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	%rax
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f9
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$10, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	%rax
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f10
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$11, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	%rax
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f11
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$12, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	%rax
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f12
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$13, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	$13
    pushq	%rax
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f13
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$14, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	$14
    pushq	%rax
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f14
    addq	$96, %rsp
    movq	-8(%rbp), %rax
    addq	$15, %rax
    subq	$8, %rsp
    pushq	$15
    pushq	%rax
    pushq	$14
    pushq	$13
    pushq	$12
    pushq	$11
    pushq	$10
    pushq	$9
    pushq	$8
    pushq	$7
    pushq	$6
    movl	$5, %r9d
    movl	$4, %r8d
    movl	$3, %ecx
    movl	$2, %edx
    movl	$1, %esi
    movl	$0, %edi
    movl	$0, %eax
    call	f15
    addq	$96, %rsp
    movl	$0, %edi
    call	exit
    .data
hex2436:
    .string	"0123456789abcdef"
