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
    movl	$1, memset_disallowed(%rip)
    movl	$0, chk_calls(%rip)
    movl	argc(%rip), %eax
    movb	%al, buffer(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, buffer(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, buffer(%rip)
    movb	%cl, buffer + 2(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, buffer(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, buffer(%rip)
    movb	%al, buffer + 4(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, buffer(%rip)
    movzbl	%dl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, buffer + 4(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, buffer(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, buffer + 4(%rip)
    movb	%dl, buffer + 6(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %edx
    movabsq	$72340172838076673, %rax
    imulq	%rdx, %rax
    movq	%rax, buffer(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, buffer(%rip)
    movb	%al, buffer + 8(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, buffer(%rip)
    movzbl	%dl, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, buffer + 8(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, buffer(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, buffer + 8(%rip)
    movb	%dl, buffer + 10(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, buffer(%rip)
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, buffer + 8(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, buffer(%rip)
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, buffer + 8(%rip)
    movb	%al, buffer + 12(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, buffer(%rip)
    movzbl	%al, %edx
    imull	$16843009, %edx, %edx
    movl	%edx, buffer + 8(%rip)
    movzbl	%al, %edx
    movl	%edx, %eax
    sall	$8, %eax
    addl	%edx, %eax
    movw	%ax, buffer + 12(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, buffer(%rip)
    movzbl	%dl, %eax
    imull	$16843009, %eax, %eax
    movl	%eax, buffer + 8(%rip)
    movzbl	%dl, %ecx
    movl	%ecx, %eax
    sall	$8, %eax
    addl	%ecx, %eax
    movw	%ax, buffer + 12(%rip)
    movb	%dl, buffer + 14(%rip)
    movl	argc(%rip), %eax
    movl	%eax, %edx
    movzbl	%dl, %ecx
    movabsq	$72340172838076673, %rax
    imulq	%rcx, %rax
    movq	%rax, buffer(%rip)
    movzbl	%dl, %edx
    movabsq	$72340172838076673, %rax
    imulq	%rdx, %rax
    movq	%rax, buffer + 8(%rip)
    movl	argc(%rip), %eax
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, buffer(%rip)
    movzbl	%al, %ecx
    movabsq	$72340172838076673, %rdx
    imulq	%rcx, %rdx
    movq	%rdx, buffer + 8(%rip)
    movb	%al, buffer + 16(%rip)
    movl	$0, memset_disallowed(%rip)
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L129
    call	abort
L129:
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
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L131
    leaq	-64(%rbp), %rax
    addq	$5, %rax
    jmp	L132
L131:
    leaq	-64(%rbp), %rax
    addq	$14, %rax
L132:
    movq	%rax, -80(%rbp)
    movl	$0, chk_calls(%rip)
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movl	$97, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    movq	-80(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L133
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
    jmp	L134
L133:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L134:
    movq	%rax, -80(%rbp)
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	2(%rax), %rdx
    movl	argc(%rip), %esi
    movq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    movq	-80(%rbp), %rdx
    leaq	2(%rdx), %rdi
    movq	%rax, %rdx
    movl	$81, %esi
    call	__memset_chk
    leaq	-32(%rbp), %rax
    movq	%rax, -80(%rbp)
    movl	$0, -84(%rbp)
    jmp	L135
L140:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L136
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    jmp	L137
L136:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L138
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    jmp	L137
L138:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L139
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    jmp	L137
L139:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L137
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
L137:
    addl	$1, -84(%rbp)
L135:
    cmpl	$3, -84(%rbp)
    jle	L140
    movq	$-1, %rcx
    movq	l1(%rip), %rdx
    movq	-80(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L141
    call	abort
L141:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    leaq	-64(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movl	argc(%rip), %esi
    movq	-80(%rbp), %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movq	%rax, %rdi
    call	__memset_chk
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L142
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
    jmp	L143
L142:
    leaq	-64(%rbp), %rax
    addq	$17, %rax
L143:
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
    jmp	L144
L149:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L145
    leaq	-64(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -80(%rbp)
    movq	$2, -72(%rbp)
    jmp	L146
L145:
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L147
    leaq	-64(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -80(%rbp)
    movq	$3, -72(%rbp)
    jmp	L146
L147:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L148
    leaq	-32(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -80(%rbp)
    movq	$4, -72(%rbp)
    jmp	L146
L148:
    movl	-84(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L146
    leaq	-64(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -80(%rbp)
    movq	$1, -72(%rbp)
L146:
    addl	$1, -84(%rbp)
L144:
    cmpl	$3, -84(%rbp)
    jle	L149
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
    movq	l1(%rip), %rdx
    movq	s4(%rip), %rax
    movl	$97, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rcx
    movq	l1(%rip), %rax
    leaq	2(%rax), %rdx
    movq	s4(%rip), %rax
    addq	$2, %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movq	s4(%rip), %rax
    addq	$4, %rax
    movq	%rdx, %rcx
    movl	$2, %edx
    movl	$98, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	$-1, %rdx
    movq	s4(%rip), %rax
    addq	$6, %rax
    movq	%rdx, %rcx
    movl	$4, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L150
    call	abort
L150:
    movl	$0, chk_calls(%rip)
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L151
    call	__stack_chk_fail
L151:
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
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L153, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L154
L153:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L154:
    testl	%eax, %eax
    jne	L155
    movq	l1(%rip), %rax
    leaq	1(%rax), %rdx
    leaq	-112(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$0, %esi
    movq	%rax, %rdi
    call	__memset_chk
    call	abort
L155:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L156, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L157
L156:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L157:
    testl	%eax, %eax
    jne	L158
    movq	s3(%rip), %rax
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
L158:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rcx
    movq	%rcx, (%rax)
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
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movl	$1, %ecx
    movl	$2, %edx
    movl	$98, %esi
    movq	%rax, %rdi
    call	__memset_chk
    call	abort
L161:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L162
    call	__stack_chk_fail
L162:
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
    jmp	L164
L199:
    movl	$1, -24(%rbp)
    jmp	L165
L198:
    movl	$0, -20(%rbp)
    jmp	L166
L167:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, u(%rax)
    addl	$1, -20(%rbp)
L166:
    movl	-20(%rbp), %eax
    cmpl	$95, %eax
    jbe	L167
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
    je	L168
    call	abort
L168:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L169
L171:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L170
    call	abort
L170:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L169:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L171
    movl	$0, -20(%rbp)
    jmp	L172
L174:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L173
    call	abort
L173:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L172:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L174
    movl	$0, -20(%rbp)
    jmp	L175
L177:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L176
    call	abort
L176:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L175:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L177
    movq	$-1, %rsi
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
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
    je	L178
    call	abort
L178:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L179
L181:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L180
    call	abort
L180:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L179:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L181
    movl	$0, -20(%rbp)
    jmp	L182
L184:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$65, %al
    je	L183
    call	abort
L183:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L182:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L184
    movl	$0, -20(%rbp)
    jmp	L185
L187:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L186
    call	abort
L186:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L185:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L187
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
    je	L188
    call	abort
L188:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L189
L191:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L190
    call	abort
L190:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L189:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L191
    movl	$0, -20(%rbp)
    jmp	L192
L194:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$66, %al
    je	L193
    call	abort
L193:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L192:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L194
    movl	$0, -20(%rbp)
    jmp	L195
L197:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L196
    call	abort
L196:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L195:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L197
    addl	$1, -24(%rbp)
L165:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L198
    addl	$1, -28(%rbp)
L164:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L199
    nop
    leave
    ret
    .comm	u2,32,32
    .globl	reset
reset:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L201
L202:
    movl	-4(%rbp), %eax
    cltq
    movb	$97, u2(%rax)
    addl	$1, -4(%rbp)
L201:
    movl	-4(%rbp), %eax
    cmpl	$30, %eax
    jbe	L202
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
    jmp	L204
L206:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L205
    call	abort
L205:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L204:
    movl	-12(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L206
    movl	$0, -12(%rbp)
    jmp	L207
L209:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	-28(%rbp), %eax
    je	L208
    call	abort
L208:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L207:
    movl	-12(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L209
    movl	$0, -12(%rbp)
    jmp	L210
L212:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L211
    call	abort
L211:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L210:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L212
    nop
    leave
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -12(%rbp)
    jmp	L214
L218:
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
    je	L215
    call	abort
L215:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L216
    call	abort
L216:
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
    je	L217
    call	abort
L217:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L214:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L218
    movl	$0, -12(%rbp)
    jmp	L219
L223:
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
    je	L220
    call	abort
L220:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L221
    call	abort
L221:
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
    je	L222
    call	abort
L222:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L219:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L223
    movl	$0, -12(%rbp)
    jmp	L224
L228:
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
    je	L225
    call	abort
L225:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L226
    call	abort
L226:
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
    je	L227
    call	abort
L227:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L224:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L228
    movl	$0, -12(%rbp)
    jmp	L229
L233:
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
    je	L230
    call	abort
L230:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L231
    call	abort
L231:
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
    je	L232
    call	abort
L232:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L229:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L233
    movl	$0, -12(%rbp)
    jmp	L234
L238:
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
    je	L235
    call	abort
L235:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L236
    call	abort
L236:
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
    je	L237
    call	abort
L237:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L234:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L238
    movl	$0, -12(%rbp)
    jmp	L239
L243:
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
    je	L240
    call	abort
L240:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L241
    call	abort
L241:
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
    je	L242
    call	abort
L242:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L239:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L243
    movl	$0, -12(%rbp)
    jmp	L244
L248:
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
    je	L245
    call	abort
L245:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L246
    call	abort
L246:
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
    je	L247
    call	abort
L247:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L244:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L248
    movl	$0, -12(%rbp)
    jmp	L249
L253:
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
    je	L250
    call	abort
L250:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L251
    call	abort
L251:
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
    je	L252
    call	abort
L252:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L249:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L253
    movl	$0, -12(%rbp)
    jmp	L254
L258:
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
    je	L255
    call	abort
L255:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L256
    call	abort
L256:
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
    je	L257
    call	abort
L257:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L254:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L258
    movl	$0, -12(%rbp)
    jmp	L259
L263:
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
    je	L260
    call	abort
L260:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L261
    call	abort
L261:
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
    je	L262
    call	abort
L262:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L259:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L263
    movl	$0, -12(%rbp)
    jmp	L264
L268:
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
    je	L265
    call	abort
L265:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L266
    call	abort
L266:
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
    je	L267
    call	abort
L267:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L264:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L268
    movl	$0, -12(%rbp)
    jmp	L269
L273:
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
    je	L270
    call	abort
L270:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L271
    call	abort
L271:
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
    je	L272
    call	abort
L272:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L269:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L273
    movl	$0, -12(%rbp)
    jmp	L274
L278:
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
    je	L275
    call	abort
L275:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L276
    call	abort
L276:
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
    je	L277
    call	abort
L277:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L274:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L278
    movl	$0, -12(%rbp)
    jmp	L279
L283:
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
    je	L280
    call	abort
L280:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L281
    call	abort
L281:
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
    je	L282
    call	abort
L282:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L279:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L283
    movl	$0, -12(%rbp)
    jmp	L284
L288:
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
    je	L285
    call	abort
L285:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    movq	$-1, %rcx
    movzbl	A(%rip), %eax
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
    je	L286
    call	abort
L286:
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
    je	L287
    call	abort
L287:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L284:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L288
    nop
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -12(%rbp)
    jmp	L290
L294:
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
    je	L291
    call	abort
L291:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$32, %ecx
    movl	%eax, %esi
    movl	$u2, %edi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    cmpq	$u2, -8(%rbp)
    je	L292
    call	abort
L292:
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
    je	L293
    call	abort
L293:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    addl	$1, -12(%rbp)
L290:
    cmpl	$14, -12(%rbp)
    jle	L294
    movl	$0, -12(%rbp)
    jmp	L295
L299:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 1, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L296
    call	abort
L296:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 1, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L297
    call	abort
L297:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 1, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L298
    call	abort
L298:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    addl	$1, -12(%rbp)
L295:
    cmpl	$14, -12(%rbp)
    jle	L299
    movl	$0, -12(%rbp)
    jmp	L300
L304:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 2, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L301
    call	abort
L301:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 2, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L302
    call	abort
L302:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 2, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L303
    call	abort
L303:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    addl	$1, -12(%rbp)
L300:
    cmpl	$14, -12(%rbp)
    jle	L304
    movl	$0, -12(%rbp)
    jmp	L305
L309:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 3, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L306
    call	abort
L306:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 3, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L307
    call	abort
L307:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 3, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L308
    call	abort
L308:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    addl	$1, -12(%rbp)
L305:
    cmpl	$14, -12(%rbp)
    jle	L309
    movl	$0, -12(%rbp)
    jmp	L310
L314:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 4, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L311
    call	abort
L311:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 4, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L312
    call	abort
L312:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 4, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L313
    call	abort
L313:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    addl	$1, -12(%rbp)
L310:
    cmpl	$14, -12(%rbp)
    jle	L314
    movl	$0, -12(%rbp)
    jmp	L315
L319:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 5, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L316
    call	abort
L316:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 5, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L317
    call	abort
L317:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 5, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L318
    call	abort
L318:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    addl	$1, -12(%rbp)
L315:
    cmpl	$14, -12(%rbp)
    jle	L319
    movl	$0, -12(%rbp)
    jmp	L320
L324:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L321
    call	abort
L321:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 6, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L322
    call	abort
L322:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 6, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L323
    call	abort
L323:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    addl	$1, -12(%rbp)
L320:
    cmpl	$14, -12(%rbp)
    jle	L324
    movl	$0, -12(%rbp)
    jmp	L325
L329:
    movl	$0, %eax
    call	reset
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 7, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L326
    call	abort
L326:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movq	$-1, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u2 + 7, %edi
    movl	%eax, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L327
    call	abort
L327:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movq	$-1, %rdx
    movl	-12(%rbp), %eax
    cltq
    movl	$u2 + 7, %edi
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    call	__memset_chk
    movq	%rax, -8(%rbp)
    movl	$u2 + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L328
    call	abort
L328:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    addl	$1, -12(%rbp)
L325:
    cmpl	$14, -12(%rbp)
    jle	L329
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
