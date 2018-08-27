    .file	"strncat-chk.c"
    .comm	chk_fail_allowed,4,4
    .comm	chk_calls,4,4
    .comm	memcpy_disallowed,4,4
    .comm	mempcpy_disallowed,4,4
    .comm	memmove_disallowed,4,4
    .comm	memset_disallowed,4,4
    .comm	strcpy_disallowed,4,4
    .comm	stpcpy_disallowed,4,4
    .comm	strncpy_disallowed,4,4
    .comm	stpncpy_disallowed,4,4
    .comm	strcat_disallowed,4,4
    .comm	strncat_disallowed,4,4
    .comm	sprintf_disallowed,4,4
    .comm	vsprintf_disallowed,4,4
    .comm	snprintf_disallowed,4,4
    .comm	vsnprintf_disallowed,4,4
    .text
    .globl	__chk_fail
__chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L3
L4:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L3:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L4
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	__memcpy_chk
__memcpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L7
    call	abort
L7:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L8
    call	__chk_fail
L8:
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leave
    ret
    .globl	mempcpy
mempcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L11
L12:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L11:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L12
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__mempcpy_chk
__mempcpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L15
    call	abort
L15:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L16
    call	__chk_fail
L16:
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	mempcpy
    leave
    ret
    .globl	memmove
memmove:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    cmpq	-8(%rbp), %rax
    jnb	L23
    jmp	L20
L21:
    movq	-8(%rbp), %rdx
    movq	-40(%rbp), %rax
    addq	%rax, %rdx
    movq	-16(%rbp), %rcx
    movq	-40(%rbp), %rax
    addq	%rcx, %rax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L21
    jmp	L22
L24:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L23:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L24
L22:
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	__memmove_chk
__memmove_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L27
    call	abort
L27:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L28
    call	__chk_fail
L28:
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memmove
    leave
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L31
L32:
    movq	-8(%rbp), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    movl	-12(%rbp), %edx
    movb	%dl, (%rax)
L31:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L32
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__memset_chk
__memset_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L35
    call	abort
L35:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L36
    call	__chk_fail
L36:
    movq	-24(%rbp), %rdx
    movl	-12(%rbp), %ecx
    movq	-8(%rbp), %rax
    movl	%ecx, %esi
    movq	%rax, %rdi
    call	memset
    leave
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
L39:
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
    jne	L39
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__strcpy_chk
__strcpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    cmpq	$-1, -24(%rbp)
    jne	L42
    call	abort
L42:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	-24(%rbp), %rax
    jb	L43
    call	__chk_fail
L43:
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leave
    ret
    .globl	stpcpy
stpcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L46
L47:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L46:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L47
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__stpcpy_chk
__stpcpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    cmpq	$-1, -24(%rbp)
    jne	L50
    call	abort
L50:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	-24(%rbp), %rax
    jb	L51
    call	__chk_fail
L51:
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	stpcpy
    leave
    ret
    .globl	stpncpy
stpncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    jmp	L54
L56:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    subq	$1, -40(%rbp)
L54:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L55
    cmpq	$0, -40(%rbp)
    jne	L56
L55:
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L57
L58:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L57:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L58
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__stpncpy_chk
__stpncpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L61
    call	abort
L61:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L62
    call	__chk_fail
L62:
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    leave
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
    jmp	L65
L67:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    subq	$1, -40(%rbp)
L65:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L68
    cmpq	$0, -40(%rbp)
    jne	L67
    jmp	L68
L69:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L68:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L69
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	__strncpy_chk
__strncpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	%rcx, -32(%rbp)
    cmpq	$-1, -32(%rbp)
    jne	L72
    call	abort
L72:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L73
    call	__chk_fail
L73:
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    leave
    ret
    .globl	strcat
strcat:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L76
L77:
    addq	$1, -8(%rbp)
L76:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L77
    nop
L78:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L78
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	__strcat_chk
__strcat_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    cmpq	$-1, -40(%rbp)
    jne	L81
    call	abort
L81:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    movq	%rax, %rbx
    movq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    addq	%rbx, %rax
    cmpq	-40(%rbp), %rax
    jb	L82
    call	__chk_fail
L82:
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	strncat
strncat:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L85
L86:
    addq	$1, -24(%rbp)
L85:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L86
    movb	$0, -9(%rbp)
    jmp	L87
