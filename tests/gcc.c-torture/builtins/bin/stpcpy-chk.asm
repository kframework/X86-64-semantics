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
LC9:
    .string	"z"
    .string	"23"
    .string	""
LC10:
    .string	"ABCDEFG"
LC11:
    .string	"abcd"
LC12:
    .string	"aabcd"
LC13:
    .string	"defg"
    .string	""
LC14:
    .string	"deFGH"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$8, -4(%rbp)
    movl	$1, stpcpy_disallowed(%rip)
    movl	$1684234849, p(%rip)
    movw	$101, p + 4(%rip)
    movl	$p + 5, %edx
    movl	$p + 5, %eax
    cmpq	%rax, %rdx
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
    movl	$LC3 + 1, %ecx
    movl	$p + 16, %eax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movl	$p + 20, %edx
    cmpq	%rdx, %rax
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
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
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
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movl	$p + 8, %edx
    cmpq	%rdx, %rax
    jne	L134
    movl	$9, %edx
    movl	$LC8, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L135
L134:
    call	abort
L135:
    addl	$1, -4(%rbp)
    movl	$p + 21, %eax
    movw	$13106, (%rax)
    movb	$0, 2(%rax)
    addq	$2, %rax
    movl	$p + 23, %edx
    cmpq	%rdx, %rax
    jne	L136
    cmpl	$9, -4(%rbp)
    jne	L136
    movl	$p + 19, %eax
    movl	$5, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L137
L136:
    call	abort
L137:
    movl	$1145258561, p(%rip)
    movb	$0, p + 4(%rip)
    movl	$p + 4, %eax
    movl	$4671045, (%rax)
    addq	$3, %rax
    movl	$p + 7, %edx
    cmpq	%rdx, %rax
    jne	L138
    movl	$8, %edx
    movl	$LC10, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L139
L138:
    call	abort
L139:
    movl	$1684234849, p(%rip)
    movw	$101, p + 4(%rip)
    movl	$p + 5, %edx
    movl	$p + 5, %eax
    cmpq	%rax, %rdx
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
    movl	$1, stpcpy_disallowed(%rip)
    movq	$-1, %rdx
    movl	$p + 1, %eax
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movl	$0, stpcpy_disallowed(%rip)
    movl	$6, %edx
    movl	$LC12, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L142
    call	abort
L142:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L143
    call	abort
L143:
    movl	$0, chk_calls(%rip)
    movl	$1, strcpy_disallowed(%rip)
    movq	s2(%rip), %rax
    movl	$32, %edx
    movq	%rax, %rsi
    movl	$p, %edi
    call	__stpcpy_chk
    movl	$p + 4, %edx
    cmpq	%rdx, %rax
    jne	L144
    movl	$6, %edx
    movl	$LC13, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L145
L144:
    call	abort
