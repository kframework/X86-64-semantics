    .comm	chk_fail_buf,16,16
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
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
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
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
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
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
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
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L42
L44:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L42:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L43
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L44
L43:
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
    .globl	__strcpy_chk
__strcpy_chk:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    cmpq	$-1, -24(%rbp)
    jne	L47
    call	abort
L47:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	-24(%rbp), %rax
    jb	L48
    call	__chk_fail
L48:
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
    jmp	L51
L52:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L51:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L52
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
    jne	L55
    call	abort
L55:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	-24(%rbp), %rax
    jb	L56
    call	__chk_fail
L56:
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
    jmp	L59
L61:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    subq	$1, -40(%rbp)
L59:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L60
    cmpq	$0, -40(%rbp)
    jne	L61
L60:
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L62
L63:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L62:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L63
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
    jne	L66
    call	abort
L66:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L67
    call	__chk_fail
L67:
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
    jmp	L70
L72:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    subq	$1, -40(%rbp)
L70:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L73
    cmpq	$0, -40(%rbp)
    jne	L72
    jmp	L73
L74:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L73:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L74
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
    jne	L77
    call	abort
L77:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jbe	L78
    call	__chk_fail
L78:
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
    jmp	L81
L82:
    addq	$1, -8(%rbp)
L81:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L82
    nop
L83:
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
    jne	L83
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
    jne	L86
    call	abort
L86:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    movq	%rax, %rbx
    movq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    addq	%rbx, %rax
    cmpq	-40(%rbp), %rax
    jb	L87
    call	__chk_fail
L87:
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
    jmp	L90
L91:
    addq	$1, -24(%rbp)
L90:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L91
    movb	$0, -9(%rbp)
    jmp	L92
L95:
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
    jne	L93
    movq	-8(%rbp), %rax
    jmp	L94
L93:
    subq	$1, -40(%rbp)
L92:
    cmpq	$0, -40(%rbp)
    jne	L95
    cmpb	$0, -9(%rbp)
    je	L96
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
L96:
    movq	-8(%rbp), %rax
L94:
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
    jne	L98
    call	abort
L98:
    movl	chk_calls(%rip), %eax
    addl	$1, %eax
    movl	%eax, chk_calls(%rip)
    jmp	L99
L102:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L105
    addq	$1, -24(%rbp)
    subq	$1, -16(%rbp)
