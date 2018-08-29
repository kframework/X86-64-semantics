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
    movl	$0, chk_calls(%rip)
    movl	$1, strcat_disallowed(%rip)
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
    jne	L128
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L129
L128:
    call	abort
L129:
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
    jne	L130
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L131
L130:
    call	abort
L131:
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
    jne	L132
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L132
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L133
L132:
    call	abort
L133:
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
    jne	L134
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L134
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L135
L134:
    call	abort
L135:
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
    jne	L136
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L136
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L137
L136:
    call	abort
L137:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L138
    call	abort
L138:
    movl	$0, strcat_disallowed(%rip)
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
    jne	L139
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L140
L139:
    call	abort
L140:
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
    jne	L141
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L142
L141:
    call	abort
L142:
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
    jne	L143
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L143
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L144
L143:
    call	abort
L144:
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
    je	L145
    call	abort
L145:
    movl	$0, chk_calls(%rip)
    movl	$1, strcat_disallowed(%rip)
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
    jne	L146
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L147
L146:
    call	abort
L147:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L148
    call	abort
L148:
    movl	$0, strcat_disallowed(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L149
    call	__stack_chk_fail
L149:
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
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L151
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L152
L151:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L152:
    movq	%rax, -72(%rbp)
    leaq	-64(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    leaq	-64(%rbp), %rax
    movq	%rax, s5(%rip)
    movq	s5(%rip), %rax
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L153
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
    jmp	L154
L153:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L154:
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
    movq	s2(%rip), %rax
    leaq	2(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	$-1, %rdx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rcx
    movq	-72(%rbp), %rax
    addq	$2, %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -72(%rbp)
    movl	$0, -76(%rbp)
    jmp	L155
L160:
    movl	-76(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L156
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -72(%rbp)
    jmp	L157
L156:
    movl	-76(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L158
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -72(%rbp)
    jmp	L157
L158:
    movl	-76(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L159
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -72(%rbp)
    jmp	L157
L159:
    movl	-76(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L157
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -72(%rbp)
L157:
    addl	$1, -76(%rbp)
L155:
    cmpl	$3, -76(%rbp)
    jle	L160
    movq	$-1, %rdx
    movq	s2(%rip), %rax
    leaq	4(%rax), %rcx
    movq	-72(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L161
    call	abort
L161:
    leaq	-64(%rbp), %rax
    movq	$0, (%rax)
    movq	$0, 8(%rax)
    movl	$0, 16(%rax)
    movl	$0, chk_calls(%rip)
    leaq	-64(%rbp), %rax
    movq	%rax, s5(%rip)
    movq	s5(%rip), %rax
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L162
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
    jmp	L163
L162:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L163:
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
    movl	chk_calls(%rip), %eax
    cmpl	$2, %eax
    je	L164
    call	abort
L164:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	s3(%rip), %rcx
    movq	s4(%rip), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L165
    call	abort
L165:
    movl	$0, chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L166
    call	__stack_chk_fail
L166:
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
    movq	%rax, s5(%rip)
    movq	s5(%rip), %rax
    leaq	-80(%rbp), %rax
    movq	%rax, s5(%rip)
    movq	s5(%rip), %rax
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
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
    movq	s2(%rip), %rax
    leaq	3(%rax), %rcx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	__strcat_chk
    call	abort
L170:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L171, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L172
L171:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L172:
    testl	%eax, %eax
    jne	L173
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
    call	__strcat_chk
    call	abort
L173:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rsi
    movq	%rsi, (%rax)
    movl	$L174, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L175
L174:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L175:
    testl	%eax, %eax
    jne	L176
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	__strcat_chk
    call	abort
L176:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L177
    call	__stack_chk_fail
L177:
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