L145:
    movl	$0, strcpy_disallowed(%rip)
    movl	$1, stpcpy_disallowed(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    movl	$p + 2, %ecx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	__stpcpy_chk
    movl	$0, stpcpy_disallowed(%rip)
    movl	$6, %edx
    movl	$LC14, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L146
    call	abort
L146:
    movl	chk_calls(%rip), %eax
    cmpl	$2, %eax
    je	L148
    call	abort
L148:
    nop
    leave
    ret
    .comm	u1,104,32
    .comm	u2,104,32
    .comm	vx,8,8
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	$0, -32(%rbp)
    jmp	L150
L170:
    movl	$0, -28(%rbp)
    jmp	L151
L169:
    movl	$1, -24(%rbp)
    jmp	L152
L168:
    movl	$0, -20(%rbp)
    movb	$65, -33(%rbp)
    jmp	L153
L155:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, u1(%rax)
    cmpb	$95, -33(%rbp)
    jle	L154
    movb	$65, -33(%rbp)
L154:
    movl	-20(%rbp), %eax
    cltq
    movzbl	-33(%rbp), %edx
    movb	%dl, u2(%rax)
    addl	$1, -20(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L153:
    movl	-20(%rbp), %eax
    cmpl	$96, %eax
    jbe	L155
    movl	-28(%rbp), %edx
    movl	-24(%rbp), %eax
    addl	%edx, %eax
    cltq
    movb	$0, u2(%rax)
    movq	$-1, %rdx
    movl	-28(%rbp), %eax
    cltq
    leaq	u2(%rax), %rcx
    movl	-32(%rbp), %eax
    cltq
    addq	$u1, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, -8(%rbp)
    movl	-32(%rbp), %eax
    movslq	%eax, %rdx
    movl	-24(%rbp), %eax
    cltq
    addq	%rdx, %rax
    addq	$u1, %rax
    cmpq	-8(%rbp), %rax
    je	L156
    call	abort
L156:
    movq	$u1, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L157
L159:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L158
    call	abort
L158:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L157:
    movl	-20(%rbp), %eax
    cmpl	-32(%rbp), %eax
    jl	L159
    movl	$0, -20(%rbp)
    movl	-28(%rbp), %eax
    addl	$65, %eax
    movb	%al, -33(%rbp)
    jmp	L160
L163:
    cmpb	$95, -33(%rbp)
    jle	L161
    movb	$65, -33(%rbp)
L161:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	-33(%rbp), %al
    je	L162
    call	abort
L162:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
    movzbl	-33(%rbp), %eax
    addl	$1, %eax
    movb	%al, -33(%rbp)
L160:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L163
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L164
    call	abort
L164:
    movl	$0, -20(%rbp)
    jmp	L165
L167:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L166
    call	abort
L166:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L165:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L167
    addl	$1, -24(%rbp)
L152:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L168
    addl	$1, -28(%rbp)
L151:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L169
    addl	$1, -32(%rbp)
L150:
    movl	-32(%rbp), %eax
    cmpl	$7, %eax
    jbe	L170
    nop
    leave
    ret
    .section	.rodata
LC15:
    .string	"a"
LC16:
    .string	"abc"
LC17:
    .string	"e"
LC18:
    .string	"gh"
LC19:
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
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L172
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L173
L172:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L173:
    movq	%rax, -80(%rbp)
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L174
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
    jmp	L175
L174:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L175:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movq	s2(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rcx
    movq	-80(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L176
L181:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L177
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L178
L177:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L179
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L178
L179:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L180
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L178
L180:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L178
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L178:
    addl	$1, -84(%rbp)
L176:
    cmpl	$3, -84(%rbp)
    jle	L181
    movq	$-1, %rdx
    movq	s2(%rip), %rax
    leaq	4(%rax), %rcx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L182
    call	abort
L182:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movl	$LC15, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L183
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
    jmp	L184
L183:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L184:
    movq	%rax, -80(%rbp)
    movq	$-1, %rdx
    movl	$s1 + 1, %ecx
    movq	-80(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	$LC16, -72(%rbp)
    movl	$0, -84(%rbp)
    jmp	L185
L190:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L186
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$LC17, -72(%rbp)
    jmp	L187
L186:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L188
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$LC18, -72(%rbp)
    jmp	L187
L188:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L189
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$LC19, -72(%rbp)
    jmp	L187
L189:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L187
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$LC5, -72(%rbp)
L187:
    addl	$1, -84(%rbp)
L185:
    cmpl	$3, -84(%rbp)
    jle	L190
    movq	$-1, %rdx
    movq	-80(%rbp), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	-72(%rbp), %rax
    leaq	-32(%rbp), %rdx
    leaq	16(%rdx), %rcx
    movl	$4, %edx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rcx
    movq	s4(%rip), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    movq	$-1, %rsi
    movq	s3(%rip), %rax
    movq	s4(%rip), %rdx
    leaq	4(%rdx), %rcx
    movq	%rsi, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	__stpcpy_chk
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L191
    call	abort
L191:
    movl	$0, chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L192
    call	__stack_chk_fail
L192:
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
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L194, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L195
L194:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L195:
    testl	%eax, %eax
    jne	L196
    movq	s2(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    call	abort
L196:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L197, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L198
L197:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L198:
    testl	%eax, %eax
    jne	L199
    movq	s3(%rip), %rax
    movq	%rax, -120(%rbp)
    movq	s3(%rip), %rax
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
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    call	abort
L199:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L200, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L201
L200:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L201:
    testl	%eax, %eax
    jne	L202
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movl	$LC15, %esi
    movq	%rax, %rdi
    call	__stpcpy_chk
    movq	%rax, vx(%rip)
    call	abort
L202:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L203
    call	__stack_chk_fail
L203:
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
