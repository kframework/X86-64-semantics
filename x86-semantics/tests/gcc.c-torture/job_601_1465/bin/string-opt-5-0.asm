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
    .globl	x
    .data
x:
    .long	6
    .globl	y
y:
    .long	1
    .globl	bar
    .section	.rodata
LC0:
    .string	"hi world"
    .data
bar:
    .quad	LC0
    .comm	buf,64,32
    .section	.rodata
LC1:
    .string	"hello world"
LC2:
    .string	"lo world"
LC3:
    .string	"ello world"
LC4:
    .string	"ello "
LC5:
    .string	"foo"
LC6:
    .string	" oo"
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	" "
LC7:
    .string	"hello"
LC8:
    .string	"hello"
    .string	""
    .string	""
    .string	" "
LC9:
    .string	"!!!"
LC10:
    .string	"!!!--------"
LC11:
    .string	"---"
    .string	""
    .string	""
    .string	""
LC12:
    .string	"-"
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .string	""
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC1, -88(%rbp)
    movq	bar(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$8, %rax
    je	L54
    call	abort
L54:
    movq	bar(%rip), %rax
    movl	x(%rip), %edx
    addl	$1, %edx
    movl	%edx, x(%rip)
    movl	x(%rip), %edx
    movslq	%edx, %rdx
    andl	$2, %edx
    addq	%rdx, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$6, %rax
    je	L55
    call	abort
L55:
    movl	x(%rip), %eax
    cmpl	$7, %eax
    je	L56
    call	abort
L56:
    movl	x(%rip), %eax
    addl	$1, %eax
    movl	%eax, x(%rip)
    movq	-88(%rbp), %rax
    addq	$6, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$5, %rax
    je	L57
    call	abort
L57:
    movl	x(%rip), %eax
    cmpl	$8, %eax
    je	L58
    call	abort
L58:
    movl	x(%rip), %eax
    addl	$1, %eax
    movl	%eax, x(%rip)
    movl	x(%rip), %eax
    cltq
    andl	$1, %eax
    movq	%rax, %rdx
    movq	-88(%rbp), %rax
    addq	%rdx, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$10, %rax
    je	L59
    call	abort
L59:
    movl	x(%rip), %eax
    cmpl	$9, %eax
    je	L60
    call	abort
L60:
    movl	x(%rip), %eax
    subl	$6, %eax
    movl	%eax, x(%rip)
    movl	x(%rip), %eax
    movslq	%eax, %rdx
    movq	-88(%rbp), %rax
    addq	%rdx, %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L61
    call	abort
L61:
    movl	x(%rip), %eax
    cmpl	$3, %eax
    je	L62
    call	abort
L62:
    movq	bar(%rip), %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    js	L63
    call	abort
L63:
    movq	bar(%rip), %rcx
    movl	x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, x(%rip)
    cltq
    andl	$1, %eax
    leaq	(%rcx,%rax), %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    js	L64
    call	abort
L64:
    movl	x(%rip), %eax
    cmpl	$4, %eax
    je	L65
    call	abort
L65:
    movl	x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, x(%rip)
    cltq
    andl	$7, %eax
    movq	%rax, %rdx
    movq	-88(%rbp), %rax
    addq	%rdx, %rax
    movl	$108, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-88(%rbp), %rax
    addq	$9, %rax
    cmpq	%rax, %rdx
    je	L66
    call	abort
L66:
    movl	x(%rip), %eax
    cmpl	$5, %eax
    je	L67
    call	abort
L67:
    movq	bar(%rip), %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	bar(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L68
    call	abort
L68:
    movq	bar(%rip), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	bar(%rip), %rax
    addq	$8, %rax
    cmpq	%rax, %rdx
    je	L69
    call	abort
L69:
    movq	bar(%rip), %rax
    movl	$120, %esi
    movq	%rax, %rdi
    call	strrchr
    testq	%rax, %rax
    je	L70
    call	abort
L70:
    movq	bar(%rip), %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strrchr
    movq	%rax, %rdx
    movq	bar(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L71
    call	abort
L71:
    movl	y(%rip), %eax
    subl	$1, %eax
    movl	%eax, y(%rip)
    movl	y(%rip), %eax
    cltq
    andl	$1, %eax
    leaq	LC3(%rax), %rcx
    movl	x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, x(%rip)
    cltq
    andl	$1, %eax
    movq	%rax, %rdx
    movq	-88(%rbp), %rax
    addq	%rdx, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L72
    call	abort
L72:
    movl	x(%rip), %eax
    cmpl	$6, %eax
    jne	L73
    movl	y(%rip), %eax
    testl	%eax, %eax
    je	L74
L73:
    call	abort
L74:
    movb	$32, -75(%rbp)
    movb	$0, -74(%rbp)
    movl	$5, x(%rip)
    movl	$1, y(%rip)
    movl	x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, x(%rip)
    cltq
    andl	$3, %eax
    movq	%rax, %rdx
    movq	-88(%rbp), %rax
    leaq	(%rdx,%rax), %rcx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L75
    movl	x(%rip), %eax
    cmpl	$6, %eax
    jne	L75
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L76
L75:
    call	abort
L76:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$32, %esi
    movq	%rax, %rdi
    call	memset
    movl	y(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, y(%rip)
    cltq
    andl	$3, %eax
    leaq	LC5(%rax), %rcx
    movl	x(%rip), %eax
    addl	$1, %eax
    movl	%eax, x(%rip)
    movl	x(%rip), %eax
    cltq
    andl	$1, %eax
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movl	$10, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L77
    movl	x(%rip), %eax
    cmpl	$7, %eax
    jne	L77
    movl	y(%rip), %eax
    cmpl	$2, %eax
    jne	L77
    leaq	-80(%rbp), %rax
    movl	$12, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L78
L77:
    call	abort
L78:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$32, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rax
    movl	$8, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L79
    leaq	-80(%rbp), %rax
    movl	$9, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L80
L79:
    call	abort
L80:
    movl	$33, x(%rip)
    movl	$64, %edx
    movl	$32, %esi
    movl	$buf, %edi
    call	memset
    movl	y(%rip), %eax
    addl	$1, %eax
    movl	%eax, y(%rip)
    movl	y(%rip), %eax
    movslq	%eax, %rdx
    movl	x(%rip), %eax
    leal	1(%rax), %ecx
    movl	%ecx, x(%rip)
    movl	%eax, %esi
    movl	$buf, %edi
    call	memset
    cmpq	$buf, %rax
    jne	L81
    movl	x(%rip), %eax
    cmpl	$34, %eax
    jne	L81
    movl	y(%rip), %eax
    cmpl	$3, %eax
    jne	L81
    movl	$3, %edx
    movl	$LC9, %esi
    movl	$buf, %edi
    call	memcmp
    testl	%eax, %eax
    je	L82
L81:
    call	abort
L82:
    movl	y(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, y(%rip)
    cltq
    addq	$buf, %rax
    movl	$8, %edx
    movl	$45, %esi
    movq	%rax, %rdi
    call	memset
    movl	$buf + 3, %edx
    cmpq	%rdx, %rax
    jne	L83
    movl	y(%rip), %eax
    cmpl	$4, %eax
    jne	L83
    movl	$11, %edx
    movl	$LC10, %esi
    movl	$buf, %edi
    call	memcmp
    testl	%eax, %eax
    je	L84
L83:
    call	abort
L84:
    movl	$10, x(%rip)
    movl	y(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, y(%rip)
    cltq
    movl	x(%rip), %edx
    addl	$1, %edx
    movl	%edx, x(%rip)
    movl	x(%rip), %edx
    movslq	%edx, %rdx
    leaq	buf(%rdx), %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movl	$buf + 11, %edx
    cmpq	%rdx, %rax
    jne	L85
    movl	x(%rip), %eax
    cmpl	$11, %eax
    jne	L85
    movl	y(%rip), %eax
    cmpl	$5, %eax
    jne	L85
    movl	$buf + 8, %eax
    movl	$7, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L86
L85:
    call	abort
L86:
    movl	x(%rip), %eax
    addl	$4, %eax
    movl	%eax, x(%rip)
    movl	x(%rip), %eax
    cltq
    addq	$buf, %rax
    movl	$6, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movl	$buf + 15, %edx
    cmpq	%rdx, %rax
    jne	L87
    movl	x(%rip), %eax
    cmpl	$15, %eax
    jne	L87
    movl	$buf + 10, %eax
    movl	$11, %edx
    movl	$LC12, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L88
L87:
    call	abort
L88:
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L90
    call	__stack_chk_fail
L90:
    leave
    ret
