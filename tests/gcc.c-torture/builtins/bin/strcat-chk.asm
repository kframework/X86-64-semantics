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
    .section	.rodata
LC2:
    .string	"hello world"
LC3:
    .string	""
LC4:
    .string	" 1111"
LC5:
    .string	"hello world 1111"
    .string	"XXX"
LC6:
    .string	" 2222"
LC7:
    .string	"hello world 2222"
    .string	"XXX"
LC8:
    .string	"hello world 3333"
    .string	"XXX"
LC9:
    .string	": this "
LC10:
    .string	"hello world: this is a test."
    .string	"X"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC2, -104(%rbp)
    movq	$LC3, -96(%rbp)
    movl	$0, $chk_calls(%rip)
    movl	$1, $strcat_disallowed(%rip)
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, (%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 32(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L105
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L106
L105:
    call	abort
L106:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, (%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 8(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 16(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 24(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	-96(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L107
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L108
L107:
    call	abort
L108:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, (%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 8(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 16(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 24(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 32(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 40(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 48(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-96(%rbp), %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L109
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L109
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L110
L109:
    call	abort
L110:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 32(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 40(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 48(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    leaq	5(%rax), %rdx
    movq	-96(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L111
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L111
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L112
L111:
    call	abort
L112:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, (%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 8(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 16(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 24(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    movq	-104(%rbp), %rax
    leaq	11(%rax), %rdx
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    addq	$5, %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L113
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L113
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L114
L113:
    call	abort
L114:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L115
    call	abort
L115:
    movl	$0, $strcat_disallowed(%rip)
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
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
    jne	L116
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L117
L116:
    call	abort
L117:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    movq	$-1, %rdx
    leaq	-80(%rbp), %rax
    addq	$5, %rax
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$5, %rax
    cmpq	%rax, %rdx
    jne	L118
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L119
L118:
    call	abort
L119:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    leaq	5(%rax), %rdx
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$858993440, (%rax)
    movw	$51, 4(%rax)
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L120
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L120
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L121
L120:
    call	abort
L121:
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	%rax, %rdx
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$2126697, (%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movw	$8289, (%rax)
    movb	$0, 2(%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$1953719668, (%rax)
    movb	$0, 4(%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movw	$46, (%rax)
    leaq	-80(%rbp), %rax
    movl	$30, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L122
    call	abort
L122:
    movl	$0, $chk_calls(%rip)
    movl	$1, $strcat_disallowed(%rip)
    leaq	-80(%rbp), %rax
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, (%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 8(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 16(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 24(%rax)
    movabsq	$6365935209750747224, %rdx
    movq	%rdx, 32(%rax)
    movabsq	$6365935209750747224, %rcx
    movq	%rcx, 40(%rax)
    movabsq	$6365935209750747224, %rsi
    movq	%rsi, 48(%rax)
    movabsq	$6365935209750747224, %rdi
    movq	%rdi, 56(%rax)
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcpy_chk
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L123
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L124
L123:
    call	abort
L124:
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L125
    call	abort
L125:
    movl	$0, $strcat_disallowed(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L126
    call	__stack_chk_fail
L126:
    leave
    ret
    .section	.rodata
LC11:
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
    jne	L128
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L129
L128:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L129:
    movq	%rax, -72(%rbp)
    leaq	-64(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    leaq	-64(%rbp), %rax
    movq	%rax, $s5(%rip)
    movq $s5(%rip), %rax
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L130
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
    jmp	L131
L130:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L131:
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
    movq $s2(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	$-1, %rdx
    movq $s3(%rip), %rax
    leaq	3(%rax), %rcx
    movq	-72(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -72(%rbp)
    movl	$0, -76(%rbp)
    jmp	L132
L137:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L133
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -72(%rbp)
    jmp	L134
L133:
    movl	-76(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L135
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -72(%rbp)
    jmp	L134
L135:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L136
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -72(%rbp)
    jmp	L134
L136:
    movl	-76(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L134
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -72(%rbp)
L134:
    addl	$1, -76(%rbp)
L132:
    cmpl	$3, -76(%rbp)
    jle	L137
    movq	$-1, %rdx
    movq $s2(%rip), %rax
    leaq	4(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movl $chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L138
    call	abort
L138:
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
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L139
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
    jmp	L140
L139:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L140:
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
    movl	$s1 + 1, %ecx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movl $chk_calls(%rip), %eax
    cmpl	$2, %eax
    je	L141
    call	abort
L141:
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    movq $s3(%rip), %rcx
    movq $s4(%rip), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L142
    call	abort
L142:
    movl	$0, $chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L143
    call	__stack_chk_fail
L143:
    leave
    ret
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
    movl	$L145, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L146
L145:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L146:
    testl	%eax, %eax
    jne	L147
    movq $s2(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    call	abort
L147:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L148, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L149
L148:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L149:
    testl	%eax, %eax
    jne	L150
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
    call	__strcat_chk
    call	abort
L150:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L151, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L152
L151:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L152:
    testl	%eax, %eax
    jne	L153
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    call	abort
L153:
    movl	$0, $chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L154
    call	__stack_chk_fail
L154:
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
