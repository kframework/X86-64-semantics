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
    jmp	L58
L60:
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %eax
    cmpl	-4(%rbp), %eax
    je	L59
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
L59:
    addl	$1, -4(%rbp)
L58:
    cmpl	$10, -4(%rbp)
    jle	L60
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
    je	L62
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L62:
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
    jmp	L63
L66:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L64
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L65
L64:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L65:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L63:
    cmpl	$10, -268(%rbp)
    jle	L66
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC1, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L67
    call	__stack_chk_fail
L67:
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
    je	L69
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L69:
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
    jmp	L70
L73:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L71
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L72
L71:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L72:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L70:
    cmpl	$10, -268(%rbp)
    jle	L73
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC2, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L74
    call	__stack_chk_fail
L74:
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
    je	L76
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L76:
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
    jmp	L77
L80:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L78
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L79
L78:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L79:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L77:
    cmpl	$10, -268(%rbp)
    jle	L80
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC3, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L81
    call	__stack_chk_fail
L81:
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
    jmp	L84
L87:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L85
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L86
L85:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L86:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L84:
    cmpl	$10, -268(%rbp)
    jle	L87
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC4, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L88
    call	__stack_chk_fail
L88:
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
    je	L90
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L90:
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
    jmp	L91
L94:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L92
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L93
L92:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L93:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L91:
    cmpl	$10, -268(%rbp)
    jle	L94
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC5, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L95
    call	__stack_chk_fail
L95:
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
    jmp	L98
L101:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L99
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L100
L99:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L100:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L98:
    cmpl	$10, -268(%rbp)
    jle	L101
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC6, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L102
    call	__stack_chk_fail
L102:
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
    jmp	L105
L108:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L106
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L107
L106:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L107:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L105:
    cmpl	$10, -268(%rbp)
    jle	L108
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC7, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L109
    call	__stack_chk_fail
L109:
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
    jmp	L112
L115:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L113
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L114
L113:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L114:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L112:
    cmpl	$10, -268(%rbp)
    jle	L115
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC8, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L116
    call	__stack_chk_fail
L116:
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
    je	L118
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L118:
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
    jmp	L119
L122:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L120
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L121
L120:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L121:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L119:
    cmpl	$10, -268(%rbp)
    jle	L122
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC9, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L123
    call	__stack_chk_fail
L123:
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
    je	L125
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L125:
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
    jmp	L126
L129:
    movl	-264(%rbp), %eax
    cmpl	$48, %eax
    jnb	L127
    movq	-248(%rbp), %rax
    movl	-264(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-264(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -264(%rbp)
    jmp	L128
L127:
    movq	-256(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -256(%rbp)
L128:
    movl	(%rax), %edx
    movl	-268(%rbp), %eax
    cltq
    movl	%edx, -240(%rbp,%rax,4)
    addl	$1, -268(%rbp)
L126:
    cmpl	$10, -268(%rbp)
    jle	L129
    leaq	-240(%rbp), %rax
    movq	%rax, %rsi
    movl	$LC10, %edi
    call	verify
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L130
    call	__stack_chk_fail
L130:
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
    je	L132
    call	abort
L132:
    movl	$0, %edi
    call	exit
