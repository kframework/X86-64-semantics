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
    .comm	buffer,32,32
    .globl	ptr
    .section	.rodata
LC2:
    .string	"barf"
    .data
ptr:
    .quad	LC2
    .section	.rodata
LC3:
    .string	"foo"
LC4:
    .string	"foo bar"
LC5:
    .string	"bar"
LC6:
    .string	"%d%d%d"
LC7:
    .string	"121"
LC8:
    .string	"1213"
LC9:
    .string	"%s"
LC10:
    .string	"%d - %c"
LC11:
    .string	"28 - b"
    .string	"AAAAA"
LC12:
    .string	"-16 - "
    .string	"AAA"
    .text
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$8, %rsp
    movl	$0, chk_calls(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movl	$7303014, buffer(%rip)
    movl	$4, %edx
    movl	$LC3, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L128
    movzbl	buffer + 4(%rip), %eax
    cmpb	$65, %al
    je	L129
L128:
    call	abort
L129:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movl	$LC4, %edx
    movl	$4, %esi
    movl	$buffer, %edi
    movl	$0, %eax
    call	snprintf
    cmpl	$7, %eax
    je	L130
    call	abort
L130:
    movl	$4, %edx
    movl	$LC3, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L131
    movzbl	buffer + 4(%rip), %eax
    cmpb	$65, %al
    je	L132
L131:
    call	abort
L132:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movl	$7496034, buffer(%rip)
    movl	$4, %edx
    movl	$LC5, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L133
    movzbl	buffer + 4(%rip), %eax
    cmpb	$65, %al
    je	L134
L133:
    call	abort
L134:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movl	$7496034, buffer(%rip)
    movl	$3, %eax
    cmpl	$3, %eax
    je	L135
    call	abort
L135:
    movl	$4, %edx
    movl	$LC5, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L136
    movzbl	buffer + 4(%rip), %eax
    cmpb	$65, %al
    je	L137
L136:
    call	abort
L137:
    movl	$0, snprintf_disallowed(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movq	l1(%rip), %rax
    leal	12(%rax), %ecx
    movq	l1(%rip), %rax
    leal	1(%rax), %edx
    movq	l1(%rip), %rax
    movl	%ecx, %r9d
    movl	%edx, %r8d
    movl	%eax, %ecx
    movl	$LC6, %edx
    movl	$4, %esi
    movl	$buffer, %edi
    movl	$0, %eax
    call	snprintf
    cmpl	$4, %eax
    je	L138
    call	abort
L138:
    movl	$4, %edx
    movl	$LC7, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L139
    movzbl	buffer + 4(%rip), %eax
    cmpb	$65, %al
    je	L140
L139:
    call	abort
L140:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movq	l1(%rip), %rax
    leal	12(%rax), %ecx
    movq	l1(%rip), %rax
    leal	1(%rax), %edx
    movq	l1(%rip), %rax
    movl	%ecx, %r9d
    movl	%edx, %r8d
    movl	%eax, %ecx
    movl	$LC6, %edx
    movl	$32, %esi
    movl	$buffer, %edi
    movl	$0, %eax
    call	snprintf
    cmpl	$4, %eax
    je	L141
    call	abort
L141:
    movl	$5, %edx
    movl	$LC8, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L142
    movzbl	buffer + 5(%rip), %eax
    cmpb	$65, %al
    je	L143
L142:
    call	abort
L143:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L144
    call	abort
L144:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movq	ptr(%rip), %rbx
    movq	ptr(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    addq	$1, %rax
    movq	%rbx, %rcx
    movl	$LC9, %edx
    movq	%rax, %rsi
    movl	$buffer, %edi
    movl	$0, %eax
    call	snprintf
    movl	$5, %edx
    movl	$LC2, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L145
    movzbl	buffer + 5(%rip), %eax
    cmpb	$65, %al
    je	L146
L145:
    call	abort
L146:
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 8(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 16(%rip)
    movabsq	$4702111234474983745, %rax
    movq	%rax, buffer + 24(%rip)
    movq	ptr(%rip), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %ecx
    movq	l1(%rip), %rax
    leal	27(%rax), %edx
    movq	l1(%rip), %rax
    addq	$31, %rax
    movl	%ecx, %r8d
    movl	%edx, %ecx
    movl	$LC10, %edx
    movq	%rax, %rsi
    movl	$buffer, %edi
    movl	$0, %eax
    call	snprintf
    movl	$12, %edx
    movl	$LC11, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    je	L147
    call	abort
L147:
    movl	chk_calls(%rip), %eax
    cmpl	$2, %eax
    je	L148
    call	abort
L148:
    movl	$0, chk_calls(%rip)
    movq	$-1, %rdx
    movq	s4(%rip), %rax
    movq	%rdx, %rcx
    movl	$32, %edx
    movl	$65, %esi
    movq	%rax, %rdi
    call	__memset_chk
    movq	ptr(%rip), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %ecx
    movq	l1(%rip), %rax
    leal	-17(%rax), %edx
    movq	l1(%rip), %rax
    leaq	6(%rax), %rsi
    movq	s4(%rip), %rax
    movl	%ecx, %r8d
    movl	%edx, %ecx
    movl	$LC10, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movq	s4(%rip), %rax
    movl	$10, %edx
    movl	$LC12, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L149
    call	abort
L149:
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L151
    call	abort
L151:
    nop
    addq	$8, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .section	.rodata
LC13:
    .string	"%s%c"
LC14:
    .string	"%c %s"
LC15:
    .string	"a"
LC16:
    .string	""
LC17:
    .string	"%s %d"
    .text
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r12
    pushq	%rbx
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L153
    leaq	-80(%rbp), %rax
    addq	$5, %rax
    jmp	L154
L153:
    leaq	-80(%rbp), %rax
    addq	$14, %rax
L154:
    movq	%rax, -88(%rbp)
    movl	$0, chk_calls(%rip)
    movq	s3(%rip), %rax
    leaq	3(%rax), %rdx
    movq	l1(%rip), %rsi
    leaq	-80(%rbp), %rax
    addq	$2, %rax
    movq	%rdx, %rcx
    movl	$LC9, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movq	s3(%rip), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %ecx
    movq	s3(%rip), %rax
    leaq	3(%rax), %rdx
    movq	l1(%rip), %rax
    leaq	4(%rax), %rsi
    movq	-88(%rbp), %rax
    movl	%ecx, %r8d
    movq	%rdx, %rcx
    movl	$LC13, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L155
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %ebx
    movl	$0, %edx
    divq	%rbx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    jmp	L156
L155:
    leaq	-80(%rbp), %rax
    addq	$17, %rax
L156:
    movq	%rax, -88(%rbp)
    movq	s2(%rip), %rax
    leaq	4(%rax), %r12
    movq	s2(%rip), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movq	s2(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    leaq	-2(%rax), %rsi
    movq	-88(%rbp), %rax
    movq	%r12, %r8
    movl	%ebx, %ecx
    movl	$LC14, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movq	s3(%rip), %rax
    leaq	3(%rax), %rdx
    movq	l1(%rip), %rax
    movq	-88(%rbp), %rcx
    addq	$2, %rcx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    movl	$0, %eax
    call	snprintf
    leaq	-48(%rbp), %rax
    movq	%rax, -88(%rbp)
    movl	$0, -92(%rbp)
    jmp	L157
L162:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L158
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -88(%rbp)
    jmp	L159
L158:
    movl	-92(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L160
    leaq	-80(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -88(%rbp)
    jmp	L159
L160:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L161
    leaq	-48(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -88(%rbp)
    jmp	L159
L161:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L159
    leaq	-80(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -88(%rbp)
L159:
    addl	$1, -92(%rbp)
L157:
    cmpl	$3, -92(%rbp)
    jle	L162
    movq	s2(%rip), %rax
    leaq	4(%rax), %rdx
    movq	l1(%rip), %rcx
    movq	-88(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movl	chk_calls(%rip), %eax
    cmpl	$5, %eax
    je	L163
    call	abort
L163:
    movl	$0, chk_calls(%rip)
    leaq	-80(%rbp), %rax
    addq	$2, %rax
    movb	$0, (%rax)
    movq	-88(%rbp), %rax
    movl	$LC15, %edx
    movl	$1, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movq	l1(%rip), %rax
    cmpq	$1, %rax
    jne	L164
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %ebx
    movl	$0, %edx
    divq	%rbx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    jmp	L165
L164:
    leaq	-80(%rbp), %rax
    addq	$17, %rax
L165:
    movq	%rax, -88(%rbp)
    movl	$s1 + 1, %edx
    movq	-88(%rbp), %rax
    movq	%rdx, %rcx
    movl	$LC9, %edx
    movl	$3, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    leaq	-48(%rbp), %rax
    movq	%rax, -88(%rbp)
    movl	$0, -92(%rbp)
    jmp	L166
L171:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    subq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L167
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -88(%rbp)
    jmp	L168
L167:
    movl	-92(%rbp), %eax
    movslq	%eax, %rdx
    movq	l1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L169
    leaq	-80(%rbp), %rax
    addq	$17, %rax
    movq	%rax, -88(%rbp)
    jmp	L168
L169:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$1, %rdx
    cmpq	%rdx, %rax
    jne	L170
    leaq	-48(%rbp), %rax
    addq	$5, %rax
    movq	%rax, -88(%rbp)
    jmp	L168
L170:
    movl	-92(%rbp), %eax
    cltq
    movq	l1(%rip), %rdx
    addq	$2, %rdx
    cmpq	%rdx, %rax
    jne	L168
    leaq	-80(%rbp), %rax
    addq	$9, %rax
    movq	%rax, -88(%rbp)
L168:
    addl	$1, -92(%rbp)
L166:
    cmpl	$3, -92(%rbp)
    jle	L171
    movq	-88(%rbp), %rax
    movb	$0, (%rax)
    movq	-88(%rbp), %rax
    movl	$LC16, %ecx
    movl	$LC9, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movl	$0, snprintf_disallowed(%rip)
    movq	s3(%rip), %rdx
    movq	l1(%rip), %rax
    leaq	31(%rax), %rsi
    movq	s4(%rip), %rax
    movl	$0, %r8d
    movq	%rdx, %rcx
    movl	$LC17, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    movl	chk_calls(%rip), %eax
    testl	%eax, %eax
    je	L174
    call	abort
L174:
    nop
    movq	-24(%rbp), %rax
    xorq	$40, %rax
    je	L173
    call	__stack_chk_fail
L173:
    leaq	-16(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%rbp
    ret
    .section	.rodata
LC18:
    .string	"%c%s"
LC19:
    .string	"%d"
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
    movl	$1, chk_fail_allowed(%rip)
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L176, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L177
L176:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L177:
    testl	%eax, %eax
    jne	L178
    movq	s2(%rip), %rax
    leaq	4(%rax), %rcx
    movq	s2(%rip), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movq	l1(%rip), %rdx
    leaq	1(%rdx), %rsi
    leaq	-112(%rbp), %rdx
    leaq	19(%rdx), %rdi
    movq	%rcx, %r8
    movl	%eax, %ecx
    movl	$LC18, %edx
    movl	$0, %eax
    call	snprintf
    call	abort
L178:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L179, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L180
L179:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L180:
    testl	%eax, %eax
    jne	L181
    movq	s3(%rip), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movl	%eax, -116(%rbp)
    movq	s3(%rip), %rax
    movq	%rax, -128(%rbp)
    movq	s3(%rip), %rax
    movq	%rax, %rdi
    call	strlen
    subq	$2, %rax
    movq	-128(%rbp), %rdx
    addq	%rax, %rdx
    movq	l1(%rip), %rax
    leaq	30(%rax), %rsi
    leaq	-112(%rbp), %rax
    addq	$17, %rax
    movl	-116(%rbp), %r8d
    movq	%rdx, %rcx
    movl	$LC13, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    call	abort
L181:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L182, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L183
L182:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L183:
    testl	%eax, %eax
    jne	L184
    movq	l1(%rip), %rax
    leal	9999(%rax), %edx
    movq	l1(%rip), %rax
    leaq	3(%rax), %rsi
    leaq	-112(%rbp), %rax
    addq	$17, %rax
    movl	%edx, %ecx
    movl	$LC19, %edx
    movq	%rax, %rdi
    movl	$0, %eax
    call	snprintf
    call	abort
L184:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	$L185, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L186
L185:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L186:
    testl	%eax, %eax
    jne	L187
    leaq	-80(%rbp), %rax
    addq	$19, %rax
    movw	$97, (%rax)
    call	abort
L187:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rdi
    movq	%rdi, (%rax)
    movl	$L188, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L189
L188:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L189:
    testl	%eax, %eax
    jne	L190
    leaq	-80(%rbp), %rax
    addq	$17, %rax
    movw	$97, (%rax)
    call	abort
L190:
    movl	$chk_fail_buf, %eax
    leaq	-48(%rbp), %rbx
    movq	%rbx, (%rax)
    movl	$L191, %edx
    movq	%rdx, 8(%rax)
    movq	%rsp, 16(%rax)
    movl	$0, %eax
    jmp	L192
L191:
    leaq	48(%rbp), %rbp
    movl	$1, %eax
L192:
    testl	%eax, %eax
    jne	L193
    leaq	-80(%rbp), %rax
    addq	$17, %rax
    movl	$6513249, (%rax)
    call	abort
L193:
    movl	$0, chk_fail_allowed(%rip)
    nop
    movq	-56(%rbp), %rax
    xorq	$40, %rax
    je	L194
    call	__stack_chk_fail
L194:
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
