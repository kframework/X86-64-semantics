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
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, %eax
    movb	%al, -20(%rbp)
    movl	$0, -4(%rbp)
    movsbl	-20(%rbp), %eax
    addl	$62, %eax
    cmpl	$160, %eax
    ja	L54
    movl	%eax, %eax
    movq	L56(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L56:
    .quad	L55
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L57
    .quad	L58
    .quad	L59
    .quad	L60
    .quad	L61
    .quad	L62
    .quad	L63
    .quad	L64
    .quad	L65
    .quad	L66
    .quad	L67
    .quad	L68
    .quad	L69
    .quad	L70
    .quad	L71
    .quad	L72
    .quad	L73
    .quad	L74
    .quad	L75
    .quad	L76
    .quad	L77
    .quad	L78
    .quad	L79
    .quad	L80
    .quad	L81
    .quad	L82
    .quad	L83
    .quad	L84
    .quad	L85
    .quad	L86
    .quad	L87
    .quad	L88
    .quad	L89
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L90
    .text
L57:
    movl	$1, -4(%rbp)
    jmp	L54
L58:
    movl	$7, -4(%rbp)
    jmp	L54
L59:
    movl	$2, -4(%rbp)
    jmp	L54
L60:
    movl	$19, -4(%rbp)
    jmp	L54
L61:
    movl	$5, -4(%rbp)
    jmp	L54
L62:
    movl	$17, -4(%rbp)
    jmp	L54
L63:
    movl	$31, -4(%rbp)
    jmp	L54
L64:
    movl	$8, -4(%rbp)
    jmp	L54
L65:
    movl	$28, -4(%rbp)
    jmp	L54
L66:
    movl	$16, -4(%rbp)
    jmp	L54
L67:
    movl	$31, -4(%rbp)
    jmp	L54
L68:
    movl	$12, -4(%rbp)
    jmp	L54
L69:
    movl	$15, -4(%rbp)
    jmp	L54
L70:
    movl	$111, -4(%rbp)
    jmp	L54
L71:
    movl	$17, -4(%rbp)
    jmp	L54
L72:
    movl	$10, -4(%rbp)
    jmp	L54
L73:
    movl	$31, -4(%rbp)
    jmp	L54
L74:
    movl	$7, -4(%rbp)
    jmp	L54
L75:
    movl	$2, -4(%rbp)
    jmp	L54
L76:
    movl	$19, -4(%rbp)
    jmp	L54
L77:
    movl	$5, -4(%rbp)
    jmp	L54
L78:
    movl	$107, -4(%rbp)
    jmp	L54
L79:
    movl	$31, -4(%rbp)
    jmp	L54
L80:
    movl	$8, -4(%rbp)
    jmp	L54
L81:
    movl	$28, -4(%rbp)
    jmp	L54
L82:
    movl	$106, -4(%rbp)
    jmp	L54
L83:
    movl	$31, -4(%rbp)
    jmp	L54
L84:
    movl	$102, -4(%rbp)
    jmp	L54
L85:
    movl	$105, -4(%rbp)
    jmp	L54
L86:
    movl	$111, -4(%rbp)
    jmp	L54
L87:
    movl	$17, -4(%rbp)
    jmp	L54
L88:
    movl	$10, -4(%rbp)
    jmp	L54
L89:
    movl	$31, -4(%rbp)
    jmp	L54
L90:
    movl	$18, -4(%rbp)
    jmp	L54
L55:
    movl	$19, -4(%rbp)
    nop
L54:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$98, %edi
    call	foo
    cmpl	$18, %eax
    jne	L93
    movl	$97, %edi
    call	foo
    testl	%eax, %eax
    jne	L93
    movl	$99, %edi
    call	foo
    testl	%eax, %eax
    je	L94
L93:
    call	abort
L94:
    movl	$-62, %edi
    call	foo
    cmpl	$19, %eax
    jne	L95
    movl	$-63, %edi
    call	foo
    testl	%eax, %eax
    jne	L95
    movl	$-61, %edi
    call	foo
    testl	%eax, %eax
    je	L96
L95:
    call	abort
L96:
    movl	$28, %edi
    call	foo
    cmpl	$105, %eax
    jne	L97
    movl	$27, %edi
    call	foo
    cmpl	$102, %eax
    jne	L97
    movl	$29, %edi
    call	foo
    cmpl	$111, %eax
    je	L98
L97:
    call	abort
L98:
    movl	$0, %eax
    popq	%rbp
    ret
