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
    .comm	should_optimize,4,4
    .globl	__fprintf_chk
__fprintf_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movq	%rdi, -232(%rbp)
    movl	%esi, -236(%rbp)
    movq	%rdx, -248(%rbp)
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
    movl	$1, should_optimize(%rip)
    movl	$24, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    leaq	-208(%rbp), %rdx
    movq	-248(%rbp), %rcx
    movq	-232(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	vfprintf
    movl	%eax, -212(%rbp)
    movl	-212(%rbp), %eax
    movq	-184(%rbp), %rsi
    xorq	$40, %rsi
    je	L60
    call	__stack_chk_fail
L60:
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
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$5, %edx
    movl	$1, %esi
    movl	$LC0, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L62
    call	abort
L62:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC0, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$5, %eax
    je	L63
    call	abort
L63:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L64
    call	abort
L64:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L65
    call	abort
L65:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC1, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$6, %eax
    je	L66
    call	abort
L66:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L67
    call	abort
L67:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rsi
    movl	$97, %edi
    call	fputc
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L68
    call	abort
L68:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC2, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$1, %eax
    je	L69
    call	abort
L69:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L70
    call	abort
L70:
    movl	$1, should_optimize(%rip)
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L71
    call	abort
L71:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC3, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    testl	%eax, %eax
    je	L72
    call	abort
L72:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L73
    call	abort
L73:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$5, %edx
    movl	$1, %esi
    movl	$LC0, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L74
    call	abort
L74:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC0, %ecx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$5, %eax
    je	L75
    call	abort
L75:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L76
    call	abort
L76:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L77
    call	abort
L77:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC1, %ecx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$6, %eax
    je	L78
    call	abort
L78:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L79
    call	abort
L79:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rsi
    movl	$97, %edi
    call	fputc
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L80
    call	abort
L80:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC2, %ecx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$1, %eax
    je	L81
    call	abort
L81:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L82
    call	abort
L82:
    movl	$1, should_optimize(%rip)
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L83
    call	abort
L83:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC3, %ecx
    movl	$LC4, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    testl	%eax, %eax
    je	L84
    call	abort
L84:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L85
    call	abort
L85:
    movl	$1, should_optimize(%rip)
    movq	$stdout, %rax
    movq	%rax, %rsi
    movl	$120, %edi
    call	fputc
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L86
    call	abort
L86:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$120, %ecx
    movl	$LC5, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$1, %eax
    je	L87
    call	abort
L87:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L88
    call	abort
L88:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC1, %ecx
    movl	$LC6, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L89
    call	abort
L89:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$LC1, %ecx
    movl	$LC6, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$7, %eax
    je	L90
    call	abort
L90:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L91
    call	abort
L91:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$0, %ecx
    movl	$LC7, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L92
    call	abort
L92:
    movl	$0, should_optimize(%rip)
    movq	$stdout, %rax
    movl	$0, %ecx
    movl	$LC7, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	__fprintf_chk
    cmpl	$2, %eax
    je	L93
    call	abort
L93:
    movl	should_optimize(%rip), %eax
    testl	%eax, %eax
    jne	L94
    call	abort
L94:
    movl	$0, %eax
    popq	%rbp
    ret
