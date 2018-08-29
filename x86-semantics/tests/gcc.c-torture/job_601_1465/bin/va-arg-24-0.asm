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
    .comm	errors,4,4
    .section	.rodata
LC0:
    .string	" %s: n[%d] = %d expected %d\n"
    .text
verify:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movl	$0, -4(%rbp)
    jmp	L54
L56:
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %eax
    cmpl	-4(%rbp), %eax
    je	L55
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %ecx
    movl	-4(%rbp), %esi
    movl	-4(%rbp), %edx
    movq	-24(%rbp), %rax
    movl	%esi, %r8d
    movq	%rax, %rsi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    movl	errors(%rip), %eax
    addl	$1, %eax
    movl	%eax, errors(%rip)
L55:
    addl	$1, -4(%rbp)
L54:
    cmpl	$10, -4(%rbp)
    jle	L56
    nop
    leave
    ret
    .section	.rodata
LC1:
    .string	"varargs0"
    .text
varargs0:
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
    movl	$8, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	$1, -268(%rbp)
    jmp	L59
L62:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L60
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L61
L60:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L61:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L59:
    cmpl	$10, -268(%rbp)
    jle	L62
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L63
    call	__stack_chk_fail
L63:
    leave
    ret
    .section	.rodata
LC2:
    .string	"varargs1"
    .text
varargs1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L65
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L65:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$16, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	$2, -268(%rbp)
    jmp	L66
L69:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L67
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L68
L67:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L68:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L66:
    cmpl	$10, -268(%rbp)
    jle	L69
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L70
    call	__stack_chk_fail
L70:
    leave
    ret
    .section	.rodata
LC3:
    .string	"varargs2"
    .text
varargs2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L72
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L72:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$24, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	$3, -268(%rbp)
    jmp	L73
L76:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L74
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L75
L74:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L75:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L73:
    cmpl	$10, -268(%rbp)
    jle	L76
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L77
    call	__stack_chk_fail
L77:
    leave
    ret
    .section	.rodata
LC4:
    .string	"varargs3"
    .text
varargs3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L79
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L79:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$32, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	$4, -268(%rbp)
    jmp	L80
L83:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L81
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L82
L81:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L82:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L80:
    cmpl	$10, -268(%rbp)
    jle	L83
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC4, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L84
    call	__stack_chk_fail
L84:
    leave
    ret
    .section	.rodata
LC5:
    .string	"varargs4"
    .text
varargs4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L86
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L86:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$40, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	$5, -268(%rbp)
    jmp	L87
L90:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L88
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L89
L88:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L89:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L87:
    cmpl	$10, -268(%rbp)
    jle	L90
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC5, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L91
    call	__stack_chk_fail
L91:
    leave
    ret
    .section	.rodata
LC6:
    .string	"varargs5"
    .text
varargs5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movl	%r9d, -296(%rbp)
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
    movl	$48, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	-296(%rbp), %eax
    movl	%eax, -220(%rbp)
    movl	$6, -268(%rbp)
    jmp	L94
L97:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L95
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L96
L95:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L96:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L94:
    cmpl	$10, -268(%rbp)
    jle	L97
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC6, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L98
    call	__stack_chk_fail
L98:
    leave
    ret
    .section	.rodata
LC7:
    .string	"varargs6"
    .text
varargs6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movl	%r9d, -296(%rbp)
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
    movl	$48, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	24(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	-296(%rbp), %eax
    movl	%eax, -220(%rbp)
    movl	16(%rbp), %eax
    movl	%eax, -216(%rbp)
    movl	$7, -268(%rbp)
    jmp	L101
L104:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L102
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L103
L102:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L103:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L101:
    cmpl	$10, -268(%rbp)
    jle	L104
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC7, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L105
    call	__stack_chk_fail
L105:
    leave
    ret
    .section	.rodata
LC8:
    .string	"varargs7"
    .text
varargs7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movl	%r9d, -296(%rbp)
    testb	%al, %al
    je	L107
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L107:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$48, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	32(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	-296(%rbp), %eax
    movl	%eax, -220(%rbp)
    movl	16(%rbp), %eax
    movl	%eax, -216(%rbp)
    movl	24(%rbp), %eax
    movl	%eax, -212(%rbp)
    movl	$8, -268(%rbp)
    jmp	L108
L111:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L109
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L110
L109:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L110:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L108:
    cmpl	$10, -268(%rbp)
    jle	L111
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC8, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L112
    call	__stack_chk_fail
L112:
    leave
    ret
    .section	.rodata
LC9:
    .string	"varargs8"
    .text
varargs8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movl	%r9d, -296(%rbp)
    testb	%al, %al
    je	L114
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L114:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$48, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	40(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	-296(%rbp), %eax
    movl	%eax, -220(%rbp)
    movl	16(%rbp), %eax
    movl	%eax, -216(%rbp)
    movl	24(%rbp), %eax
    movl	%eax, -212(%rbp)
    movl	32(%rbp), %eax
    movl	%eax, -208(%rbp)
    movl	$9, -268(%rbp)
    jmp	L115
L118:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L116
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L117
L116:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L117:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L115:
    cmpl	$10, -268(%rbp)
    jle	L118
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC9, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L119
    call	__stack_chk_fail
L119:
    leave
    ret
    .section	.rodata
LC10:
    .string	"varargs9"
    .text
varargs9:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movl	%edx, -284(%rbp)
    movl	%ecx, -288(%rbp)
    movl	%r8d, -292(%rbp)
    movl	%r9d, -296(%rbp)
    testb	%al, %al
    je	L121
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L121:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$48, -264(%rbp)
    movl	$48, -260(%rbp)
    leaq	48(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -248(%rbp)
    movl	-276(%rbp), %eax
    movl	%eax, -240(%rbp)
    movl	-280(%rbp), %eax
    movl	%eax, -236(%rbp)
    movl	-284(%rbp), %eax
    movl	%eax, -232(%rbp)
    movl	-288(%rbp), %eax
    movl	%eax, -228(%rbp)
    movl	-292(%rbp), %eax
    movl	%eax, -224(%rbp)
    movl	-296(%rbp), %eax
    movl	%eax, -220(%rbp)
    movl	16(%rbp), %eax
    movl	%eax, -216(%rbp)
    movl	24(%rbp), %eax
    movl	%eax, -212(%rbp)
    movl	32(%rbp), %eax
    movl	%eax, -208(%rbp)
    movl	40(%rbp), %eax
    movl	%eax, -204(%rbp)
    movl	$10, -268(%rbp)
    jmp	L122
L125:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L123
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L124
L123:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L124:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L122:
    cmpl	$10, -268(%rbp)
    jle	L125
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC10, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L126
    call	__stack_chk_fail
L126:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
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
    call	varargs0
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs1
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs2
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs3
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs4
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs5
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs6
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs7
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs8
    addq	$48, %rsp
    subq	$8, %rsp
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
    call	varargs9
    addq	$48, %rsp
    movl	errors(%rip), %eax
    testl	%eax, %eax
    je	L128
    call	abort
L128:
    movl	$0, %edi
    call	exit
