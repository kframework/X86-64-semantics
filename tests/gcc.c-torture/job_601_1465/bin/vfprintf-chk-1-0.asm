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
    .comm	should_optimize,4,4
    .globl	__vfprintf_chk
__vfprintf_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    movl	$1, should_optimize(%rip)
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	vfprintf
    leave
    ret
    .section	.rodata
LC0:
    .string	"hello"
LC1:
    .string	"hello\n"
LC2:
    .string	"a"
LC3:
    .string	""
LC4:
    .string	"%s"
LC5:
    .string	"%c"
LC6:
    .string	"%s\n"
LC7:
    .string	"%d\n"
    .text
    .globl	inner
inner:
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
    je	L56
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L56:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -232(%rbp)
    movl	$48, -228(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -224(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$10, -244(%rbp)
    ja	L57
    movl	-244(%rbp), %eax
    movq	L59(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L59:
    .quad	L58
    .quad	L60
    .quad	L61
    .quad	L62
    .quad	L63
    .quad	L64
    .quad	L65
    .quad	L66
    .quad	L67
    .quad	L68
    .quad	L69
    .text
L58:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$5, %edx
    movl	$1, %esi
    movl	$LC0, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L70
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L70:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC0, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$5, %eax
    je	L71
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L71:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L105
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L105
L60:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L74
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L74:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC1, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$6, %eax
    je	L75
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L75:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L106
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L106
L61:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rsi
    movl	$97, %edi
    call	fputc
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L77
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L77:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC2, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$1, %eax
    je	L78
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L78:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L107
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L107
L62:
    movl	$1, should_optimize(%rip)
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L80
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L80:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC3, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    testl	%eax, %eax
    je	L81
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L81:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L108
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L108
L63:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L83
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L83:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$5, %eax
    je	L84
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L84:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L109
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L109
L64:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L86
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L86:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$6, %eax
    je	L87
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L87:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L110
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L110
L65:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L89
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L89:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$1, %eax
    je	L90
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L90:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L111
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L111
L66:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L92
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L92:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    testl	%eax, %eax
    je	L93
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L93:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L112
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L112
L67:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC5, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L95
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L95:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC5, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$1, %eax
    je	L96
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L96:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L113
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L113
L68:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC6, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L98
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L98:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC6, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$7, %eax
    je	L99
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L99:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L114
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L114
L69:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-232(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC7, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L101
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L101:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    leaq	-208(%rbp), %rdx
    movq	%rdx, %rcx
    movl	$LC7, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    call	__vfprintf_chk
    cmpl	$2, %eax
    je	L102
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
L102:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L115
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L115
L57:
    leaq	-233(%rbp), %rax
    movq	%rax, %r10
    call	abort3480
    jmp	L73
L105:
    nop
    jmp	L73
L106:
    nop
    jmp	L73
L107:
    nop
    jmp	L73
L108:
    nop
    jmp	L73
L109:
    nop
    jmp	L73
L110:
    nop
    jmp	L73
L111:
    nop
    jmp	L73
L112:
    nop
    jmp	L73
L113:
    nop
    jmp	L73
L114:
    nop
    jmp	L73
L115:
    nop
L73:
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L104
    call	__stack_chk_fail
L104:
    leave
    ret
abort3480:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%r10, -8(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, %edi
    movl	$0, %eax
    call	inner
    movl	$1, %edi
    movl	$0, %eax
    call	inner
    movl	$2, %edi
    movl	$0, %eax
    call	inner
    movl	$3, %edi
    movl	$0, %eax
    call	inner
    movl	$LC0, %esi
    movl	$4, %edi
    movl	$0, %eax
    call	inner
    movl	$LC1, %esi
    movl	$5, %edi
    movl	$0, %eax
    call	inner
    movl	$LC2, %esi
    movl	$6, %edi
    movl	$0, %eax
    call	inner
    movl	$LC3, %esi
    movl	$7, %edi
    movl	$0, %eax
    call	inner
    movl	$120, %esi
    movl	$8, %edi
    movl	$0, %eax
    call	inner
    movl	$LC1, %esi
    movl	$9, %edi
    movl	$0, %eax
    call	inner
    movl	$0, %esi
    movl	$10, %edi
    movl	$0, %eax
    call	inner
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L119
    call	__stack_chk_fail
L119:
    leave
    ret
