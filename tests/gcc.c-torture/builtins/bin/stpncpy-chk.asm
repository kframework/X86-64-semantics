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
    .comm	i,4,4
    .section	.rodata
LC2:
    .string	"hello world"
LC3:
    .string	"xfoo"
LC4:
    .string	"bar"
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
    movl	$0, chk_calls(%rip)
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L128
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L129
L128:
    call	abort
L129:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	$-1, %rdx
    leaq	-80(%rbp), %rax
    addq	$16, %rax
    movq	-104(%rbp), %rsi
    movq	%rdx, %rcx
    movl	$4, %edx
    movq	%rax, %rdi
    call	__stpncpy_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$20, %rax
    cmpq	%rax, %rdx
    jne	L130
    leaq	-80(%rbp), %rax
    addq	$16, %rax
    movq	-104(%rbp), %rcx
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L131
L130:
    call	abort
L131:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	$-1, %rdx
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rsi
    leaq	-80(%rbp), %rax
    addq	$32, %rax
    movq	%rdx, %rcx
    movl	$4, %edx
    movq	%rax, %rdi
    call	__stpncpy_chk
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$36, %rax
    cmpq	%rax, %rdx
    jne	L132
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rcx
    leaq	-80(%rbp), %rax
    addq	$32, %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L133
L132:
    call	abort
