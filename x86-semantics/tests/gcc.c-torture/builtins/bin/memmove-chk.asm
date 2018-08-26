    .file	"memmove-chk.c"
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
    .globl	l1
l1:
    .quad	1
    .section	.rodata
LC2:
    .string	"ABCDE"
LC3:
    .string	"VWX"
LC4:
    .string	"WX"
    .string	""
    .string	""
LC5:
    .string	""
LC6:
    .string	"A"
    .string	"CDE"
LC7:
    .string	"FGHI"
LC8:
    .string	"A"
    .string	"CFGHI"
LC9:
    .string	"qrstu"
LC10:
    .string	"QRSTU"
LC11:
    .string	"Q123U"
LC12:
    .string	"abcdefg"
LC13:
    .string	"ABCDEFg"
LC14:
    .string	"ABCDEF2"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$1, $memmove_disallowed(%rip)
    movl	$1, $memcpy_disallowed(%rip)
    movl	$0, $chk_calls(%rip)
    movl	$1145258561, $p(%rip)
    movw	$69, $p + 4(%rip)
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
    movl $LC3 + 1, %esi
    movl $p + 16, %eax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 16, %eax
    cmpq	%rax, %rdx
    jne	L107
    movl $p + 16, %eax
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
    movl $p + 1, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 1, %eax
    cmpq	%rax, %rdx
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
    movl $p + 3, %eax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 3, %eax
    cmpq	%rax, %rdx
    jne	L111
    movl	$8, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L112
L111:
    call	abort
L112:
    movl	$8, -4(%rbp)
    movq	$-1, %rdx
    movl $p + 20, %eax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movl $p + 25, %eax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movl $p + 26, %eax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$s1, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 26, %eax
    cmpq	%rax, %rdx
    jne	L113
    movl $p + 25, %eax
    movl	$6, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L114
L113:
    call	abort
L114:
    movl	$1684234849, $p(%rip)
    movl	$p, %eax
    addq	$4, %rax
    movl	$6776421, (%rax)
    movq	%rax, %rdx
    movl $p + 4, %eax
    cmpq	%rax, %rdx
    jne	L115
    movl	$8, %edx
    movl	$LC12, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L116
L115:
    call	abort
L116:
    movl	$1145258561, $p(%rip)
    movw	$69, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L117
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L118
L117:
    call	abort
L118:
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    movl $p + 5, %edi
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movl	$8, %edx
    movl	$LC13, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L119
    call	abort
L119:
    movl	$0, $memmove_disallowed(%rip)
    movl	$0, $memcpy_disallowed(%rip)
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L120
    call	abort
L120:
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    movq $l1(%rip), %rax
    movl $s1 + 1, %esi
    movl $p + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    call	__memmove_chk
    movl	$8, %edx
    movl	$LC14, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L121
    call	abort
L121:
    movl $chk_calls(%rip), %eax
    cmpl	$1, %eax
    je	L123
    call	abort
L123:
    nop
    leave
    ret
    .comm	buf1,512,32
    .globl	buf2
    .data
buf2:
     .quad buf1 + 256
    .comm	buf5,160,32
    .comm	buf7,20,16
    .section	.rodata
LC15:
    .string	"ABCDEFGHI"
    .string	""
LC16:
    .string	"abcdefghijklmnopq"
    .string	""
LC17:
    .string	"ABCDEF"
LC18:
    .string	"ABCDEFghijklmnopq"
    .string	""
LC19:
    .string	"a"
LC20:
    .string	"aBCDEFghijklmnopq"
    .string	""
LC21:
    .string	"bcd"
LC22:
    .string	"aBcdEFghijklmnopq"
    .string	""
LC23:
    .string	"aBcdRSTUVWklmnopq"
    .string	""
LC24:
    .string	"aBcdRSTUVWSlmnopq"
    .string	""
LC25:
    .string	"aBcdRSTUVWSlmnrsq"
    .string	""
LC26:
    .string	"RSTUVWXYVWSlmnrsq"
    .string	""
LC27:
    .string	"RSTUVWXYZ01234567"
    .string	""
LC28:
    .string	"aBcdRSTUVWkSmnopq"
    .string	""
LC29:
    .string	"aBcdRSTUVWkSmnrsq"
    .string	""
LC30:
    .string	"ABCDEFGHI"
LC31:
    .string	"abcdefghijklmnopq"
    .text
    .globl	test2_sub
