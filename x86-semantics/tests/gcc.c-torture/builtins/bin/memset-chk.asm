    .file	"memset-chk.c"
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
    .comm	buffer,32,32
    .globl	argc
    .data
argc:
    .long	1
    .globl	l1
l1:
    .quad	1
    .globl	s3
    .section	.rodata
LC0:
    .string	"FGH"
    .data
s3:
    .quad	LC0
    .comm	s4,8,8
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, $memset_disallowed(%rip)
    movl	$0, $chk_calls(%rip)
    movl $argc(%rip), %eax
    movb	%al, $buffer(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, $buffer(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, $buffer(%rip)
    movb	%cl, $buffer + 2(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, $buffer(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, $buffer(%rip)
    movb	%al, $buffer + 4(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, $buffer(%rip)
    movzbl	%dl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, $buffer + 4(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, $buffer(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, $buffer + 4(%rip)
    movb	%dl, $buffer + 6(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %edx
    movabsq	$72340172838076673, %rax
    imulq	%rdx, %rax
    movq	%rax, $buffer(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, $buffer(%rip)
    movb	%al, $buffer + 8(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, $buffer(%rip)
    movzbl	%dl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, $buffer + 8(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, $buffer(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, $buffer + 8(%rip)
    movb	%dl, $buffer + 10(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, $buffer(%rip)
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, $buffer + 8(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, $buffer(%rip)
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, $buffer + 8(%rip)
    movb	%al, $buffer + 12(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, $buffer(%rip)
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, $buffer + 8(%rip)
    movzbl	%al, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, $buffer + 12(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, $buffer(%rip)
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, $buffer + 8(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, $buffer + 12(%rip)
    movb	%dl, $buffer + 14(%rip)
    movl $argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, $buffer(%rip)
    movzbl	%dl, %edx
    movabsq	$72340172838076673, %rax
    imulq	%rdx, %rax
    movq	%rax, $buffer + 8(%rip)
    movl $argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, $buffer(%rip)
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, $buffer + 8(%rip)
    movb	%al, $buffer + 16(%rip)
    movl	$0, $memset_disallowed(%rip)
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L106
    call	abort
L106:
    nop
    popq	%rbp
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L108
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L109
L108:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L109:
    movq	%rax, -80(%rbp)
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movl	$97, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	-80(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L110
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
    jmp	L111
L110:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L111:
    movq	%rax, -80(%rbp)
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	2(%rax), %rdx
    movl $argc(%rip), %esi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    movq	-80(%rbp), %rdx
    leaq	2(%rdx), %rdi
    movq	%rax, %rdx
    movl	$81, %esi
    call	__memset_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L112
L117:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L113
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L114
L113:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L115
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L114
L115:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L116
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L114
L116:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L114
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L114:
    addl	$1, -84(%rbp)
L112:
    cmpl	$3, -84(%rbp)
    jle	L117
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq	-80(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movl $chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L118
    call	abort
L118:
    movl	$0, $chk_calls(%rip)
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movl $argc(%rip), %esi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memset_chk
    movq $l1(%rip), %rax
    cmpq	$1, %rax
    jne	L119
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
    jmp	L120
L119:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L120:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$78, %esi
    movq	%rax, %rdi
    call	__memset_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    movl	$0, -84(%rbp)
    jmp	L121
L126:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L122
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$2, -72(%rbp)
    jmp	L123
L122:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq $l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L124
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$3, -72(%rbp)
    jmp	L123
L124:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L125
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    jmp	L123
L125:
    movl	-84(%rbp), %eax
    cltq
    movq $l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L123
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$1, -72(%rbp)
L123:
    addl	$1, -84(%rbp)
L121:
    cmpl	$3, -84(%rbp)
    jle	L126
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$72, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	-72(%rbp), %rax
    leaq	-32(%rbp), %rdx
    leaq	16(%rdx), %rdi
    movl	$4, %ecx
    movq	%rax, %rdx
    movl	$100, %esi
    call	__memset_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rdx
    movq $s4(%rip), %rax
    movl	$97, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq $l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq $s4(%rip), %rax
    addq	$2, %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movq $s4(%rip), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movl	$98, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movq $s4(%rip), %rax
    addq	$6, %rax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movl $chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L127
    call	abort
L127:
    movl	$0, $chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L128
    call	__stack_chk_fail
L128:
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
    subq	$72, %rsp
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    movl	$1, $chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L130, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L131
L130:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L131:
    testl	%eax, %eax
    jne	L132
    movq $l1(%rip), %rax
    leaq	1(%rax), %rdx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    call	abort
L132:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L133, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L134
L133:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L134:
    testl	%eax, %eax
    jne	L135
    movq $s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    leaq	1(%rax), %rdx
    leaq	-112(%rbp), %rax
    addq	$17, %rax
    movl	$3, %ecx
    movl	$84, %esi
    movq	%rax, %rdi
    call	__memset_chk
    call	abort
L135:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	$L136, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L137
L136:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L137:
    testl	%eax, %eax
    jne	L138
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$2, %edx
    movl	$98, %esi
    movq	%rax, %rdi
    call	__memset_chk
    call	abort
L138:
    movl	$0, $chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L139
    call	__stack_chk_fail
L139:
    addq	$72, %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%r15
    popq	%rbp
    ret
    .comm	u,96,32
    .globl	A
    .data
A:
    .byte	65
    .text
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$0, -28(%rbp)
    jmp	L141
L176:
    movl	$1, -24(%rbp)
    jmp	L142
L175:
    movl	$0, -20(%rbp)
    jmp	L143
L144:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, $u(%rax)
    addl	$1, -20(%rbp)
L143:
    movl	-20(%rbp), %eax
    cmpl	$95, %eax
    jbe	L144
    movq	$-1, %rcx
    movl	-24(%rbp), %eax
    cltq
    movl	-28(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rdi
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L145
    call	abort
L145:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L146
L148:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L147
    call	abort
L147:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L146:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L148
    movl	$0, -20(%rbp)
    jmp	L149
L151:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L150
    call	abort
L150:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L149:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L151
    movl	$0, -20(%rbp)
    jmp	L152
L154:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L153
    call	abort
L153:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L152:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L154
    movq	$-1, %rsi
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-28(%rbp), %ecx
    movslq	%ecx, %rcx
    leaq	u(%rcx), %rdi
    movq	%rsi, %rcx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L155
    call	abort
L155:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L156
L158:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L157
    call	abort
L157:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L156:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L158
    movl	$0, -20(%rbp)
    jmp	L159
L161:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$65, %al
    je	L160
    call	abort
L160:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L159:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L161
    movl	$0, -20(%rbp)
    jmp	L162
L164:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L163
    call	abort
L163:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L162:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L164
    movq	$-1, %rcx
    movl	-24(%rbp), %eax
    cltq
    movl	-28(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rdi
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L165
    call	abort
L165:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L166
L168:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L167
    call	abort
L167:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L166:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L168
    movl	$0, -20(%rbp)
    jmp	L169
L171:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$66, %al
    je	L170
    call	abort
L170:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L169:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L171
    movl	$0, -20(%rbp)
    jmp	L172
L174:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L173
    call	abort
L173:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L172:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L174
    addl	$1, -24(%rbp)
L142:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L175
    addl	$1, -28(%rbp)
L141:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L176
    nop
    leave
    ret
    .comm	u2,32,32
    .globl	reset
reset:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L178
L179:
    movl	-4(%rbp), %eax
    cltq
    movb	$97, $u2(%rax)
    addl	$1, -4(%rbp)
L178:
    movl	-4(%rbp), %eax
    cmpl	$30, %eax
    jbe	L179
    nop
    popq	%rbp
    ret
    .globl	check
check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	%esi, -24(%rbp)
    movl	%edx, -28(%rbp)
    movq	$u2, -8(%rbp)
    movl	$0, -12(%rbp)
    jmp	L181
L183:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L182
    call	abort
L182:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L181:
    movl	-12(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L183
    movl	$0, -12(%rbp)
    jmp	L184
L186:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	-28(%rbp), %eax
    je	L185
    call	abort
L185:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L184:
    movl	-12(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L186
    movl	$0, -12(%rbp)
    jmp	L187
L189:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L188
    call	abort
L188:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L187:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L189
    nop
    leave
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -12(%rbp)
    jmp	L191
L195:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L192
    call	abort
L192:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$1, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L193
    call	abort
L193:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L194
    call	abort
L194:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L191:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L195
    movl	$0, -12(%rbp)
    jmp	L196
L200:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L197
    call	abort
L197:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$2, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L198
    call	abort
L198:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L199
    call	abort
L199:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L196:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L200
    movl	$0, -12(%rbp)
    jmp	L201
L205:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L202
    call	abort
L202:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$3, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L203
    call	abort
L203:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L204
    call	abort
L204:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L201:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L205
    movl	$0, -12(%rbp)
    jmp	L206
L210:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L207
    call	abort
L207:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$4, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L208
    call	abort
L208:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L209
    call	abort
L209:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L206:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L210
    movl	$0, -12(%rbp)
    jmp	L211
L215:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$5, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L212
    call	abort
L212:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$5, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L213
    call	abort
L213:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$5, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L214
    call	abort
L214:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L211:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L215
    movl	$0, -12(%rbp)
    jmp	L216
L220:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L217
    call	abort
L217:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$6, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L218
    call	abort
L218:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L219
    call	abort
L219:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L216:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L220
    movl	$0, -12(%rbp)
    jmp	L221
L225:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$7, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L222
    call	abort
L222:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$7, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L223
    call	abort
L223:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$7, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L224
    call	abort
L224:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L221:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L225
    movl	$0, -12(%rbp)
    jmp	L226
L230:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$8, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L227
    call	abort
L227:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$8, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L228
    call	abort
L228:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$8, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L229
    call	abort
L229:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L226:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L230
    movl	$0, -12(%rbp)
    jmp	L231
L235:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$9, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L232
    call	abort
L232:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$9, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L233
    call	abort
L233:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$9, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L234
    call	abort
L234:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L231:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L235
    movl	$0, -12(%rbp)
    jmp	L236
L240:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$10, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L237
    call	abort
L237:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$10, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L238
    call	abort
L238:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$10, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L239
    call	abort
L239:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L236:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L240
    movl	$0, -12(%rbp)
    jmp	L241
L245:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$11, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L242
    call	abort
L242:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$11, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L243
    call	abort
L243:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$11, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L244
    call	abort
L244:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L241:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L245
    movl	$0, -12(%rbp)
    jmp	L246
L250:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$12, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L247
    call	abort
L247:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$12, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L248
    call	abort
L248:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$12, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L249
    call	abort
L249:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L246:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L250
    movl	$0, -12(%rbp)
    jmp	L251
L255:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$13, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L252
    call	abort
L252:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$13, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L253
    call	abort
L253:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$13, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L254
    call	abort
L254:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L251:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L255
    movl	$0, -12(%rbp)
    jmp	L256
L260:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$14, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L257
    call	abort
L257:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$14, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L258
    call	abort
L258:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$14, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L259
    call	abort
L259:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L256:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L260
    movl	$0, -12(%rbp)
    jmp	L261
L265:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$15, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L262
    call	abort
L262:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u2(%rdx), %rdi
    movl	$15, %edx
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L263
    call	abort
L263:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    movq	%rdx, %rcx
    movl	$15, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u2, %rax
    cmpq	-8(%rbp), %rax
    je	L264
    call	abort
L264:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L261:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L265
    nop
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -12(%rbp)
    jmp	L267
L271:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$32, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movl	$u2, %edi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    cmpq	$u2, -8(%rbp)
    je	L268
    call	abort
L268:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl	$32, %ecx
    movl	%eax, %esi
    movl	$u2, %edi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    cmpq	$u2, -8(%rbp)
    je	L269
    call	abort
L269:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$32, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movl	$u2, %edi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    cmpq	$u2, -8(%rbp)
    je	L270
    call	abort
L270:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    addl	$1, -12(%rbp)
L267:
    cmpl	$14, -12(%rbp)
    jle	L271
    movl	$0, -12(%rbp)
    jmp	L272
L276:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 1, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L273
    call	abort
L273:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 1, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L274
    call	abort
L274:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 1, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L275
    call	abort
L275:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    addl	$1, -12(%rbp)
L272:
    cmpl	$14, -12(%rbp)
    jle	L276
    movl	$0, -12(%rbp)
    jmp	L277
L281:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 2, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L278
    call	abort
L278:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 2, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L279
    call	abort
L279:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 2, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L280
    call	abort
L280:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    addl	$1, -12(%rbp)
L277:
    cmpl	$14, -12(%rbp)
    jle	L281
    movl	$0, -12(%rbp)
    jmp	L282
L286:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 3, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L283
    call	abort
L283:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 3, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L284
    call	abort
L284:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 3, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L285
    call	abort
L285:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    addl	$1, -12(%rbp)
L282:
    cmpl	$14, -12(%rbp)
    jle	L286
    movl	$0, -12(%rbp)
    jmp	L287
L291:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 4, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L288
    call	abort
L288:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 4, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L289
    call	abort
L289:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 4, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L290
    call	abort
L290:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    addl	$1, -12(%rbp)
L287:
    cmpl	$14, -12(%rbp)
    jle	L291
    movl	$0, -12(%rbp)
    jmp	L292
L296:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 5, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L293
    call	abort
L293:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 5, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L294
    call	abort
L294:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 5, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L295
    call	abort
L295:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    addl	$1, -12(%rbp)
L292:
    cmpl	$14, -12(%rbp)
    jle	L296
    movl	$0, -12(%rbp)
    jmp	L297
L301:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L298
    call	abort
L298:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 6, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L299
    call	abort
L299:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L300
    call	abort
L300:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    addl	$1, -12(%rbp)
L297:
    cmpl	$14, -12(%rbp)
    jle	L301
    movl	$0, -12(%rbp)
    jmp	L302
L306:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 7, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L303
    call	abort
L303:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl $A(%rip), %eax
    movsbl	%al, %eax
    movl $u2 + 7, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L304
    call	abort
L304:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl $u2 + 7, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl $u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L305
    call	abort
L305:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    addl	$1, -12(%rbp)
L302:
    cmpl	$14, -12(%rbp)
    jle	L306
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
