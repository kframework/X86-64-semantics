    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
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
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
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
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
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
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .globl	feq
feq:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    jne	L54
    movl	$13, %eax
    jmp	L55
L54:
    movl	$140, %eax
L55:
    popq	%rbp
    ret
    .globl	fne
fne:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    je	L57
    movl	$13, %eax
    jmp	L58
L57:
    movl	$140, %eax
L58:
    popq	%rbp
    ret
    .globl	flt
flt:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    jns	L60
    movl	$13, %eax
    jmp	L61
L60:
    movl	$140, %eax
L61:
    popq	%rbp
    ret
    .globl	fge
fge:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    js	L63
    movl	$13, %eax
    jmp	L64
L63:
    movl	$140, %eax
L64:
    popq	%rbp
    ret
    .globl	fgt
fgt:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    jle	L66
    movl	$13, %eax
    jmp	L67
L66:
    movl	$140, %eax
L67:
    popq	%rbp
    ret
    .globl	fle
fle:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    cmpq	$0, -8(%rbp)
    jg	L69
    movl	$13, %eax
    jmp	L70
L69:
    movl	$140, %eax
L70:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    movl	$0, %eax
    call	feq
    cmpl	$13, %eax
    je	L72
    call	abort
L72:
    movq	$-1, %rdi
    movl	$0, %eax
    call	feq
    cmpl	$140, %eax
    je	L73
    call	abort
L73:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	feq
    cmpl	$140, %eax
    je	L74
    call	abort
L74:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	feq
    cmpl	$140, %eax
    je	L75
    call	abort
L75:
    movl	$1, %edi
    movl	$0, %eax
    call	feq
    cmpl	$140, %eax
    je	L76
    call	abort
L76:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	feq
    cmpl	$140, %eax
    je	L77
    call	abort
L77:
    movl	$0, %edi
    movl	$0, %eax
    call	fne
    cmpl	$140, %eax
    je	L78
    call	abort
L78:
    movq	$-1, %rdi
    movl	$0, %eax
    call	fne
    cmpl	$13, %eax
    je	L79
    call	abort
L79:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	fne
    cmpl	$13, %eax
    je	L80
    call	abort
L80:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	fne
    cmpl	$13, %eax
    je	L81
    call	abort
L81:
    movl	$1, %edi
    movl	$0, %eax
    call	fne
    cmpl	$13, %eax
    je	L82
    call	abort
L82:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	fne
    cmpl	$13, %eax
    je	L83
    call	abort
L83:
    movl	$0, %edi
    movl	$0, %eax
    call	flt
    cmpl	$140, %eax
    je	L84
    call	abort
L84:
    movq	$-1, %rdi
    movl	$0, %eax
    call	flt
    cmpl	$13, %eax
    je	L85
    call	abort
L85:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	flt
    cmpl	$13, %eax
    je	L86
    call	abort
L86:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	flt
    cmpl	$13, %eax
    je	L87
    call	abort
L87:
    movl	$1, %edi
    movl	$0, %eax
    call	flt
    cmpl	$140, %eax
    je	L88
    call	abort
L88:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	flt
    cmpl	$140, %eax
    je	L89
    call	abort
L89:
    movl	$0, %edi
    movl	$0, %eax
    call	fge
    cmpl	$13, %eax
    je	L90
    call	abort
L90:
    movq	$-1, %rdi
    movl	$0, %eax
    call	fge
    cmpl	$140, %eax
    je	L91
    call	abort
L91:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	fge
    cmpl	$140, %eax
    je	L92
    call	abort
L92:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	fge
    cmpl	$140, %eax
    je	L93
    call	abort
L93:
    movl	$1, %edi
    movl	$0, %eax
    call	fge
    cmpl	$13, %eax
    je	L94
    call	abort
L94:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	fge
    cmpl	$13, %eax
    je	L95
    call	abort
L95:
    movl	$0, %edi
    movl	$0, %eax
    call	fgt
    cmpl	$140, %eax
    je	L96
    call	abort
L96:
    movq	$-1, %rdi
    movl	$0, %eax
    call	fgt
    cmpl	$140, %eax
    je	L97
    call	abort
L97:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	fgt
    cmpl	$140, %eax
    je	L98
    call	abort
L98:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	fgt
    cmpl	$140, %eax
    je	L99
    call	abort
L99:
    movl	$1, %edi
    movl	$0, %eax
    call	fgt
    cmpl	$13, %eax
    je	L100
    call	abort
L100:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	fgt
    cmpl	$13, %eax
    je	L101
    call	abort
L101:
    movl	$0, %edi
    movl	$0, %eax
    call	fle
    cmpl	$13, %eax
    je	L102
    call	abort
L102:
    movq	$-1, %rdi
    movl	$0, %eax
    call	fle
    cmpl	$13, %eax
    je	L103
    call	abort
L103:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	fle
    cmpl	$13, %eax
    je	L104
    call	abort
L104:
    movabsq	$-9223372036854775807, %rdi
    movl	$0, %eax
    call	fle
    cmpl	$13, %eax
    je	L105
    call	abort
L105:
    movl	$1, %edi
    movl	$0, %eax
    call	fle
    cmpl	$140, %eax
    je	L106
    call	abort
L106:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	fle
    cmpl	$140, %eax
    je	L107
    call	abort
L107:
    movl	$0, %edi
    call	exit
