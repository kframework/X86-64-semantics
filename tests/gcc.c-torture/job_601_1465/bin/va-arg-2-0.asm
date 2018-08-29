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
    .globl	to_hex
to_hex:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    cmpl	$15, -4(%rbp)
    jbe	L58
    call	abort
L58:
    movl	-4(%rbp), %eax
    movzbl	hex2443(%rax), %eax
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
    je	L61
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L61:
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
    je	L63
    call	abort
L66:
    movq	-232(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -232(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L64
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L65
L64:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L65:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L63
    call	abort
L63:
    movq	-232(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L66
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L67
    call	__stack_chk_fail
L67:
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
    je	L69
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L69:
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
    je	L71
    call	abort
L74:
    movq	-240(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -240(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L72
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L73
L72:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L73:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L71
    call	abort
L71:
    movq	-240(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L74
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L75
    call	__stack_chk_fail
L75:
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
    je	L77
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L77:
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
    je	L79
    call	abort
L82:
    movq	-240(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -240(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L80
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L81
L80:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L81:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L79
    call	abort
L79:
    movq	-240(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L82
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L83
    call	__stack_chk_fail
L83:
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
    je	L85
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L85:
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
    je	L87
    call	abort
L90:
    movq	-248(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -248(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L88
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L89
L88:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L89:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L87
    call	abort
L87:
    movq	-248(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L90
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L91
    call	__stack_chk_fail
L91:
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
    je	L93
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L93:
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
    je	L95
    call	abort
L98:
    movq	-248(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -248(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L96
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L97
L96:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L97:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L95
    call	abort
L95:
    movq	-248(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L98
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L99
    call	__stack_chk_fail
L99:
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
    je	L101
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L101:
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
    je	L103
    call	abort
L106:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L104
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L105
L104:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L105:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L103
    call	abort
L103:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L106
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L107
    call	__stack_chk_fail
L107:
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
    je	L109
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L109:
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
    je	L111
    call	abort
L114:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L112
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L113
L112:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L113:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L111
    call	abort
L111:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L114
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L115
    call	__stack_chk_fail
L115:
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
    je	L117
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L117:
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
    je	L119
    call	abort
L122:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L120
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L121
L120:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L121:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L119
    call	abort
L119:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L122
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L123
    call	__stack_chk_fail
L123:
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
    je	L125
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L125:
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
    je	L127
    call	abort
L130:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L128
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L129
L128:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L129:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L127
    call	abort
L127:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L130
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L131
    call	__stack_chk_fail
L131:
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
    je	L133
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L133:
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
    je	L135
    call	abort
L138:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L136
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L137
L136:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L137:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L135
    call	abort
L135:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L138
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L139
    call	__stack_chk_fail
L139:
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
    je	L141
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L141:
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
    je	L143
    call	abort
L146:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L144
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L145
L144:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L145:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L143
    call	abort
L143:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L146
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L147
    call	__stack_chk_fail
L147:
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
    je	L149
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L149:
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
    je	L151
    call	abort
L154:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L152
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L153
L152:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L153:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L151
    call	abort
L151:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L154
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L155
    call	__stack_chk_fail
L155:
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
    je	L157
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L157:
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
    je	L159
    call	abort
L162:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L160
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L161
L160:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L161:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L159
    call	abort
L159:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L162
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L163
    call	__stack_chk_fail
L163:
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
    je	L165
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L165:
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
    je	L167
    call	abort
L170:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L168
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L169
L168:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L169:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L167
    call	abort
L167:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L170
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L171
    call	__stack_chk_fail
L171:
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
    je	L173
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L173:
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
    je	L175
    call	abort
L178:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L176
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L177
L176:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L177:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L175
    call	abort
L175:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L178
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L179
    call	__stack_chk_fail
L179:
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
    je	L181
    vmovaps	%xmm0, -144(%rbp)
    vmovaps	%xmm1, -128(%rbp)
    vmovaps	%xmm2, -112(%rbp)
    vmovaps	%xmm3, -96(%rbp)
    vmovaps	%xmm4, -80(%rbp)
    vmovaps	%xmm5, -64(%rbp)
    vmovaps	%xmm6, -48(%rbp)
    vmovaps	%xmm7, -32(%rbp)
L181:
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
    je	L183
    call	abort
L186:
    movq	-256(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	-224(%rbp), %eax
    cmpl	$48, %eax
    jnb	L184
    movq	-208(%rbp), %rax
    movl	-224(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-224(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -224(%rbp)
    jmp	L185
L184:
    movq	-216(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -216(%rbp)
L185:
    movl	(%rax), %eax
    movl	%eax, %edi
    call	to_hex
    cmpl	%eax, %ebx
    je	L183
    call	abort
L183:
    movq	-256(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L186
    nop
    movq	-200(%rbp), %rax
    xorq	$40, %rax
    je	L187
    call	__stack_chk_fail
L187:
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
hex2443:
    .string	"0123456789abcdef"
