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
    .comm	a,20,16
    .comm	b,4,4
    .comm	c,8,8
    .comm	d,4,4
    .comm	e,8,8
    .comm	t,4112,32
    .comm	f,128,32
    .globl	g
    .section	.rodata
LC0:
    .string	"a"
LC1:
    .string	"-u"
LC2:
    .string	"b"
LC3:
    .string	"c"
    .data
g:
    .quad	LC0
    .quad	LC1
    .quad	LC2
    .quad	LC3
    .text
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
L58:
    jmp	L58
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movl	$0, %eax
    popq	%rbp
    ret
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    cmpl	$4096, -12(%rbp)
    jbe	L62
    call	foo
L62:
    movl	-12(%rbp), %edx
    movq	-8(%rbp), %rax
    movl	%edx, %esi
    movq	%rax, %rdi
    call	bar
    leave
    ret
setup1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -20(%rbp)
    movl	$4096, %esi
    movl	$t + 8, %edi
    call	baz
    testq	%rax, %rax
    jne	L65
    movl	$4096, %esi
    movl	$t + 8, %edi
    call	baz
L65:
    movl	-20(%rbp), %eax
    andl	$512, %eax
    testl	%eax, %eax
    je	L66
    movq	e(%rip), %rax
    movq	%rax, -8(%rbp)
    movl	d(%rip), %eax
    addl	$1, %eax
    movl	%eax, d(%rip)
    movq	$f, e(%rip)
    movq	t(%rip), %rax
    testq	%rax, %rax
    je	L67
    movq	t(%rip), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L67
    movq	e(%rip), %rax
    movq	t(%rip), %rdx
    movq	%rdx, (%rax)
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	%rax, -16(%rbp)
    jmp	L68
L67:
    call	abort
L69:
    addq	$8, -8(%rbp)
    addq	$8, -16(%rbp)
L68:
    movq	-8(%rbp), %rax
    movq	(%rax), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-16(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L69
L66:
    movl	$1, %eax
    leave
    ret
setup2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$1, -4(%rbp)
    movq	c(%rip), %rax
    addq	$8, %rax
    movq	%rax, e(%rip)
    movl	b(%rip), %eax
    subl	$1, %eax
    movl	%eax, d(%rip)
    jmp	L72
L82:
    movq	e(%rip), %rax
    movq	(%rax), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L73
    movq	e(%rip), %rax
    movq	(%rax), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L73
    call	abort
L73:
    movq	e(%rip), %rax
    movq	(%rax), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	$80, %eax
    je	L75
    cmpl	$117, %eax
    je	L76
    cmpl	$45, %eax
    je	L77
    jmp	L74
L76:
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L78
    call	abort
L78:
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	%rax, t + 4104(%rip)
    movl	d(%rip), %eax
    subl	$1, %eax
    movl	%eax, d(%rip)
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	%rax, e(%rip)
    jmp	L74
L75:
    orl	$4096, -4(%rbp)
    jmp	L74
L77:
    movl	d(%rip), %eax
    subl	$1, %eax
    movl	%eax, d(%rip)
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	%rax, e(%rip)
    cmpl	$1, -4(%rbp)
    jne	L79
    orl	$1536, -4(%rbp)
L79:
    movl	-4(%rbp), %eax
    jmp	L80
L74:
    movl	d(%rip), %eax
    subl	$1, %eax
    movl	%eax, d(%rip)
    movq	e(%rip), %rax
    addq	$8, %rax
    movq	%rax, e(%rip)
L72:
    movl	d(%rip), %eax
    testl	%eax, %eax
    jle	L81
    movq	e(%rip), %rax
    movq	(%rax), %rax
    movzbl	(%rax), %eax
    cmpb	$45, %al
    je	L82
L81:
    movl	d(%rip), %eax
    testl	%eax, %eax
    jle	L83
    movl	-4(%rbp), %eax
    andl	$1, %eax
    testl	%eax, %eax
    jne	L83
    call	abort
L83:
    movl	-4(%rbp), %eax
L80:
    leave
    ret
    .section	.rodata
LC4:
    .string	"/bin/sh"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$g, c(%rip)
    movl	$4, b(%rip)
    call	setup2
    movl	%eax, -4(%rbp)
    movq	$LC4, t(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	setup1
    movl	-4(%rbp), %eax
    andl	$1024, %eax
    testl	%eax, %eax
    je	L85
    movl	a + 16(%rip), %eax
    testl	%eax, %eax
    jne	L85
    call	abort
L85:
    movl	$0, %edi
    call	exit
