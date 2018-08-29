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
    .globl	C
    .data
C:
    .long	0
    .long	2684354560
    .long	16385
    .long	0
    .globl	U
U:
    .long	0
    .long	2147483648
    .long	16383
    .long	0
    .globl	Y2
Y2:
    .long	0
    .long	2952790016
    .long	16386
    .long	0
    .globl	Y1
Y1:
    .long	0
    .long	2281701376
    .long	16387
    .long	0
    .comm	X,16,16
    .comm	Y,16,16
    .comm	Z,16,16
    .comm	T,16,16
    .comm	R,16,16
    .comm	S,16,16
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    fldt	C(%rip)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fldt	Y2(%rip)
    fmulp	%st, %st(1)
    fstpt	X(%rip)
    fldt	C(%rip)
    fldt	U(%rip)
    fsubrp	%st, %st(1)
    fldt	U(%rip)
    fsubrp	%st, %st(1)
    fstpt	Y(%rip)
    fldt	C(%rip)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fstpt	Z(%rip)
    fldt	C(%rip)
    fldt	U(%rip)
    fsubrp	%st, %st(1)
    fldt	Y1(%rip)
    fmulp	%st, %st(1)
    fstpt	T(%rip)
    fldt	X(%rip)
    fldt	Z(%rip)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fsubrp	%st, %st(1)
    fstpt	X(%rip)
    fldt	Y(%rip)
    fldt	Y1(%rip)
    fmulp	%st, %st(1)
    fstpt	R(%rip)
    fldt	Z(%rip)
    fldt	Y2(%rip)
    fmulp	%st, %st(1)
    fstpt	S(%rip)
    fldt	T(%rip)
    fldt	Y(%rip)
    fsubrp	%st, %st(1)
    fstpt	T(%rip)
    fldt	U(%rip)
    fldt	Y(%rip)
    fsubrp	%st, %st(1)
    fldt	R(%rip)
    faddp	%st, %st(1)
    fstpt	Y(%rip)
    fldt	S(%rip)
    fldt	Z(%rip)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fsubrp	%st, %st(1)
    fstpt	Z(%rip)
    fldt	Y2(%rip)
    fldt	U(%rip)
    faddp	%st, %st(1)
    fldt	Y1(%rip)
    fmulp	%st, %st(1)
    fstpt	R(%rip)
    fldt	Y2(%rip)
    fldt	Y1(%rip)
    fmulp	%st, %st(1)
    fstpt	Y1(%rip)
    fldt	R(%rip)
    fldt	Y2(%rip)
    fsubrp	%st, %st(1)
    fstpt	R(%rip)
    fldt	Y1(%rip)
    fldt	LC0(%rip)
    fsubrp	%st, %st(1)
    fstpt	Y1(%rip)
    fldt	Z(%rip)
    fldt	LC1(%rip)
    fucomip	%st(1), %st
    jp	L58
    fldt	LC1(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	Y(%rip)
    fldt	LC2(%rip)
    fucomip	%st(1), %st
    jp	L59
    fldt	LC2(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	X(%rip)
    fldt	LC3(%rip)
    fucomip	%st(1), %st
    jp	L60
    fldt	LC3(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	Y1(%rip)
    fldt	LC4(%rip)
    fucomip	%st(1), %st
    jp	L61
    fldt	LC4(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	R(%rip)
    fldt	LC5(%rip)
    fucomip	%st(1), %st
    jp	L62
    fldt	LC5(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	S(%rip)
    fldt	LC6(%rip)
    fucomip	%st(1), %st
    jp	L63
    fldt	LC6(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	T(%rip)
    fldt	LC7(%rip)
    fucomip	%st(1), %st
    jp	L64
    fldt	LC7(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L54
    fldt	Y2(%rip)
    fldt	LC8(%rip)
    fucomip	%st(1), %st
    jp	L65
    fldt	LC8(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L57
    jmp	L54
L58:
    fstp	%st(0)
    jmp	L54
L59:
    fstp	%st(0)
    jmp	L54
L60:
    fstp	%st(0)
    jmp	L54
L61:
    fstp	%st(0)
    jmp	L54
L62:
    fstp	%st(0)
    jmp	L54
L63:
    fstp	%st(0)
    jmp	L54
L64:
    fstp	%st(0)
    jmp	L54
L65:
    fstp	%st(0)
L54:
    call	abort
L57:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	2147483648
    .long	16382
    .long	0
LC1:
    .long	0
    .long	2281701376
    .long	16389
    .long	0
LC2:
    .long	0
    .long	3288334336
    .long	16388
    .long	0
LC3:
    .long	0
    .long	3892314112
    .long	16388
    .long	0
LC4:
    .long	0
    .long	3128950784
    .long	16390
    .long	0
LC5:
    .long	0
    .long	3238002688
    .long	16390
    .long	0
LC6:
    .long	0
    .long	2583691264
    .long	16389
    .long	0
LC7:
    .long	0
    .long	2181038080
    .long	16389
    .long	0
LC8:
    .long	0
    .long	2952790016
    .long	16386
    .long	0
