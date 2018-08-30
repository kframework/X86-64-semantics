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
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jge	L60
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jl	L63
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
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
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jg	L69
    movl	$13, %eax
    jmp	L70
L69:
    movl	$140, %eax
L70:
    popq	%rbp
    ret
    .globl	fltu
fltu:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jnb	L72
    movl	$13, %eax
    jmp	L73
L72:
    movl	$140, %eax
L73:
    popq	%rbp
    ret
    .globl	fgeu
fgeu:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jb	L75
    movl	$13, %eax
    jmp	L76
L75:
    movl	$140, %eax
L76:
    popq	%rbp
    ret
    .globl	fgtu
fgtu:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jbe	L78
    movl	$13, %eax
    jmp	L79
L78:
    movl	$140, %eax
L79:
    popq	%rbp
    ret
    .globl	fleu
fleu:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    ja	L81
    movl	$13, %eax
    jmp	L82
L81:
    movl	$140, %eax
L82:
    popq	%rbp
    ret
    .globl	args
    .data
args:
    .quad	0
    .quad	1
    .quad	-1
    .quad	9223372036854775807
    .quad	-9223372036854775808
    .quad	-9223372036854775807
    .quad	1891269347843992664
    .quad	-7816825554603336956
    .globl	correct_results
correct_results:
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	13
    .long	140
    .long	13
    .long	140
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .long	140
    .long	13
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$correct_results, -24(%rbp)
    movl	$0, -32(%rbp)
    jmp	L84
L97:
    movl	-32(%rbp), %eax
    cltq
    movq	args(,%rax,8), %rax
    movq	%rax, -16(%rbp)
    movl	$0, -28(%rbp)
    jmp	L85
L96:
    movl	-28(%rbp), %eax
    cltq
    movq	args(,%rax,8), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	feq
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L86
    call	abort
L86:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fne
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L87
    call	abort
L87:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	flt
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L88
    call	abort
L88:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fge
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L89
    call	abort
L89:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fgt
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L90
    call	abort
L90:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fle
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L91
    call	abort
L91:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fltu
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L92
    call	abort
L92:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fgeu
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L93
    call	abort
L93:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fgtu
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L94
    call	abort
L94:
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    movl	$0, %eax
    call	fleu
    movl	%eax, %ecx
    movq	-24(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movl	(%rax), %eax
    cmpl	%eax, %ecx
    je	L95
    call	abort
L95:
    addl	$1, -28(%rbp)
L85:
    cmpl	$7, -28(%rbp)
    jle	L96
    addl	$1, -32(%rbp)
L84:
    cmpl	$7, -32(%rbp)
    jle	L97
    movl	$0, %edi
    call	exit