test2_sub:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movl	%ecx, -44(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, $chk_calls(%rip)
    movabsq	$5208208757389214273, %rax
    movq	%rax, $buf1(%rip)
    movb	$73, $buf1 + 8(%rip)
    movl	$buf1, %eax
    cmpq	$buf1, %rax
    jne	L125
    movl	$11, %edx
    movl	$LC15, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L126
L125:
    call	abort
L126:
    movabsq	$7523094288207667809, %rax
    movq	%rax, $buf1(%rip)
    movabsq	$8101815670912281193, %rax
    movq	%rax, $buf1 + 8(%rip)
    movb	$113, $buf1 + 16(%rip)
    movl	$buf1, %eax
    cmpq	$buf1, %rax
    jne	L127
    movl	$19, %edx
    movl	$LC16, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L128
L127:
    call	abort
L128:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC17, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L129
    movl	$19, %edx
    movl	$LC18, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L130
L129:
    call	abort
L130:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC19, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L131
    movl	$19, %edx
    movl	$LC20, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L132
L131:
    call	abort
L132:
    movq	$-1, %rdx
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    leaq	LC21(%rax), %rsi
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $buf1 + 2, %eax
    cmpq	%rax, %rdx
    jne	L133
    movl	$19, %edx
    movl	$LC22, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L133
    cmpl	$1, -4(%rbp)
    je	L134
L133:
    call	abort
L134:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $buf1 + 4, %eax
    cmpq	%rax, %rdx
    jne	L135
    movl	$19, %edx
    movl	$LC23, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L136
L135:
    call	abort
L136:
    movl $buf5 + 1, %edx
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    addq	$8, %rax
    addq	$buf1, %rax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl $buf1 + 10, %edx
    cmpq	%rdx, %rax
    jne	L137
    movl	$19, %edx
    movl	$LC24, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L137
    cmpl	$2, -4(%rbp)
    je	L138
L137:
    call	abort
L138:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $buf1 + 14, %eax
    cmpq	%rax, %rdx
    jne	L139
    movl	$19, %edx
    movl	$LC25, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L140
L139:
    call	abort
L140:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$8, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L141
    movl	$19, %edx
    movl	$LC26, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L142
L141:
    call	abort
L142:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$17, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L143
    movl	$19, %edx
    movl	$LC27, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L144
L143:
    call	abort
L144:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$19, %edx
    movl	$LC22, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rcx
    movl	-44(%rbp), %eax
    addl	$6, %eax
    cltq
    movq	-24(%rbp), %rdx
    leaq	4(%rdx), %rdi
    movq	%rax, %rdx
    movl	$buf5, %esi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $buf1 + 4, %eax
    cmpq	%rax, %rdx
    jne	L145
    movl	$19, %edx
    movl	$LC23, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L146
L145:
    call	abort
L146:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    cltq
    movl $buf5 + 1, %esi
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    addq	$8, %rdx
    leaq	buf1(%rdx), %rcx
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	memmove
    movl $buf1 + 11, %edx
    cmpq	%rdx, %rax
    jne	L147
    movl	$19, %edx
    movl	$LC28, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L147
    cmpl	$3, -4(%rbp)
    je	L148
L147:
    call	abort
L148:
    movq	$-1, %rcx
    movl	-44(%rbp), %eax
    addl	$2, %eax
    movslq	%eax, %rdx
    movq	-24(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $buf1 + 14, %eax
    cmpq	%rax, %rdx
    jne	L149
    movl	$19, %edx
    movl	$LC29, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L150
L149:
    call	abort
L150:
    movl	$1, -4(%rbp)
    movq	$-1, %rdx
    movq $buf2(%rip), %rax
    movq	%rdx, %rcx
    movl	$9, %edx
    movl	$LC30, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L151
    movq $buf2(%rip), %rax
    movl	$11, %edx
    movl	$LC15, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L152
L151:
    call	abort
L152:
    movq	$-1, %rdx
    movq $buf2(%rip), %rax
    movq	%rdx, %rcx
    movl	$17, %edx
    movl	$LC31, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L153
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC16, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L154
L153:
    call	abort
L154:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC17, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L155
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC18, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L156
L155:
    call	abort
L156:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC19, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L157
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC20, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L158
L157:
    call	abort
L158:
    movq	$-1, %rcx
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    leaq	LC21(%rax), %rsi
    movq	-32(%rbp), %rax
    addq	$2, %rax
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$2, %rax
    cmpq	%rax, %rdx
    jne	L159
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC22, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L159
    cmpl	$2, -4(%rbp)
    je	L160
L159:
    call	abort
L160:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$buf7, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L161
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC23, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L162
L161:
    call	abort
L162:
    movl $buf7 + 1, %esi
    movq $buf2(%rip), %rcx
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rcx, %rax
    movzbl	(%rsi), %edx
    movb	%dl, (%rax)
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L163
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC24, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L163
    cmpl	$3, -4(%rbp)
    je	L164
L163:
    call	abort
L164:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$14, %rax
    cmpq	%rax, %rdx
    jne	L165
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC25, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L166
L165:
    call	abort
L166:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rcx
    movl	$19, %edx
    movl	$LC22, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rcx
    movl	-44(%rbp), %eax
    addl	$6, %eax
    cltq
    movq	-32(%rbp), %rdx
    leaq	4(%rdx), %rdi
    movq	%rax, %rdx
    movl	$buf7, %esi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L167
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC23, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L168
L167:
    call	abort
L168:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    movslq	%eax, %rdx
    movl $buf7 + 1, %edi
    movq $buf2(%rip), %rsi
    movl	-4(%rbp), %eax
    leal	1(%rax), %ecx
    movl	%ecx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rsi, %rax
    movq	%rdi, %rsi
    movq	%rax, %rdi
    call	memmove
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    jne	L169
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC28, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L169
    cmpl	$4, -4(%rbp)
    je	L170
L169:
    call	abort
L170:
    movq	$-1, %rcx
    movl	-44(%rbp), %eax
    addl	$2, %eax
    movslq	%eax, %rdx
    movq	-32(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$14, %rax
    cmpq	%rax, %rdx
    jne	L171
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC29, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L172
L171:
    call	abort
L172:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L174
    call	abort
L174:
    nop
    leave
    ret
    .section	.rodata
LC32:
    .string	"rstuvwxyz"
    .text
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movabsq	$6437991695636517714, %rax
    movq	%rax, $buf5(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, $buf5 + 8(%rip)
    movl	$3749943, $buf5 + 16(%rip)
    movabsq	$6437991695636517714, %rax
    movq	%rax, $buf7(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, $buf7 + 8(%rip)
    movl	$3749943, $buf7 + 16(%rip)
    movl	$buf1, %eax
    movq	%rax, -16(%rbp)
    movq $buf2(%rip), %rax
    movq	%rax, -8(%rbp)
    movl	$0, %eax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %edx
    movq	-8(%rbp), %rsi
    movq	-16(%rbp), %rax
    movl	%edx, %ecx
    movl	$LC32, %edx
    movq	%rax, %rdi
    call	test2_sub
    nop
    leave
    ret
    .section	.rodata
LC33:
    .string	"hello world1"
LC34:
    .string	"hello world2"
LC35:
    .string	"hello world3"
LC36:
    .string	"hello world4"
LC37:
    .string	"hello world5"
LC38:
    .string	"hello world6"
foo:
    .quad	LC33
    .long	4028335726
    .long	1074340345
    .quad	101
    .quad	LC34
    .long	4028335726
    .long	1074340345
    .quad	102
    .quad	LC35
    .long	4028335726
    .long	1074340345
    .quad	103
    .quad	LC36
    .long	4028335726
    .long	1074340345
    .quad	104
    .quad	LC37
    .long	4028335726
    .long	1074340345
    .quad	105
    .quad	LC38
    .long	4028335726
    .long	1074340345
    .quad	106
LC39:
    .string	"hello world10"
LC40:
    .string	"hello1"
LC41:
    .string	"hello2"
LC42:
    .string	"hello3"
LC43:
    .string	"hello world11"
LC44:
    .string	"hello4"
LC45:
    .string	"hello5"
LC46:
    .string	"hello6"
bar:
    .quad	LC39
    .quad	LC40
    .long	4028335726
    .long	1074340345
    .quad	201
    .quad	LC41
    .long	4028335726
    .long	1074340345
    .quad	202
    .quad	LC42
    .long	4028335726
    .long	1074340345
    .quad	203
    .quad	LC43
    .quad	LC44
    .long	4028335726
    .long	1074340345
    .quad	204
    .quad	LC45
    .long	4028335726
    .long	1074340345
    .quad	205
    .quad	LC46
    .long	4028335726
    .long	1074340345
    .quad	206
baz:
    .long	1
    .long	2
    .long	3
    .long	4
    .long	5
    .long	6
    .long	7
    .long	8
    .long	9
    .long	0
LC47:
    .string	"abcde"
LC48:
    .string	"abc"
    .string	"e"
LC49:
    .string	"fghijk"
LC50:
    .string	"abfghi"
LC51:
    .string	"abfgAi"
LC52:
    .string	"abggAi"
    .text
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$384, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, $chk_calls(%rip)
    movl	$1, $memmove_disallowed(%rip)
    leaq	-320(%rbp), %rax
    movl	$foo, %ecx
    movl	$144, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leaq	-320(%rbp), %rdx
    leaq	-320(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L177
    leaq	-320(%rbp), %rax
    movl	$144, %edx
    movl	$foo, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L178
L177:
    call	abort
L178:
    leaq	-176(%rbp), %rax
    movl	$bar, %ecx
    movl	$160, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leaq	-176(%rbp), %rdx
    leaq	-176(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L179
    leaq	-176(%rbp), %rax
    movl	$160, %edx
    movl	$bar, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L180
L179:
    call	abort
L180:
    movq $baz(%rip), %rax
    movq	%rax, -368(%rbp)
    movq $baz + 8(%rip), %rax
    movq	%rax, -360(%rbp)
    movq $baz + 16(%rip), %rax
    movq	%rax, -352(%rbp)
    movq $baz + 24(%rip), %rax
    movq	%rax, -344(%rbp)
    movq $baz + 32(%rip), %rax
    movq	%rax, -336(%rbp)
    leaq	-368(%rbp), %rax
    movl	$40, %edx
    movl	$baz, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L181
    call	abort
L181:
    movl	$1684234849, $p(%rip)
    movw	$101, $p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L182
    movl	$6, %edx
    movl	$LC47, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L183
L182:
    call	abort
L183:
    movq	$s1, -376(%rbp)
    movq	$-1, %rdx
    addq	$1, -376(%rbp)
    movl $p + 2, %edi
    movq	-376(%rbp), %rax
    movq	%rdx, %rcx
    movl	$0, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 2, %eax
    cmpq	%rax, %rdx
    jne	L184
    movl	$6, %edx
    movl	$LC47, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L184
    movl $s1 + 1, %eax
    cmpq	%rax, -376(%rbp)
    je	L185
L184:
    call	abort
L185:
    movq	$-1, %rdx
    movl $p + 3, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 3, %eax
    cmpq	%rax, %rdx
    jne	L186
    movl	$6, %edx
    movl	$LC48, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L187
L186:
    call	abort
L187:
    movq	$-1, %rdx
    movl $p + 2, %eax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$LC49, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movl	$7, %edx
    movl	$LC50, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L188
    call	abort
L188:
    movq $s1 + 1, -376(%rbp)
    movq	$-1, %rcx
    movq	-376(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -376(%rbp)
    movl $p + 1, %edi
    movl	$0, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movl	$7, %edx
    movl	$LC50, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L189
    movl $s1 + 2, %eax
    cmpq	%rax, -376(%rbp)
    je	L190
L189:
    call	abort
L190:
    movq	$-1, %rdx
    movl $p + 4, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movl	$7, %edx
    movl	$LC51, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L191
    call	abort
L191:
    movq	$-1, %rdx
    movl $p + 3, %esi
    movl $p + 2, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl $p + 2, %eax
    cmpq	%rax, %rdx
    je	L192
    call	abort
L192:
    movl	$7, %edx
    movl	$LC52, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L193
    call	abort
L193:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L194
    call	abort
L194:
    movl	$0, $memmove_disallowed(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L195
    call	__stack_chk_fail
L195:
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L197
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L198
L197:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L198:
    movq	%rax, -80(%rbp)
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq $s3(%rip), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq $s3(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L199
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
    jmp	L200
L199:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L200:
    movq	%rax, -80(%rbp)
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq $s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rsi
    movq $l1(%rip), %rdx
    movq $s3(%rip), %rax
    movq	-80(%rbp), %rcx
    leaq	2(%rcx), %rdi
    movq	%rsi, %rcx
    movq	%rax, %rsi
    call	__memmove_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L201
L206:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L202
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L203
L202:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L204
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L203
L204:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L205
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L203
L205:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L203
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L203:
    addl	$1, -84(%rbp)
L201:
    cmpl	$3, -84(%rbp)
    jle	L206
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq $s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movl $chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L207
    call	abort
L207:
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    movq $s3(%rip), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L208
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
    jmp	L209
L208:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L209:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movq $s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    movl	$0, -84(%rbp)
    jmp	L210
L215:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L211
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$2, -72(%rbp)
    jmp	L212
L211:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L213
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$3, -72(%rbp)
    jmp	L212
L213:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L214
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    jmp	L212
L214:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L212
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$1, -72(%rbp)
L212:
    addl	$1, -84(%rbp)
L210:
    cmpl	$3, -84(%rbp)
    jle	L215
    movq	$-1, %rdx
    movq $s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq $s2(%rip), %rax
    movq	-72(%rbp), %rdx
    leaq	-32(%rbp), %rcx
    leaq	16(%rcx), %rdi
    movl	$4, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L216
    call	abort
L216:
    movl	$0, $chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L217
    call	__stack_chk_fail
L217:
    leave
    ret
    .section	.rodata
LC53:
    .string	"ab"
    .text
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r15
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$72, %rsp
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    movl	$1, $chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L219, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L220
L219:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L220:
    testl	%eax, %eax
    jne	L221
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq $s2(%rip), %rax
    leaq	-112(%rbp), %rcx
    leaq	19(%rcx), %rdi
    movl	$1, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    call	abort
L221:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L222, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L223
L222:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L223:
    testl	%eax, %eax
    jne	L224
    movq $s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    leaq	1(%rax), %rdx
    movq $s3(%rip), %rax
    leaq	-112(%rbp), %rcx
    leaq	17(%rcx), %rdi
    movl	$3, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    call	abort
L224:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L225, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L226
L225:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L226:
    testl	%eax, %eax
    jne	L227
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$2, %edx
    movl	$LC53, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    call	abort
L227:
    movl	$0, $chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L228
    call	__stack_chk_fail
L228:
    addq	$72, %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%r15
    popq	%rbp
    ret
    .comm	u1,96,32
    .comm	u2,96,32
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	$0, -32(%rbp)
    jmp	L230
L249:
    movl	$0, -28(%rbp)
    jmp	L231
L248:
    movl	$1, -24(%rbp)
    jmp	L232
L247:
    movl	$0, -20(%rbp)
    movb	$65, -33(%rbp)
    jmp	L233
L235:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, $u1(%rax)
    cmpb	$95, -33(%rbp)
    jle	L234
    movb	$65, -33(%rbp)
L234:
    movl	-20(%rbp), %eax
    cltq
    movzbl	-33(%rbp), %edx
    movb	%dl, $u2(%rax)
    addl	$1, -20(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L233:
    movl	-20(%rbp), %eax
    cmpl	$95, %eax
    jbe	L235
    movq	$-1, %rcx
    movl	-24(%rbp), %eax
    cltq
    movl	-28(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rsi
    movl	-32(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u1(%rdx), %rdi
    movq	%rax, %rdx
    call	__memmove_chk
    movq	%rax, -8(%rbp)
    movl	-32(%rbp), %eax
    cltq
    addq	$u1, %rax
    cmpq	-8(%rbp), %rax
    je	L236
    call	abort
L236:
    movq	$u1, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L237
L239:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L238
    call	abort
L238:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L237:
    movl	-20(%rbp), %eax
    cmpl	-32(%rbp), %eax
    jl	L239
    movl	$0, -20(%rbp)
    movl	-28(%rbp), %eax
    addl	$65, %eax
    movb	%al, -33(%rbp)
    jmp	L240
L243:
    cmpb	$95, -33(%rbp)
    jle	L241
    movb	$65, -33(%rbp)
L241:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	-33(%rbp), %al
    je	L242
    call	abort
L242:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L240:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L243
    movl	$0, -20(%rbp)
    jmp	L244
L246:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L245
    call	abort
L245:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L244:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L246
    addl	$1, -24(%rbp)
L232:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L247
    addl	$1, -28(%rbp)
L231:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L248
    addl	$1, -32(%rbp)
L230:
    movl	-32(%rbp), %eax
    cmpl	$7, %eax
    jbe	L249
    nop
    leave
    ret
    .comm	srcb,80,16
    .comm	dstb,80,16
    .globl	check
check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -20(%rbp)
    movl	-20(%rbp), %eax
    movslq	%eax, %rdx
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L252
    call	abort
L252:
    nop
    leave
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, $chk_calls(%rip)
    movl	$0, -4(%rbp)
    jmp	L254
L255:
    movl	-4(%rbp), %ecx
    movl	$1321528399, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    imull	$26, %eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    addl	$97, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    cltq
    movb	%dl, $srcb(%rax)
    addl	$1, -4(%rbp)
L254:
    movl	-4(%rbp), %eax
    cmpl	$79, %eax
    jbe	L255
    movl	$0, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movb	$0, $dstb(%rip)
    movzbl $srcb(%rip), %eax
    movb	%al, $dstb(%rip)
    movl	$1, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movw	$0, $dstb(%rip)
    movzwl $srcb(%rip), %eax
    movw	%ax, $dstb(%rip)
    movl	$2, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movw	$0, $dstb(%rip)
    movb	$0, $dstb + 2(%rip)
    movzwl $srcb(%rip), %eax
    movw	%ax, $dstb(%rip)
    movzbl $srcb + 2(%rip), %eax
    movb	%al, $dstb + 2(%rip)
    movl	$3, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, $dstb(%rip)
    movl $srcb(%rip), %eax
    movl	%eax, $dstb(%rip)
    movl	$4, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, $dstb(%rip)
    movb	$0, $dstb + 4(%rip)
    movl $srcb(%rip), %eax
    movl	%eax, $dstb(%rip)
    movzbl $srcb + 4(%rip), %eax
    movb	%al, $dstb + 4(%rip)
    movl	$5, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, $dstb(%rip)
    movw	$0, $dstb + 4(%rip)
    movl $srcb(%rip), %eax
    movl	%eax, $dstb(%rip)
    movzwl $srcb + 4(%rip), %eax
    movw	%ax, $dstb + 4(%rip)
    movl	$6, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, $dstb(%rip)
    movw	$0, $dstb + 4(%rip)
    movb	$0, $dstb + 6(%rip)
    movl $srcb(%rip), %eax
    movl	%eax, $dstb(%rip)
    movzwl $srcb + 4(%rip), %eax
    movw	%ax, $dstb + 4(%rip)
    movzbl $srcb + 6(%rip), %eax
    movb	%al, $dstb + 6(%rip)
    movl	$7, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movl	$8, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movb	$0, $dstb + 8(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movzbl $srcb + 8(%rip), %eax
    movb	%al, $dstb + 8(%rip)
    movl	$9, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movw	$0, $dstb + 8(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movzwl $srcb + 8(%rip), %eax
    movw	%ax, $dstb + 8(%rip)
    movl	$10, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movw	$0, $dstb + 8(%rip)
    movb	$0, $dstb + 10(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movzwl $srcb + 8(%rip), %eax
    movw	%ax, $dstb + 8(%rip)
    movzbl $srcb + 10(%rip), %eax
    movb	%al, $dstb + 10(%rip)
    movl	$11, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movl	$0, $dstb + 8(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movl $srcb + 8(%rip), %eax
    movl	%eax, $dstb + 8(%rip)
    movl	$12, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movl	$0, $dstb + 8(%rip)
    movb	$0, $dstb + 12(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movl $srcb + 8(%rip), %eax
    movl	%eax, $dstb + 8(%rip)
    movzbl $srcb + 12(%rip), %eax
    movb	%al, $dstb + 12(%rip)
    movl	$13, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movl	$0, $dstb + 8(%rip)
    movw	$0, $dstb + 12(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movl $srcb + 8(%rip), %eax
    movl	%eax, $dstb + 8(%rip)
    movzwl $srcb + 12(%rip), %eax
    movw	%ax, $dstb + 12(%rip)
    movl	$14, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movl	$0, $dstb + 8(%rip)
    movw	$0, $dstb + 12(%rip)
    movb	$0, $dstb + 14(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movl $srcb + 8(%rip), %eax
    movl	%eax, $dstb + 8(%rip)
    movzwl $srcb + 12(%rip), %eax
    movw	%ax, $dstb + 12(%rip)
    movzbl $srcb + 14(%rip), %eax
    movb	%al, $dstb + 14(%rip)
    movl	$15, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq $srcb(%rip), %rax
    movq $srcb + 8(%rip), %rdx
    movq	%rax, $dstb(%rip)
    movq	%rdx, $dstb + 8(%rip)
    movl	$16, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movb	$0, $dstb + 16(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movzbl $srcb + 16(%rip), %eax
    movb	%al, $dstb + 16(%rip)
    movl	$17, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movw	$0, $dstb + 16(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movzwl $srcb + 16(%rip), %eax
    movw	%ax, $dstb + 16(%rip)
    movl	$18, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movw	$0, $dstb + 16(%rip)
    movb	$0, $dstb + 18(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movzwl $srcb + 16(%rip), %eax
    movw	%ax, $dstb + 16(%rip)
    movzbl $srcb + 18(%rip), %eax
    movb	%al, $dstb + 18(%rip)
    movl	$19, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movl	$0, $dstb + 16(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movl $srcb + 16(%rip), %eax
    movl	%eax, $dstb + 16(%rip)
    movl	$20, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movl	$0, $dstb + 16(%rip)
    movb	$0, $dstb + 20(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movl $srcb + 16(%rip), %eax
    movl	%eax, $dstb + 16(%rip)
    movzbl $srcb + 20(%rip), %eax
    movb	%al, $dstb + 20(%rip)
    movl	$21, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movl	$0, $dstb + 16(%rip)
    movw	$0, $dstb + 20(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movl $srcb + 16(%rip), %eax
    movl	%eax, $dstb + 16(%rip)
    movzwl $srcb + 20(%rip), %eax
    movw	%ax, $dstb + 20(%rip)
    movl	$22, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movl	$0, $dstb + 16(%rip)
    movw	$0, $dstb + 20(%rip)
    movb	$0, $dstb + 22(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movl $srcb + 16(%rip), %eax
    movl	%eax, $dstb + 16(%rip)
    movzwl $srcb + 20(%rip), %eax
    movw	%ax, $dstb + 20(%rip)
    movzbl $srcb + 22(%rip), %eax
    movb	%al, $dstb + 22(%rip)
    movl	$23, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movl	$24, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movb	$0, $dstb + 24(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movzbl $srcb + 24(%rip), %eax
    movb	%al, $dstb + 24(%rip)
    movl	$25, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movw	$0, $dstb + 24(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movzwl $srcb + 24(%rip), %eax
    movw	%ax, $dstb + 24(%rip)
    movl	$26, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movw	$0, $dstb + 24(%rip)
    movb	$0, $dstb + 26(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movzwl $srcb + 24(%rip), %eax
    movw	%ax, $dstb + 24(%rip)
    movzbl $srcb + 26(%rip), %eax
    movb	%al, $dstb + 26(%rip)
    movl	$27, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movl	$0, $dstb + 24(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movl $srcb + 24(%rip), %eax
    movl	%eax, $dstb + 24(%rip)
    movl	$28, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movl	$0, $dstb + 24(%rip)
    movb	$0, $dstb + 28(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movl $srcb + 24(%rip), %eax
    movl	%eax, $dstb + 24(%rip)
    movzbl $srcb + 28(%rip), %eax
    movb	%al, $dstb + 28(%rip)
    movl	$29, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movl	$0, $dstb + 24(%rip)
    movw	$0, $dstb + 28(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movl $srcb + 24(%rip), %eax
    movl	%eax, $dstb + 24(%rip)
    movzwl $srcb + 28(%rip), %eax
    movw	%ax, $dstb + 28(%rip)
    movl	$30, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$3, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movl $srcb + 24(%rip), %eax
    movl	%eax, $dstb + 24(%rip)
    movzwl $srcb + 28(%rip), %eax
    movw	%ax, $dstb + 28(%rip)
    movzbl $srcb + 30(%rip), %eax
    movb	%al, $dstb + 30(%rip)
    movl	$31, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq	$0, $dstb + 24(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movl	$32, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq	$0, $dstb + 24(%rip)
    movb	$0, $dstb + 32(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movzbl $srcb + 32(%rip), %eax
    movb	%al, $dstb + 32(%rip)
    movl	$33, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq	$0, $dstb + 24(%rip)
    movw	$0, $dstb + 32(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movzwl $srcb + 32(%rip), %eax
    movw	%ax, $dstb + 32(%rip)
    movl	$34, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$4, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movzwl $srcb + 32(%rip), %eax
    movw	%ax, $dstb + 32(%rip)
    movzbl $srcb + 34(%rip), %eax
    movb	%al, $dstb + 34(%rip)
    movl	$35, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq	$0, $dstb + 24(%rip)
    movl	$0, $dstb + 32(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movl $srcb + 32(%rip), %eax
    movl	%eax, $dstb + 32(%rip)
    movl	$36, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$4, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movl $srcb + 32(%rip), %eax
    movl	%eax, $dstb + 32(%rip)
    movzbl $srcb + 36(%rip), %eax
    movb	%al, $dstb + 36(%rip)
    movl	$37, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$4, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movl $srcb + 32(%rip), %eax
    movl	%eax, $dstb + 32(%rip)
    movzwl $srcb + 36(%rip), %eax
    movw	%ax, $dstb + 36(%rip)
    movl	$38, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$4, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movl $srcb + 32(%rip), %eax
    movl	%eax, $dstb + 32(%rip)
    movzwl $srcb + 36(%rip), %eax
    movw	%ax, $dstb + 36(%rip)
    movzbl $srcb + 38(%rip), %eax
    movb	%al, $dstb + 38(%rip)
    movl	$39, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, $dstb(%rip)
    movq	$0, $dstb + 8(%rip)
    movq	$0, $dstb + 16(%rip)
    movq	$0, $dstb + 24(%rip)
    movq	$0, $dstb + 32(%rip)
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movl	$40, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movzbl $srcb + 40(%rip), %eax
    movb	%al, $dstb + 40(%rip)
    movl	$41, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movzwl $srcb + 40(%rip), %eax
    movw	%ax, $dstb + 40(%rip)
    movl	$42, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movzwl $srcb + 40(%rip), %eax
    movw	%ax, $dstb + 40(%rip)
    movzbl $srcb + 42(%rip), %eax
    movb	%al, $dstb + 42(%rip)
    movl	$43, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movl $srcb + 40(%rip), %eax
    movl	%eax, $dstb + 40(%rip)
    movl	$44, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movl $srcb + 40(%rip), %eax
    movl	%eax, $dstb + 40(%rip)
    movzbl $srcb + 44(%rip), %eax
    movb	%al, $dstb + 44(%rip)
    movl	$45, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movl $srcb + 40(%rip), %eax
    movl	%eax, $dstb + 40(%rip)
    movzwl $srcb + 44(%rip), %eax
    movw	%ax, $dstb + 44(%rip)
    movl	$46, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$5, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movl $srcb + 40(%rip), %eax
    movl	%eax, $dstb + 40(%rip)
    movzwl $srcb + 44(%rip), %eax
    movw	%ax, $dstb + 44(%rip)
    movzbl $srcb + 46(%rip), %eax
    movb	%al, $dstb + 46(%rip)
    movl	$47, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %esi
    movl	$0, %eax
    movl	$6, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movl	$48, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movzbl $srcb + 48(%rip), %eax
    movb	%al, $dstb + 48(%rip)
    movl	$49, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movzwl $srcb + 48(%rip), %eax
    movw	%ax, $dstb + 48(%rip)
    movl	$50, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movzwl $srcb + 48(%rip), %eax
    movw	%ax, $dstb + 48(%rip)
    movzbl $srcb + 50(%rip), %eax
    movb	%al, $dstb + 50(%rip)
    movl	$51, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movl $srcb + 48(%rip), %eax
    movl	%eax, $dstb + 48(%rip)
    movl	$52, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movl $srcb + 48(%rip), %eax
    movl	%eax, $dstb + 48(%rip)
    movzbl $srcb + 52(%rip), %eax
    movb	%al, $dstb + 52(%rip)
    movl	$53, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movl $srcb + 48(%rip), %eax
    movl	%eax, $dstb + 48(%rip)
    movzwl $srcb + 52(%rip), %eax
    movw	%ax, $dstb + 52(%rip)
    movl	$54, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movl $srcb + 48(%rip), %eax
    movl	%eax, $dstb + 48(%rip)
    movzwl $srcb + 52(%rip), %eax
    movw	%ax, $dstb + 52(%rip)
    movzbl $srcb + 54(%rip), %eax
    movb	%al, $dstb + 54(%rip)
    movl	$55, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %esi
    movl	$0, %eax
    movl	$7, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movl	$56, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movzbl $srcb + 56(%rip), %eax
    movb	%al, $dstb + 56(%rip)
    movl	$57, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movzwl $srcb + 56(%rip), %eax
    movw	%ax, $dstb + 56(%rip)
    movl	$58, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movzwl $srcb + 56(%rip), %eax
    movw	%ax, $dstb + 56(%rip)
    movzbl $srcb + 58(%rip), %eax
    movb	%al, $dstb + 58(%rip)
    movl	$59, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movl $srcb + 56(%rip), %eax
    movl	%eax, $dstb + 56(%rip)
    movl	$60, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movl $srcb + 56(%rip), %eax
    movl	%eax, $dstb + 56(%rip)
    movzbl $srcb + 60(%rip), %eax
    movb	%al, $dstb + 60(%rip)
    movl	$61, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movl $srcb + 56(%rip), %eax
    movl	%eax, $dstb + 56(%rip)
    movzwl $srcb + 60(%rip), %eax
    movw	%ax, $dstb + 60(%rip)
    movl	$62, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$7, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movl $srcb + 56(%rip), %eax
    movl	%eax, $dstb + 56(%rip)
    movzwl $srcb + 60(%rip), %eax
    movw	%ax, $dstb + 60(%rip)
    movzbl $srcb + 62(%rip), %eax
    movb	%al, $dstb + 62(%rip)
    movl	$63, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %esi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movl	$64, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movzbl $srcb + 64(%rip), %eax
    movb	%al, $dstb + 64(%rip)
    movl	$65, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movzwl $srcb + 64(%rip), %eax
    movw	%ax, $dstb + 64(%rip)
    movl	$66, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movzwl $srcb + 64(%rip), %eax
    movw	%ax, $dstb + 64(%rip)
    movzbl $srcb + 66(%rip), %eax
    movb	%al, $dstb + 66(%rip)
    movl	$67, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movl $srcb + 64(%rip), %eax
    movl	%eax, $dstb + 64(%rip)
    movl	$68, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movl $srcb + 64(%rip), %eax
    movl	%eax, $dstb + 64(%rip)
    movzbl $srcb + 68(%rip), %eax
    movb	%al, $dstb + 68(%rip)
    movl	$69, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movl $srcb + 64(%rip), %eax
    movl	%eax, $dstb + 64(%rip)
    movzwl $srcb + 68(%rip), %eax
    movw	%ax, $dstb + 68(%rip)
    movl	$70, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movl $srcb + 64(%rip), %eax
    movl	%eax, $dstb + 64(%rip)
    movzwl $srcb + 68(%rip), %eax
    movw	%ax, $dstb + 68(%rip)
    movzbl $srcb + 70(%rip), %eax
    movb	%al, $dstb + 70(%rip)
    movl	$71, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %esi
    movl	$0, %eax
    movl	$9, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movl	$72, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movzbl $srcb + 72(%rip), %eax
    movb	%al, $dstb + 72(%rip)
    movl	$73, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movzwl $srcb + 72(%rip), %eax
    movw	%ax, $dstb + 72(%rip)
    movl	$74, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movzwl $srcb + 72(%rip), %eax
    movw	%ax, $dstb + 72(%rip)
    movzbl $srcb + 74(%rip), %eax
    movb	%al, $dstb + 74(%rip)
    movl	$75, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movl $srcb + 72(%rip), %eax
    movl	%eax, $dstb + 72(%rip)
    movl	$76, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movl $srcb + 72(%rip), %eax
    movl	%eax, $dstb + 72(%rip)
    movzbl $srcb + 76(%rip), %eax
    movb	%al, $dstb + 76(%rip)
    movl	$77, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movl $srcb + 72(%rip), %eax
    movl	%eax, $dstb + 72(%rip)
    movzwl $srcb + 76(%rip), %eax
    movw	%ax, $dstb + 76(%rip)
    movl	$78, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$dstb, %edx
    movl	$0, %eax
    movl	$9, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	%rdi, %rdx
    movl	%eax, (%rdx)
    addq	$4, %rdx
    movw	%ax, (%rdx)
    addq	$2, %rdx
    movb	%al, (%rdx)
    addq	$1, %rdx
    movq $srcb(%rip), %rax
    movq	%rax, $dstb(%rip)
    movq $srcb + 8(%rip), %rax
    movq	%rax, $dstb + 8(%rip)
    movq $srcb + 16(%rip), %rax
    movq	%rax, $dstb + 16(%rip)
    movq $srcb + 24(%rip), %rax
    movq	%rax, $dstb + 24(%rip)
    movq $srcb + 32(%rip), %rax
    movq	%rax, $dstb + 32(%rip)
    movq $srcb + 40(%rip), %rax
    movq	%rax, $dstb + 40(%rip)
    movq $srcb + 48(%rip), %rax
    movq	%rax, $dstb + 48(%rip)
    movq $srcb + 56(%rip), %rax
    movq	%rax, $dstb + 56(%rip)
    movq $srcb + 64(%rip), %rax
    movq	%rax, $dstb + 64(%rip)
    movl $srcb + 72(%rip), %eax
    movl	%eax, $dstb + 72(%rip)
    movzwl $srcb + 76(%rip), %eax
    movw	%ax, $dstb + 76(%rip)
    movzbl $srcb + 78(%rip), %eax
    movb	%al, $dstb + 78(%rip)
    movl	$79, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L257
    call	abort
L257:
    nop
    leave
    ret
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