L133:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rcx
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$5, %rax
    cmpq	%rax, %rdx
    jne	L134
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rcx
    movq	-96(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    jne	L134
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    je	L135
L134:
    call	abort
L135:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$0, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L136
    leaq	-80(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L137
L136:
    call	abort
L137:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    addq	$1, -96(%rbp)
    movq	-88(%rbp), %rcx
    movq	-96(%rbp), %rax
    movl	$0, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L138
    movq	-96(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L138
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L138
    movq	-104(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L139
L138:
    call	abort
L139:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    leaq	5(%rax), %rcx
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    addq	$5, %rax
    movl	$0, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L140
    movq	-96(%rbp), %rax
    addq	$5, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L140
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L140
    movq	-104(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L141
L140:
    call	abort
L141:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$12, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    jne	L142
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L143
L142:
    call	abort
L143:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L144
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L145
L144:
    call	abort
L145:
    leaq	-80(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %eax
    movl	$8, %edx
    movq	%rsi, %rdi
    movq	%rdx, %rcx
    rep stosq
    movl	i(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, i(%rip)
    testl	%eax, %eax
    je	L146
    movl	$LC3 + 1, %ecx
    jmp	L147
L146:
    movl	$LC4, %ecx
L147:
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	stpncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$3, %rax
    cmpq	%rax, %rdx
    jne	L148
    leaq	-80(%rbp), %rax
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L148
    movl	i(%rip), %eax
    cmpl	$1, %eax
    je	L149
L148:
    call	abort
L149:
    movl	$1, stpncpy_disallowed(%rip)
    movq	$-1, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movq	-104(%rbp), %rsi
    movq	%rdx, %rcx
    movl	$4, %edx
    movq	%rax, %rdi
    call	__strncpy_chk
    movl	$0, stpncpy_disallowed(%rip)
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movq	-104(%rbp), %rcx
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L150
    call	abort
L150:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L153
    call	abort
L153:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L152
    call	__stack_chk_fail
L152:
    leave
    ret
    .section	.rodata
LC5:
    .string	"abcd"
    .text
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, chk_calls(%rip)
    movq	l1(%rip), %rax
    cmpq	$3, %rax
    ja	L155
    movq	l1(%rip), %rax
    addq	$1, %rax
    jmp	L156
L155:
    movl	$4, %eax
L156:
    movq	%rax, -8(%rbp)
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	s4(%rip), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    movq	%rax, %rcx
    movq	s4(%rip), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    cmpq	%rax, %rcx
    jne	L157
    movq	s4(%rip), %rax
    movq	-8(%rbp), %rdx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L158
L157:
    call	abort
L158:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L160
    call	abort
L160:
    nop
    leave
    ret
    .section	.rodata
LC6:
    .string	""
LC7:
    .string	"a"
LC8:
    .string	"abc"
LC9:
    .string	"e"
LC10:
    .string	"gh"
LC11:
    .string	"jkl"
LC12:
    .string	"fghij"
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
    jne	L162
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L163
L162:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L163:
    movq	%rax, -88(%rbp)
    movl	$0, chk_calls(%rip)
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rsi
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L164
    call	abort
L164:
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq	s3(%rip), %rax
    leaq	2(%rax), %rsi
    movq	-88(%rbp), %rax
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L165
    call	abort
L165:
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L166
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
    jmp	L167
L166:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L167:
    movq	%rax, -88(%rbp)
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq	s2(%rip), %rax
    leaq	2(%rax), %rsi
    movq	-88(%rbp), %rax
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L168
    call	abort
L168:
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    movq	s3(%rip), %rdx
    leaq	3(%rdx), %rsi
    movq	-88(%rbp), %rdx
    leaq	2(%rdx), %rdi
    movq	%rax, %rdx
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L169
    call	abort
L169:
    leaq	-32(%rbp), %rax
    movq	%rax, -88(%rbp)
    movl	$0, -92(%rbp)
    jmp	L170
L175:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L171
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -88(%rbp)
    jmp	L172
L171:
    movl	-92(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L173
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -88(%rbp)
    jmp	L172
L173:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L174
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -88(%rbp)
    jmp	L172
L174:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L172
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -88(%rbp)
L172:
    addl	$1, -92(%rbp)
L170:
    cmpl	$3, -92(%rbp)
    jle	L175
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    movq	s2(%rip), %rax
    leaq	4(%rax), %rsi
    movq	-88(%rbp), %rax
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L176
    call	abort
L176:
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L177
    call	abort
L177:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L178
    call	abort
L178:
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$0, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L179
    call	abort
L179:
    movq	$-1, %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L180
    call	abort
L180:
    movq	$-1, %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L181
    call	abort
L181:
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L182
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
    jmp	L183
L182:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L183:
    movq	%rax, -88(%rbp)
    movq	$-1, %rdx
    movl	$s1 + 1, %esi
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$3, %edx
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L184
    call	abort
L184:
    movq	$-1, %rdx
    movl	$s1 + 1, %esi
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L185
    call	abort
L185:
    leaq	-32(%rbp), %rax
    movq	%rax, -88(%rbp)
    movq	$LC8, -80(%rbp)
    movq	$4, -72(%rbp)
    movl	$0, -92(%rbp)
    jmp	L186
L191:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L187
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -88(%rbp)
    movq	$LC9, -80(%rbp)
    movq	$2, -72(%rbp)
    jmp	L188
L187:
    movl	-92(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L189
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -88(%rbp)
    movq	$LC10, -80(%rbp)
    movq	$3, -72(%rbp)
    jmp	L188
L189:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L190
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -88(%rbp)
    movq	$LC11, -80(%rbp)
    movq	$4, -72(%rbp)
    jmp	L188
L190:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L188
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -88(%rbp)
    movq	$LC6, -80(%rbp)
    movq	$1, -72(%rbp)
L188:
    addl	$1, -92(%rbp)
L186:
    cmpl	$3, -92(%rbp)
    jle	L191
    movq	$-1, %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L192
    call	abort
L192:
    movq	-72(%rbp), %rdx
    movq	-80(%rbp), %rax
    leaq	-32(%rbp), %rcx
    leaq	16(%rcx), %rdi
    movl	$4, %ecx
    movq	%rax, %rsi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L193
    call	abort
L193:
    movq	-72(%rbp), %rax
    leaq	-32(%rbp), %rdx
    leaq	15(%rdx), %rdi
    movl	$5, %ecx
    movq	%rax, %rdx
    movl	$LC8, %esi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L194
    call	abort
L194:
    movq	-72(%rbp), %rax
    leaq	-32(%rbp), %rdx
    leaq	10(%rdx), %rdi
    movl	$10, %ecx
    movq	%rax, %rdx
    movl	$LC12, %esi
    call	__stpncpy_chk
    testq	%rax, %rax
    jne	L195
    call	abort
L195:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L196
    call	abort
L196:
    movl	$0, chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L197
    call	__stack_chk_fail
L197:
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
    subq	$72, %rsp
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L199, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L200
L199:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L200:
    testl	%eax, %eax
    jne	L201
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	s2(%rip), %rax
    leaq	4(%rax), %rsi
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    je	L202
    movl	i(%rip), %eax
    addl	$1, %eax
    movl	%eax, i(%rip)
L202:
    call	abort
L201:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L203, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L204
L203:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L204:
    testl	%eax, %eax
    jne	L205
    movq	l1(%rip), %rax
    leaq	4(%rax), %rdx
    movq	s3(%rip), %rax
    leaq	-112(%rbp), %rcx
    leaq	17(%rcx), %rdi
    movl	$3, %ecx
    movq	%rax, %rsi
    call	__stpncpy_chk
    testq	%rax, %rax
    je	L206
    movl	i(%rip), %eax
    addl	$1, %eax
    movl	%eax, i(%rip)
L206:
    call	abort
L205:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L207, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L208
L207:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L208:
    testl	%eax, %eax
    jne	L209
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$2, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    je	L210
    movl	i(%rip), %eax
    addl	$1, %eax
    movl	%eax, i(%rip)
L210:
    call	abort
L209:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	$L211, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L212
L211:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L212:
    testl	%eax, %eax
    jne	L213
    leaq	-80(%rbp), %rax
    addq	$18, %rax
    movl	$2, %ecx
    movl	$3, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	__stpncpy_chk
    testq	%rax, %rax
    je	L214
    movl	i(%rip), %eax
    addl	$1, %eax
    movl	%eax, i(%rip)
L214:
    call	abort
L213:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L215
    call	__stack_chk_fail
L215:
    addq	$72, %rsp
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
