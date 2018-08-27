    .file	"strcpy-chk.c"
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
    .section	.rodata
LC2:
    .string	"abcde"
LC3:
    .string	"vwxyz"
LC4:
    .string	"wxyz"
LC5:
    .string	""
LC6:
    .string	"a"
    .string	"cde"
LC7:
    .string	"fghij"
LC8:
    .string	"a"
    .string	"cfghij"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, $chk_calls(%rip)
    movl	$1, $strcpy_disallowed(%rip)
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L105
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L106
L105:
    call	abort
L106:
    movq	$-1, %rdx
    movl	$LC3 + 1, %ecx
    movl	$p + 16, %eax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movl	$p + 16, %edx
    cmpq	%rdx, %rax
    jne	L107
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L108
L107:
    call	abort
L108:
    movq	$-1, %rdx
    movl	$p + 1, %eax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
    jne	L109
    movl	$6, %edx
    movl	$LC6, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L110
L109:
    call	abort
L110:
    movq	$-1, %rdx
    movl	$p + 3, %eax
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    movl	$p + 3, %edx
    cmpq	%rdx, %rax
    jne	L111
    movl	$9, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L112
L111:
    call	abort
L112:
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L113
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L114
L113:
    call	abort
L114:
    movl	$0, $strcpy_disallowed(%rip)
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L116
    call	abort
L116:
    nop
    popq	%rbp
    ret
    .comm	u1,104,32
    .comm	u2,104,32
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	$0, -32(%rbp)
    jmp	L118
L138:
    movl	$0, -28(%rbp)
    jmp	L119
L137:
    movl	$1, -24(%rbp)
    jmp	L120
L136:
    movl	$0, -20(%rbp)
    movb	$65, -33(%rbp)
    jmp	L121
L123:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, $u1(%rax)
    cmpb	$95, -33(%rbp)
    jle	L122
    movb	$65, -33(%rbp)
L122:
    movl	-20(%rbp), %eax
    cltq
    movzbl	-33(%rbp), %edx
    movb	%dl, $u2(%rax)
    addl	$1, -20(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L121:
    movl	-20(%rbp), %eax
    cmpl	$96, %eax
    jbe	L123
    movl	-28(%rbp), %edx
    movl	-24(%rbp), %eax
    addl	%edx, %eax
    cltq
    movb	$0, $u2(%rax)
    movq	$-1, %rdx
    movl	-28(%rbp), %eax
    cltq
    leaq	u2(%rax), %rcx
    movl	-32(%rbp), %eax
    cltq
    addq	$u1, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	%rax, -8(%rbp)
    movl	-32(%rbp), %eax
    cltq
    addq	$u1, %rax
    cmpq	-8(%rbp), %rax
    je	L124
    call	abort
L124:
    movq	$u1, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L125
L127:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L126
    call	abort
L126:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L125:
    movl	-20(%rbp), %eax
    cmpl	-32(%rbp), %eax
    jl	L127
    movl	$0, -20(%rbp)
    movl	-28(%rbp), %eax
    addl	$65, %eax
    movb	%al, -33(%rbp)
    jmp	L128
L131:
    cmpb	$95, -33(%rbp)
    jle	L129
    movb	$65, -33(%rbp)
L129:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	-33(%rbp), %al
    je	L130
    call	abort
L130:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L128:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L131
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L132
    call	abort
L132:
    movl	$0, -20(%rbp)
    jmp	L133
L135:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L134
    call	abort
L134:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L133:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L135
    addl	$1, -24(%rbp)
L120:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L136
    addl	$1, -28(%rbp)
L119:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L137
    addl	$1, -32(%rbp)
L118:
    movl	-32(%rbp), %eax
    cmpl	$7, %eax
    jbe	L138
    nop
    leave
    ret
    .section	.rodata
LC9:
    .string	"a"
LC10:
    .string	"abc"
LC11:
    .string	"e"
LC12:
    .string	"gh"
LC13:
    .string	"jkl"
    .text
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L140
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L141
L140:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L141:
    movq	%rax, -80(%rbp)
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L142
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    jmp	L143
L142:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L143:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movq $s2(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rcx
    movq	-80(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L144
L149:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L145
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L146
L145:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L147
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L146
L147:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L148
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L146
L148:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L146
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L146:
    addl	$1, -84(%rbp)
L144:
    cmpl	$3, -84(%rbp)
    jle	L149
    movq	$-1, %rdx
    movq $s2(%rip), %rax
    leaq	4(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movl $chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L150
    call	abort
L150:
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L151
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
    jmp	L152
L151:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L152:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movl	$s1 + 1, %ecx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	$LC10, -72(%rbp)
    movl	$0, -84(%rbp)
    jmp	L153
L158:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L154
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$LC11, -72(%rbp)
    jmp	L155
L154:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L156
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$LC12, -72(%rbp)
    jmp	L155
L156:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L157
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$LC13, -72(%rbp)
    jmp	L155
L157:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L155
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$LC5, -72(%rbp)
L155:
    addl	$1, -84(%rbp)
L153:
    cmpl	$3, -84(%rbp)
    jle	L158
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	-72(%rbp), %rax
    leaq	-32(%rbp), %rdx
    leaq	16(%rdx), %rcx
    movl	$4, %edx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	__strcpy_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rcx
    movq $s4(%rip), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L159
    call	abort
L159:
    movl	$0, $chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L160
    call	__stack_chk_fail
L160:
    leave
    ret
    .globl	test4
test4:
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
    movl	$1, $chk_fail_allowed(%rip)
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
    movq $s2(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    call	abort
L164:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
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
    movq $s3(%rip), %rax
    movq	%rax, -120(%rbp)
    movq $s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    subq	$3, %rax
    movq	-120(%rbp), %rcx
    addq	%rax, %rcx
    leaq	-112(%rbp), %rax
    addq	$17, %rax
    movl	$3, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    call	abort
L167:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L168, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L169
L168:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L169:
    testl	%eax, %eax
    jne	L170
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__strcpy_chk
    call	abort
L170:
    movl	$0, $chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L171
    call	__stack_chk_fail
L171:
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