L99:
    movq	-24(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jnb	L101
    cmpq	$0, -16(%rbp)
    jne	L102
    jmp	L101
L105:
    nop
L101:
    movq	-24(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L103
    call	__chk_fail
L103:
    movq	-56(%rbp), %rdx
    movq	-48(%rbp), %rcx
    movq	-40(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncat
    leave
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
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L108
L109:
    addq	$1, -8(%rbp)
L108:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L109
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, %rax
    movq	%rsi, %rcx
    jmp	L112
L117:
    movzbl	(%rax), %edi
    movzbl	(%rcx), %esi
    cmpb	%sil, %dil
    je	L113
    movzbl	(%rax), %edx
    movzbl	(%rcx), %eax
    cmpb	%al, %dl
    jle	L114
    movl	$1, %eax
    jmp	L115
L114:
    movl	$-1, %eax
    jmp	L115
L113:
    movq	%rax, %rsi
    leaq	1(%rsi), %rax
    movzbl	(%rsi), %esi
    testb	%sil, %sil
    jne	L116
    movl	$0, %eax
    jmp	L115
L116:
    addq	$1, %rcx
    subl	$1, %edx
L112:
    testl	%edx, %edx
    jg	L117
    movl	$0, %eax
L115:
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
    jmp	L120
L123:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L121
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L122
L121:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L120:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L123
    movl	$0, %eax
L122:
    popq	%rbp
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, inside_main(%rip)
    call	main_test
    movl	$0, inside_main(%rip)
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
    movl	$1, memmove_disallowed(%rip)
    movl	$1, memcpy_disallowed(%rip)
    movl	$0, chk_calls(%rip)
    movl	$1145258561, p(%rip)
    movw	$69, p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L128
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L129
L128:
    call	abort
L129:
    movq	$-1, %rdx
    movl	$LC3 + 1, %esi
    movl	$p + 16, %eax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 16, %eax
    cmpq	%rax, %rdx
    jne	L130
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L131
L130:
    call	abort
L131:
    movq	$-1, %rdx
    movl	$p + 1, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 1, %eax
    cmpq	%rax, %rdx
    jne	L132
    movl	$6, %edx
    movl	$LC6, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L133
L132:
    call	abort
L133:
    movq	$-1, %rdx
    movl	$p + 3, %eax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 3, %eax
    cmpq	%rax, %rdx
    jne	L134
    movl	$8, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L135
L134:
    call	abort
L135:
    movl	$8, -4(%rbp)
    movq	$-1, %rdx
    movl	$p + 20, %eax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movl	$p + 25, %eax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movl	$p + 26, %eax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$s1, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 26, %eax
    cmpq	%rax, %rdx
    jne	L136
    movl	$p + 25, %eax
    movl	$6, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L137
L136:
    call	abort
L137:
    movl	$1684234849, p(%rip)
    movl	$p, %eax
    addq	$4, %rax
    movl	$6776421, (%rax)
    movq	%rax, %rdx
    movl	$p + 4, %eax
    cmpq	%rax, %rdx
    jne	L138
    movl	$8, %edx
    movl	$LC12, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L139
L138:
    call	abort
L139:
    movl	$1145258561, p(%rip)
    movw	$69, p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L140
    movl	$6, %edx
    movl	$LC2, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L141
L140:
    call	abort
L141:
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    movl	$p + 5, %edi
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movl	$8, %edx
    movl	$LC13, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L142
    call	abort
L142:
    movl	$0, memmove_disallowed(%rip)
    movl	$0, memcpy_disallowed(%rip)
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L143
    call	abort
L143:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	l1(%rip), %rax
    movl	$s1 + 1, %esi
    movl	$p + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    call	__memmove_chk
    movl	$8, %edx
    movl	$LC14, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L144
    call	abort
L144:
    movl	chk_calls(%rip), %eax
    cmpl	$1, %eax
    je	L146
    call	abort
L146:
    nop
    leave
    ret
    .comm	buf1,512,32
    .globl	buf2
    .data
buf2:
    .quad	buf1 + 256
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
    movl	$0, chk_calls(%rip)
    movabsq	$5208208757389214273, %rax
    movq	%rax, buf1(%rip)
    movb	$73, buf1 + 8(%rip)
    movl	$buf1, %eax
    cmpq	$buf1, %rax
    jne	L148
    movl	$11, %edx
    movl	$LC15, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L149
L148:
    call	abort
L149:
    movabsq	$7523094288207667809, %rax
    movq	%rax, buf1(%rip)
    movabsq	$8101815670912281193, %rax
    movq	%rax, buf1 + 8(%rip)
    movb	$113, buf1 + 16(%rip)
    movl	$buf1, %eax
    cmpq	$buf1, %rax
    jne	L150
    movl	$19, %edx
    movl	$LC16, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L151
L150:
    call	abort
L151:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC17, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L152
    movl	$19, %edx
    movl	$LC18, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L153
L152:
    call	abort
L153:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC19, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L154
    movl	$19, %edx
    movl	$LC20, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L155
L154:
    call	abort
L155:
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
    movl	$buf1 + 2, %eax
    cmpq	%rax, %rdx
    jne	L156
    movl	$19, %edx
    movl	$LC22, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L156
    cmpl	$1, -4(%rbp)
    je	L157
L156:
    call	abort
L157:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$buf1 + 4, %eax
    cmpq	%rax, %rdx
    jne	L158
    movl	$19, %edx
    movl	$LC23, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L159
L158:
    call	abort
L159:
    movl	$buf5 + 1, %edx
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    addq	$8, %rax
    addq	$buf1, %rax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl	$buf1 + 10, %edx
    cmpq	%rdx, %rax
    jne	L160
    movl	$19, %edx
    movl	$LC24, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L160
    cmpl	$2, -4(%rbp)
    je	L161
L160:
    call	abort
L161:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$buf1 + 14, %eax
    cmpq	%rax, %rdx
    jne	L162
    movl	$19, %edx
    movl	$LC25, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L163
L162:
    call	abort
L163:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$8, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L164
    movl	$19, %edx
    movl	$LC26, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L165
L164:
    call	abort
L165:
    movq	$-1, %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rcx
    movl	$17, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    cmpq	$buf1, %rax
    jne	L166
    movl	$19, %edx
    movl	$LC27, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L167
L166:
    call	abort
L167:
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
    movl	$buf1 + 4, %eax
    cmpq	%rax, %rdx
    jne	L168
    movl	$19, %edx
    movl	$LC23, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L169
L168:
    call	abort
L169:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    cltq
    movl	$buf5 + 1, %esi
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    addq	$8, %rdx
    leaq	buf1(%rdx), %rcx
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	memmove
    movl	$buf1 + 11, %edx
    cmpq	%rdx, %rax
    jne	L170
    movl	$19, %edx
    movl	$LC28, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L170
    cmpl	$3, -4(%rbp)
    je	L171
L170:
    call	abort
L171:
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
    movl	$buf1 + 14, %eax
    cmpq	%rax, %rdx
    jne	L172
    movl	$19, %edx
    movl	$LC29, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L173
L172:
    call	abort
L173:
    movl	$1, -4(%rbp)
    movq	$-1, %rdx
    movq	buf2(%rip), %rax
    movq	%rdx, %rcx
    movl	$9, %edx
    movl	$LC30, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L174
    movq	buf2(%rip), %rax
    movl	$11, %edx
    movl	$LC15, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L175
L174:
    call	abort
L175:
    movq	$-1, %rdx
    movq	buf2(%rip), %rax
    movq	%rdx, %rcx
    movl	$17, %edx
    movl	$LC31, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L176
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC16, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L177
L176:
    call	abort
L177:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$LC17, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L178
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC18, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L179
L178:
    call	abort
L179:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC19, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L180
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC20, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L181
L180:
    call	abort
L181:
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
    movq	buf2(%rip), %rax
    addq	$2, %rax
    cmpq	%rax, %rdx
    jne	L182
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC22, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L182
    cmpl	$2, -4(%rbp)
    je	L183
L182:
    call	abort
L183:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$6, %edx
    movl	$buf7, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L184
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC23, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L185
L184:
    call	abort
L185:
    movl	$buf7 + 1, %esi
    movq	buf2(%rip), %rcx
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rcx, %rax
    movzbl	(%rsi), %edx
    movb	%dl, (%rax)
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L186
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC24, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L186
    cmpl	$3, -4(%rbp)
    je	L187
L186:
    call	abort
L187:
    movq	$-1, %rdx
    movq	-32(%rbp), %rax
    leaq	14(%rax), %rdi
    movq	-40(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$14, %rax
    cmpq	%rax, %rdx
    jne	L188
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC25, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L189
L188:
    call	abort
L189:
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
    movq	buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L190
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC23, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L191
L190:
    call	abort
L191:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    movslq	%eax, %rdx
    movl	$buf7 + 1, %edi
    movq	buf2(%rip), %rsi
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
    movq	buf2(%rip), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    jne	L192
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC28, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L192
    cmpl	$4, -4(%rbp)
    je	L193
L192:
    call	abort
L193:
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
    movq	buf2(%rip), %rax
    addq	$14, %rax
    cmpq	%rax, %rdx
    jne	L194
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC29, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L195
L194:
    call	abort
L195:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L197
    call	abort
L197:
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
    movq	%rax, buf5(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, buf5 + 8(%rip)
    movl	$3749943, buf5 + 16(%rip)
    movabsq	$6437991695636517714, %rax
    movq	%rax, buf7(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, buf7 + 8(%rip)
    movl	$3749943, buf7 + 16(%rip)
    movl	$buf1, %eax
    movq	%rax, -16(%rbp)
    movq	buf2(%rip), %rax
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
    movl	$0, chk_calls(%rip)
    movl	$1, memmove_disallowed(%rip)
    leaq	-320(%rbp), %rax
    movl	$foo, %ecx
    movl	$144, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leaq	-320(%rbp), %rdx
    leaq	-320(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L200
    leaq	-320(%rbp), %rax
    movl	$144, %edx
    movl	$foo, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L201
L200:
    call	abort
L201:
    leaq	-176(%rbp), %rax
    movl	$bar, %ecx
    movl	$160, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    leaq	-176(%rbp), %rdx
    leaq	-176(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L202
    leaq	-176(%rbp), %rax
    movl	$160, %edx
    movl	$bar, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L203
L202:
    call	abort
L203:
    movq	baz(%rip), %rax
    movq	%rax, -368(%rbp)
    movq	baz + 8(%rip), %rax
    movq	%rax, -360(%rbp)
    movq	baz + 16(%rip), %rax
    movq	%rax, -352(%rbp)
    movq	baz + 24(%rip), %rax
    movq	%rax, -344(%rbp)
    movq	baz + 32(%rip), %rax
    movq	%rax, -336(%rbp)
    leaq	-368(%rbp), %rax
    movl	$40, %edx
    movl	$baz, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L204
    call	abort
L204:
    movl	$1684234849, p(%rip)
    movw	$101, p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L205
    movl	$6, %edx
    movl	$LC47, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L206
L205:
    call	abort
L206:
    movq	$s1, -376(%rbp)
    movq	$-1, %rdx
    addq	$1, -376(%rbp)
    movl	$p + 2, %edi
    movq	-376(%rbp), %rax
    movq	%rdx, %rcx
    movl	$0, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 2, %eax
    cmpq	%rax, %rdx
    jne	L207
    movl	$6, %edx
    movl	$LC47, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L207
    movl	$s1 + 1, %eax
    cmpq	%rax, -376(%rbp)
    je	L208
L207:
    call	abort
L208:
    movq	$-1, %rdx
    movl	$p + 3, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 3, %eax
    cmpq	%rax, %rdx
    jne	L209
    movl	$6, %edx
    movl	$LC48, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L210
L209:
    call	abort
L210:
    movq	$-1, %rdx
    movl	$p + 2, %eax
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
    je	L211
    call	abort
L211:
    movq	$s1 + 1, -376(%rbp)
    movq	$-1, %rcx
    movq	-376(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -376(%rbp)
    movl	$p + 1, %edi
    movl	$0, %edx
    movq	%rax, %rsi
    call	__memmove_chk
    movl	$7, %edx
    movl	$LC50, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L212
    movl	$s1 + 2, %eax
    cmpq	%rax, -376(%rbp)
    je	L213
L212:
    call	abort
L213:
    movq	$-1, %rdx
    movl	$p + 4, %eax
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
    je	L214
    call	abort
L214:
    movq	$-1, %rdx
    movl	$p + 3, %esi
    movl	$p + 2, %eax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	%rax, %rdx
    movl	$p + 2, %eax
    cmpq	%rax, %rdx
    je	L215
    call	abort
L215:
    movl	$7, %edx
    movl	$LC52, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L216
    call	abort
L216:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L217
    call	abort
L217:
    movl	$0, memmove_disallowed(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L218
    call	__stack_chk_fail
L218:
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
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L220
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L221
L220:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L221:
    movq	%rax, -80(%rbp)
    movl	$0, chk_calls(%rip)
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    movq	s3(%rip), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	s3(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L222
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
    jmp	L223
L222:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L223:
    movq	%rax, -80(%rbp)
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq	s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rsi
    movq	l1(%rip), %rdx
    movq	s3(%rip), %rax
    movq	-80(%rbp), %rcx
    leaq	2(%rcx), %rdi
    movq	%rsi, %rcx
    movq	%rax, %rsi
    call	__memmove_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L224
L229:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L225
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L226
L225:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L227
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L226
L227:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L228
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L226
L228:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L226
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L226:
    addl	$1, -84(%rbp)
L224:
    cmpl	$3, -84(%rbp)
    jle	L229
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    movq	s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memmove_chk
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L230
    call	abort
L230:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	$-1, %rdx
    movq	s3(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L231
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
    jmp	L232
L231:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L232:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movq	s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    movl	$0, -84(%rbp)
    jmp	L233
L238:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L234
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$2, -72(%rbp)
    jmp	L235
L234:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L236
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$3, -72(%rbp)
    jmp	L235
L236:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L237
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    jmp	L235
L237:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L235
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$1, -72(%rbp)
L235:
    addl	$1, -84(%rbp)
L233:
    cmpl	$3, -84(%rbp)
    jle	L238
    movq	$-1, %rdx
    movq	s2(%rip), %rsi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movq	%rax, %rdi
    call	__memmove_chk
    movq	s2(%rip), %rax
    movq	-72(%rbp), %rdx
    leaq	-32(%rbp), %rcx
    leaq	16(%rcx), %rdi
    movl	$4, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L239
    call	abort
L239:
    movl	$0, chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L240
    call	__stack_chk_fail
L240:
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
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L242, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L243
L242:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L243:
    testl	%eax, %eax
    jne	L244
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	s2(%rip), %rax
    leaq	-112(%rbp), %rcx
    leaq	19(%rcx), %rdi
    movl	$1, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    call	abort
L244:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L245, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L246
L245:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L246:
    testl	%eax, %eax
    jne	L247
    movq	s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    leaq	1(%rax), %rdx
    movq	s3(%rip), %rax
    leaq	-112(%rbp), %rcx
    leaq	17(%rcx), %rdi
    movl	$3, %ecx
    movq	%rax, %rsi
    call	__memmove_chk
    call	abort
L247:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L248, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L249
L248:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L249:
    testl	%eax, %eax
    jne	L250
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$2, %edx
    movl	$LC53, %esi
    movq	%rax, %rdi
    call	__memmove_chk
    call	abort
L250:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L251
    call	__stack_chk_fail
L251:
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
    jmp	L253
L272:
    movl	$0, -28(%rbp)
    jmp	L254
L271:
    movl	$1, -24(%rbp)
    jmp	L255
L270:
    movl	$0, -20(%rbp)
    movb	$65, -33(%rbp)
    jmp	L256
L258:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, u1(%rax)
    cmpb	$95, -33(%rbp)
    jle	L257
    movb	$65, -33(%rbp)
L257:
    movl	-20(%rbp), %eax
    cltq
    movzbl	-33(%rbp), %edx
    movb	%dl, u2(%rax)
    addl	$1, -20(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L256:
    movl	-20(%rbp), %eax
    cmpl	$95, %eax
    jbe	L258
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
    je	L259
    call	abort
L259:
    movq	$u1, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L260
L262:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L261
    call	abort
L261:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L260:
    movl	-20(%rbp), %eax
    cmpl	-32(%rbp), %eax
    jl	L262
    movl	$0, -20(%rbp)
    movl	-28(%rbp), %eax
    addl	$65, %eax
    movb	%al, -33(%rbp)
    jmp	L263
L266:
    cmpb	$95, -33(%rbp)
    jle	L264
    movb	$65, -33(%rbp)
L264:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	-33(%rbp), %al
    je	L265
    call	abort
L265:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L263:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L266
    movl	$0, -20(%rbp)
    jmp	L267
L269:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L268
    call	abort
L268:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L267:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L269
    addl	$1, -24(%rbp)
L255:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L270
    addl	$1, -28(%rbp)
L254:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L271
    addl	$1, -32(%rbp)
L253:
    movl	-32(%rbp), %eax
    cmpl	$7, %eax
    jbe	L272
    nop
    leave
    ret
    .comm	srcb,80,16
    .comm	dstb,80,16
    .globl	check
check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
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
    je	L275
    call	abort
L275:
    nop
    leave
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, chk_calls(%rip)
    movl	$0, -4(%rbp)
    jmp	L277
L278:
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
    movb	%dl, srcb(%rax)
    addl	$1, -4(%rbp)
L277:
    movl	-4(%rbp), %eax
    cmpl	$79, %eax
    jbe	L278
    movl	$0, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movb	$0, dstb(%rip)
    movzbl	srcb(%rip), %eax
    movb	%al, dstb(%rip)
    movl	$1, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movw	$0, dstb(%rip)
    movzwl	srcb(%rip), %eax
    movw	%ax, dstb(%rip)
    movl	$2, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movw	$0, dstb(%rip)
    movb	$0, dstb + 2(%rip)
    movzwl	srcb(%rip), %eax
    movw	%ax, dstb(%rip)
    movzbl	srcb + 2(%rip), %eax
    movb	%al, dstb + 2(%rip)
    movl	$3, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, dstb(%rip)
    movl	srcb(%rip), %eax
    movl	%eax, dstb(%rip)
    movl	$4, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, dstb(%rip)
    movb	$0, dstb + 4(%rip)
    movl	srcb(%rip), %eax
    movl	%eax, dstb(%rip)
    movzbl	srcb + 4(%rip), %eax
    movb	%al, dstb + 4(%rip)
    movl	$5, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, dstb(%rip)
    movw	$0, dstb + 4(%rip)
    movl	srcb(%rip), %eax
    movl	%eax, dstb(%rip)
    movzwl	srcb + 4(%rip), %eax
    movw	%ax, dstb + 4(%rip)
    movl	$6, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	$0, dstb(%rip)
    movw	$0, dstb + 4(%rip)
    movb	$0, dstb + 6(%rip)
    movl	srcb(%rip), %eax
    movl	%eax, dstb(%rip)
    movzwl	srcb + 4(%rip), %eax
    movw	%ax, dstb + 4(%rip)
    movzbl	srcb + 6(%rip), %eax
    movb	%al, dstb + 6(%rip)
    movl	$7, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movl	$8, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movb	$0, dstb + 8(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movzbl	srcb + 8(%rip), %eax
    movb	%al, dstb + 8(%rip)
    movl	$9, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movw	$0, dstb + 8(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movzwl	srcb + 8(%rip), %eax
    movw	%ax, dstb + 8(%rip)
    movl	$10, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movw	$0, dstb + 8(%rip)
    movb	$0, dstb + 10(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movzwl	srcb + 8(%rip), %eax
    movw	%ax, dstb + 8(%rip)
    movzbl	srcb + 10(%rip), %eax
    movb	%al, dstb + 10(%rip)
    movl	$11, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movl	$0, dstb + 8(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movl	srcb + 8(%rip), %eax
    movl	%eax, dstb + 8(%rip)
    movl	$12, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movl	$0, dstb + 8(%rip)
    movb	$0, dstb + 12(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movl	srcb + 8(%rip), %eax
    movl	%eax, dstb + 8(%rip)
    movzbl	srcb + 12(%rip), %eax
    movb	%al, dstb + 12(%rip)
    movl	$13, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movl	$0, dstb + 8(%rip)
    movw	$0, dstb + 12(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movl	srcb + 8(%rip), %eax
    movl	%eax, dstb + 8(%rip)
    movzwl	srcb + 12(%rip), %eax
    movw	%ax, dstb + 12(%rip)
    movl	$14, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movl	$0, dstb + 8(%rip)
    movw	$0, dstb + 12(%rip)
    movb	$0, dstb + 14(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movl	srcb + 8(%rip), %eax
    movl	%eax, dstb + 8(%rip)
    movzwl	srcb + 12(%rip), %eax
    movw	%ax, dstb + 12(%rip)
    movzbl	srcb + 14(%rip), %eax
    movb	%al, dstb + 14(%rip)
    movl	$15, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	srcb(%rip), %rax
    movq	srcb + 8(%rip), %rdx
    movq	%rax, dstb(%rip)
    movq	%rdx, dstb + 8(%rip)
    movl	$16, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movb	$0, dstb + 16(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movzbl	srcb + 16(%rip), %eax
    movb	%al, dstb + 16(%rip)
    movl	$17, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movw	$0, dstb + 16(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movzwl	srcb + 16(%rip), %eax
    movw	%ax, dstb + 16(%rip)
    movl	$18, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movw	$0, dstb + 16(%rip)
    movb	$0, dstb + 18(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movzwl	srcb + 16(%rip), %eax
    movw	%ax, dstb + 16(%rip)
    movzbl	srcb + 18(%rip), %eax
    movb	%al, dstb + 18(%rip)
    movl	$19, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movl	$0, dstb + 16(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movl	srcb + 16(%rip), %eax
    movl	%eax, dstb + 16(%rip)
    movl	$20, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movl	$0, dstb + 16(%rip)
    movb	$0, dstb + 20(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movl	srcb + 16(%rip), %eax
    movl	%eax, dstb + 16(%rip)
    movzbl	srcb + 20(%rip), %eax
    movb	%al, dstb + 20(%rip)
    movl	$21, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movl	$0, dstb + 16(%rip)
    movw	$0, dstb + 20(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movl	srcb + 16(%rip), %eax
    movl	%eax, dstb + 16(%rip)
    movzwl	srcb + 20(%rip), %eax
    movw	%ax, dstb + 20(%rip)
    movl	$22, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movl	$0, dstb + 16(%rip)
    movw	$0, dstb + 20(%rip)
    movb	$0, dstb + 22(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movl	srcb + 16(%rip), %eax
    movl	%eax, dstb + 16(%rip)
    movzwl	srcb + 20(%rip), %eax
    movw	%ax, dstb + 20(%rip)
    movzbl	srcb + 22(%rip), %eax
    movb	%al, dstb + 22(%rip)
    movl	$23, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movl	$24, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movb	$0, dstb + 24(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movzbl	srcb + 24(%rip), %eax
    movb	%al, dstb + 24(%rip)
    movl	$25, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movw	$0, dstb + 24(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movzwl	srcb + 24(%rip), %eax
    movw	%ax, dstb + 24(%rip)
    movl	$26, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movw	$0, dstb + 24(%rip)
    movb	$0, dstb + 26(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movzwl	srcb + 24(%rip), %eax
    movw	%ax, dstb + 24(%rip)
    movzbl	srcb + 26(%rip), %eax
    movb	%al, dstb + 26(%rip)
    movl	$27, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movl	$0, dstb + 24(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movl	srcb + 24(%rip), %eax
    movl	%eax, dstb + 24(%rip)
    movl	$28, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movl	$0, dstb + 24(%rip)
    movb	$0, dstb + 28(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movl	srcb + 24(%rip), %eax
    movl	%eax, dstb + 24(%rip)
    movzbl	srcb + 28(%rip), %eax
    movb	%al, dstb + 28(%rip)
    movl	$29, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movl	$0, dstb + 24(%rip)
    movw	$0, dstb + 28(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movl	srcb + 24(%rip), %eax
    movl	%eax, dstb + 24(%rip)
    movzwl	srcb + 28(%rip), %eax
    movw	%ax, dstb + 28(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movl	srcb + 24(%rip), %eax
    movl	%eax, dstb + 24(%rip)
    movzwl	srcb + 28(%rip), %eax
    movw	%ax, dstb + 28(%rip)
    movzbl	srcb + 30(%rip), %eax
    movb	%al, dstb + 30(%rip)
    movl	$31, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	$0, dstb + 24(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movl	$32, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	$0, dstb + 24(%rip)
    movb	$0, dstb + 32(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movzbl	srcb + 32(%rip), %eax
    movb	%al, dstb + 32(%rip)
    movl	$33, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	$0, dstb + 24(%rip)
    movw	$0, dstb + 32(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movzwl	srcb + 32(%rip), %eax
    movw	%ax, dstb + 32(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movzwl	srcb + 32(%rip), %eax
    movw	%ax, dstb + 32(%rip)
    movzbl	srcb + 34(%rip), %eax
    movb	%al, dstb + 34(%rip)
    movl	$35, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	$0, dstb + 24(%rip)
    movl	$0, dstb + 32(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movl	srcb + 32(%rip), %eax
    movl	%eax, dstb + 32(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movl	srcb + 32(%rip), %eax
    movl	%eax, dstb + 32(%rip)
    movzbl	srcb + 36(%rip), %eax
    movb	%al, dstb + 36(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movl	srcb + 32(%rip), %eax
    movl	%eax, dstb + 32(%rip)
    movzwl	srcb + 36(%rip), %eax
    movw	%ax, dstb + 36(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movl	srcb + 32(%rip), %eax
    movl	%eax, dstb + 32(%rip)
    movzwl	srcb + 36(%rip), %eax
    movw	%ax, dstb + 36(%rip)
    movzbl	srcb + 38(%rip), %eax
    movb	%al, dstb + 38(%rip)
    movl	$39, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movq	$0, dstb(%rip)
    movq	$0, dstb + 8(%rip)
    movq	$0, dstb + 16(%rip)
    movq	$0, dstb + 24(%rip)
    movq	$0, dstb + 32(%rip)
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movzbl	srcb + 40(%rip), %eax
    movb	%al, dstb + 40(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movzwl	srcb + 40(%rip), %eax
    movw	%ax, dstb + 40(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movzwl	srcb + 40(%rip), %eax
    movw	%ax, dstb + 40(%rip)
    movzbl	srcb + 42(%rip), %eax
    movb	%al, dstb + 42(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movl	srcb + 40(%rip), %eax
    movl	%eax, dstb + 40(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movl	srcb + 40(%rip), %eax
    movl	%eax, dstb + 40(%rip)
    movzbl	srcb + 44(%rip), %eax
    movb	%al, dstb + 44(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movl	srcb + 40(%rip), %eax
    movl	%eax, dstb + 40(%rip)
    movzwl	srcb + 44(%rip), %eax
    movw	%ax, dstb + 44(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movl	srcb + 40(%rip), %eax
    movl	%eax, dstb + 40(%rip)
    movzwl	srcb + 44(%rip), %eax
    movw	%ax, dstb + 44(%rip)
    movzbl	srcb + 46(%rip), %eax
    movb	%al, dstb + 46(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movzbl	srcb + 48(%rip), %eax
    movb	%al, dstb + 48(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movzwl	srcb + 48(%rip), %eax
    movw	%ax, dstb + 48(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movzwl	srcb + 48(%rip), %eax
    movw	%ax, dstb + 48(%rip)
    movzbl	srcb + 50(%rip), %eax
    movb	%al, dstb + 50(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movl	srcb + 48(%rip), %eax
    movl	%eax, dstb + 48(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movl	srcb + 48(%rip), %eax
    movl	%eax, dstb + 48(%rip)
    movzbl	srcb + 52(%rip), %eax
    movb	%al, dstb + 52(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movl	srcb + 48(%rip), %eax
    movl	%eax, dstb + 48(%rip)
    movzwl	srcb + 52(%rip), %eax
    movw	%ax, dstb + 52(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movl	srcb + 48(%rip), %eax
    movl	%eax, dstb + 48(%rip)
    movzwl	srcb + 52(%rip), %eax
    movw	%ax, dstb + 52(%rip)
    movzbl	srcb + 54(%rip), %eax
    movb	%al, dstb + 54(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movzbl	srcb + 56(%rip), %eax
    movb	%al, dstb + 56(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movzwl	srcb + 56(%rip), %eax
    movw	%ax, dstb + 56(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movzwl	srcb + 56(%rip), %eax
    movw	%ax, dstb + 56(%rip)
    movzbl	srcb + 58(%rip), %eax
    movb	%al, dstb + 58(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movl	srcb + 56(%rip), %eax
    movl	%eax, dstb + 56(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movl	srcb + 56(%rip), %eax
    movl	%eax, dstb + 56(%rip)
    movzbl	srcb + 60(%rip), %eax
    movb	%al, dstb + 60(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movl	srcb + 56(%rip), %eax
    movl	%eax, dstb + 56(%rip)
    movzwl	srcb + 60(%rip), %eax
    movw	%ax, dstb + 60(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movl	srcb + 56(%rip), %eax
    movl	%eax, dstb + 56(%rip)
    movzwl	srcb + 60(%rip), %eax
    movw	%ax, dstb + 60(%rip)
    movzbl	srcb + 62(%rip), %eax
    movb	%al, dstb + 62(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movzbl	srcb + 64(%rip), %eax
    movb	%al, dstb + 64(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movzwl	srcb + 64(%rip), %eax
    movw	%ax, dstb + 64(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movzwl	srcb + 64(%rip), %eax
    movw	%ax, dstb + 64(%rip)
    movzbl	srcb + 66(%rip), %eax
    movb	%al, dstb + 66(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movl	srcb + 64(%rip), %eax
    movl	%eax, dstb + 64(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movl	srcb + 64(%rip), %eax
    movl	%eax, dstb + 64(%rip)
    movzbl	srcb + 68(%rip), %eax
    movb	%al, dstb + 68(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movl	srcb + 64(%rip), %eax
    movl	%eax, dstb + 64(%rip)
    movzwl	srcb + 68(%rip), %eax
    movw	%ax, dstb + 68(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movl	srcb + 64(%rip), %eax
    movl	%eax, dstb + 64(%rip)
    movzwl	srcb + 68(%rip), %eax
    movw	%ax, dstb + 68(%rip)
    movzbl	srcb + 70(%rip), %eax
    movb	%al, dstb + 70(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movzbl	srcb + 72(%rip), %eax
    movb	%al, dstb + 72(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movzwl	srcb + 72(%rip), %eax
    movw	%ax, dstb + 72(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movzwl	srcb + 72(%rip), %eax
    movw	%ax, dstb + 72(%rip)
    movzbl	srcb + 74(%rip), %eax
    movb	%al, dstb + 74(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movl	srcb + 72(%rip), %eax
    movl	%eax, dstb + 72(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movl	srcb + 72(%rip), %eax
    movl	%eax, dstb + 72(%rip)
    movzbl	srcb + 76(%rip), %eax
    movb	%al, dstb + 76(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movl	srcb + 72(%rip), %eax
    movl	%eax, dstb + 72(%rip)
    movzwl	srcb + 76(%rip), %eax
    movw	%ax, dstb + 76(%rip)
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
    movq	srcb(%rip), %rax
    movq	%rax, dstb(%rip)
    movq	srcb + 8(%rip), %rax
    movq	%rax, dstb + 8(%rip)
    movq	srcb + 16(%rip), %rax
    movq	%rax, dstb + 16(%rip)
    movq	srcb + 24(%rip), %rax
    movq	%rax, dstb + 24(%rip)
    movq	srcb + 32(%rip), %rax
    movq	%rax, dstb + 32(%rip)
    movq	srcb + 40(%rip), %rax
    movq	%rax, dstb + 40(%rip)
    movq	srcb + 48(%rip), %rax
    movq	%rax, dstb + 48(%rip)
    movq	srcb + 56(%rip), %rax
    movq	%rax, dstb + 56(%rip)
    movq	srcb + 64(%rip), %rax
    movq	%rax, dstb + 64(%rip)
    movl	srcb + 72(%rip), %eax
    movl	%eax, dstb + 72(%rip)
    movzwl	srcb + 76(%rip), %eax
    movw	%ax, dstb + 76(%rip)
    movzbl	srcb + 78(%rip), %eax
    movb	%al, dstb + 78(%rip)
    movl	$79, %edx
    movl	$srcb, %esi
    movl	$dstb, %edi
    call	check
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L280
    call	abort
L280:
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