L90:
    movq	-32(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -32(%rbp)
    movzbl	(%rax), %eax
    movb	%al, -9(%rbp)
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	-9(%rbp), %edx
    movb	%dl, (%rax)
    cmpb	$0, -9(%rbp)
    jne	L88
    movq	-8(%rbp), %rax
    jmp	L89
L88:
    subq	$1, -40(%rbp)
L87:
    cmpq	$0, -40(%rbp)
    jne	L90
    cmpb	$0, -9(%rbp)
    je	L91
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
L91:
    movq	-8(%rbp), %rax
L89:
    popq	%rbp
    ret
    .globl	__strncat_chk
__strncat_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	%rcx, -64(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    movq	%rax, -24(%rbp)
    movq	-56(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -8(%rbp)
    cmpq	$-1, -64(%rbp)
    jne	L93
    call	abort
L93:
    movl $chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, $chk_calls(%rip)
    jmp	L94
L97:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L100
    addq	$1, -24(%rbp)
    subq	$1, -16(%rbp)
L94:
    movq	-24(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jnb	L96
    cmpq	$0, -16(%rbp)
    jne	L97
    jmp	L96
L100:
    nop
L96:
    movq	-24(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L98
    call	__chk_fail
L98:
    movq	-56(%rbp), %rdx
    movq	-48(%rbp), %rcx
    movq	-40(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    leave
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, $inside_main(%rip)
    call	main_test
    movl	$0, $inside_main(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	link_error
link_error:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .globl	s1
    .section	.rodata
s1:
    .string	"123"
    .globl	p
    .bss
p:
    .zero	32
    .globl	s2
    .section	.rodata
LC0:
    .string	"defg"
    .data
s2:
    .quad	LC0
    .globl	s3
    .section	.rodata
LC1:
    .string	"FGH"
    .data
s3:
    .quad	LC1
    .comm	s4,8,8
    .globl	l1
l1:
    .quad	1
    .comm	s5,8,8
    .globl	x
x:
    .long	123
    .section	.rodata
LC2:
    .string	"hello world"
LC3:
    .string	""
LC4:
    .string	"foo"
LC5:
    .string	"hello worldfoo"
LC6:
    .string	"hello worldhello world"
LC7:
    .string	"hello world world"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC2, -112(%rbp)
    movq	$LC3, -104(%rbp)
    movl	$0, $chk_calls(%rip)
    movl	$1, $strncat_disallowed(%rip)
    movl	$1, $strcat_disallowed(%rip)
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L105
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L106
L105:
    call	abort
L106:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	-104(%rbp), %rsi
    leaq	-80(%rbp), %rax
    movl	$64, %ecx
    movl	$100, %edx
    movq	%rax, %rdi
    call	__strncat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L107
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L108
L107:
    call	abort
L108:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    addq	$1, -96(%rbp)
    movq	-104(%rbp), %rcx
    movq	-96(%rbp), %rax
    movl	$100, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L109
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L109
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L110
L109:
    call	abort
L110:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rcx
    movq	-104(%rbp), %rax
    movl	$100, %edx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L111
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L111
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L112
L111:
    call	abort
L112:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-112(%rbp), %rax
    leaq	11(%rax), %rcx
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    addq	$5, %rax
    movl	$100, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L113
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L113
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L114
L113:
    call	abort
L114:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L115
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L115
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L116
L115:
    call	abort
L116:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-112(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L117
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L117
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L117
    movq	-112(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L118
L117:
    call	abort
L118:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movl $x(%rip), %eax
    addl	$1, %eax
    movl	%eax, $x(%rip)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L119
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L119
    movl $x(%rip), %eax
    cmpl	$124, %eax
    jne	L119
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L120
L119:
    call	abort
L120:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L121
    call	abort
L121:
    movl	$0, $strcat_disallowed(%rip)
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L122
    leaq	-80(%rbp), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L123
L122:
    call	abort
L123:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L124
    leaq	-80(%rbp), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L125
L124:
    call	abort
L125:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	-112(%rbp), %rsi
    leaq	-80(%rbp), %rax
    movl	$64, %ecx
    movl	$100, %edx
    movq	%rax, %rdi
    call	__strncat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L126
    leaq	-80(%rbp), %rax
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L127
L126:
    call	abort
L127:
    movl $chk_calls(%rip), %eax
    cmpl	$3, %eax
    je	L128
    call	abort
L128:
    movl	$0, $chk_calls(%rip)
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    addq	$1, -96(%rbp)
    movq	-112(%rbp), %rcx
    movq	-96(%rbp), %rax
    movl	$100, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L129
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L129
    leaq	-80(%rbp), %rax
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L130
L129:
    call	abort
L130:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rcx
    movq	-112(%rbp), %rax
    movl	$100, %edx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L131
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L131
    leaq	-80(%rbp), %rax
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L132
L131:
    call	abort
L132:
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-112(%rbp), %rax
    leaq	5(%rax), %rcx
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    addq	$5, %rax
    movl	$100, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L133
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L133
    leaq	-80(%rbp), %rax
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L134
L133:
    call	abort
L134:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L135
    call	abort
L135:
    movl	$0, $chk_calls(%rip)
    movl	$1, $strcat_disallowed(%rip)
    movq	-112(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L136
    movq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L137
L136:
    call	abort
L137:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L138
    call	abort
L138:
    movl	$0, $strncat_disallowed(%rip)
    movl	$0, $strcat_disallowed(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L139
    call	__stack_chk_fail
L139:
    leave
    ret
    .section	.rodata
LC8:
    .string	"a"
    .text
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L141
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L142
L141:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L142:
    movq	%rax, -72(%rbp)
    leaq	-64(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    leaq	-64(%rbp), %rax
    movq	%rax, $s5(%rip)
    movq $s5(%rip), %rax
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	-1(%rax), %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rax, %rdi
    call	__strncat_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq $s3(%rip), %rax
    leaq	2(%rax), %rsi
    movq	-72(%rbp), %rax
    movq	%rax, %rdi
    call	__strncat_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L143
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %edi
    movl	$0, %edx
    divq	%rdi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    jmp	L144
L143:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L144:
    movq	%rax, -72(%rbp)
    movq	$-1, %rdx
    movq	-72(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	-72(%rbp), %rax
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq $s2(%rip), %rax
    leaq	2(%rax), %rsi
    movq	-72(%rbp), %rax
    movq	%rax, %rdi
    call	__strncat_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	-1(%rax), %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rsi
    movq	-72(%rbp), %rax
    addq	$2, %rax
    movq	%rax, %rdi
    call	__strncat_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -72(%rbp)
    movl	$0, -76(%rbp)
    jmp	L145
L150:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L146
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -72(%rbp)
    jmp	L147
L146:
    movl	-76(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L148
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -72(%rbp)
    jmp	L147
L148:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L149
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -72(%rbp)
    jmp	L147
L149:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L147
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -72(%rbp)
L147:
    addl	$1, -76(%rbp)
L145:
    cmpl	$3, -76(%rbp)
    jle	L150
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq $s2(%rip), %rax
    leaq	4(%rax), %rsi
    movq	-72(%rbp), %rax
    movq	%rax, %rdi
    call	__strncat_chk
    movl $chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L151
    call	abort
L151:
    leaq	-64(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    movl	$0, $chk_calls(%rip)
    leaq	-64(%rbp), %rax
    movq	%rax, $s5(%rip)
    movq $s5(%rip), %rax
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$5, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	__strncat_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L152
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %edi
    movl	$0, %edx
    divq	%rdi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    jmp	L153
L152:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L153:
    movq	%rax, -72(%rbp)
    movq	$-1, %rdx
    movq	-72(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	-72(%rbp), %rax
    movq	$-1, %rdx
    movl	$s1 + 1, %esi
    movq	-72(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__strncat_chk
    movl $chk_calls(%rip), %eax
    cmpl	$2, %eax
    je	L154
    call	abort
L154:
    movl	$0, $chk_calls(%rip)
    movl	$1, $strcat_disallowed(%rip)
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq $s3(%rip), %rsi
    movq $s4(%rip), %rax
    movq	%rax, %rdi
    call	__strncat_chk
    movl	$0, $strcat_disallowed(%rip)
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L157
    call	abort
L157:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L156
    call	__stack_chk_fail
L156:
    leave
    ret
    .section	.rodata
LC9:
    .string	"abcde"
    .text
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r15
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$88, %rsp
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    leaq	-112(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    leaq	-80(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    leaq	-112(%rbp), %rax
    movq	%rax, $s5(%rip)
    movq $s5(%rip), %rax
    leaq	-80(%rbp), %rax
    movq	%rax, $s5(%rip)
    movq $s5(%rip), %rax
    movl	$1, $chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L159, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L160
L159:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L160:
    testl	%eax, %eax
    jne	L161
    movq $s2(%rip), %rax
    leaq	3(%rax), %rsi
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$4, %edx
    movq	%rax, %rdi
    call	__strncat_chk
    call	abort
L161:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L162, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L163
L162:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L163:
    testl	%eax, %eax
    jne	L164
    movq $s3(%rip), %rax
    movq	%rax, -120(%rbp)
    movq $s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    subq	$3, %rax
    movq	-120(%rbp), %rsi
    addq	%rax, %rsi
    leaq	-112(%rbp), %rax
    addq	$17, %rax
    movl	$3, %ecx
    movl	$3, %edx
    movq	%rax, %rdi
    call	__strncat_chk
    call	abort
L164:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	$L165, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L166
L165:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L166:
    testl	%eax, %eax
    jne	L167
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$1, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__strncat_chk
    call	abort
L167:
    movl	$0, $chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L168
    call	__stack_chk_fail
L168:
    addq	$88, %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%r15
    popq	%rbp
    ret
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
