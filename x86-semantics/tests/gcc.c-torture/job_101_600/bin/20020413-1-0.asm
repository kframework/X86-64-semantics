    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
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
L12:
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
    jne	L12
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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -40(%rbp)
    fld1
    fstpt	-16(%rbp)
    movl	$0, -20(%rbp)
    fldz
    fldt	16(%rbp)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jbe	L40
    fldt	16(%rbp)
    fchs
    fstpt	16(%rbp)
L40:
    fldt	16(%rbp)
    fldt	-16(%rbp)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jb	L53
    jmp	L44
L45:
    fldt	-16(%rbp)
    fadd	%st(0), %st
    fstpt	-16(%rbp)
    movl	-20(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -20(%rbp)
    cmpl	$9, %eax
    jle	L44
    call	abort
L44:
    fldt	16(%rbp)
    fldt	-16(%rbp)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    ja	L45
    jmp	L46
L53:
    fldt	16(%rbp)
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    jp	L48
    fldt	16(%rbp)
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L46
    jmp	L48
L49:
    fldt	-16(%rbp)
    fldt	$LC2(%rip)
    fdivrp	%st, %st(1)
    fstpt	-16(%rbp)
    movl	-20(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -20(%rbp)
    cmpl	$9, %eax
    jle	L48
    call	abort
L48:
    fldt	-16(%rbp)
    fldt	16(%rbp)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    ja	L49
L46:
    movq	-40(%rbp), %rax
    movl	-20(%rbp), %edx
    movl	%edx, (%rax)
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-12(%rbp), %rax
    fldt	$LC4(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movq	%rax, %rdi
    call	test
    addq	$16, %rsp
    leaq	-12(%rbp), %rax
    fldt	$LC5(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movq	%rax, %rdi
    call	test
    addq	$16, %rsp
    leaq	-12(%rbp), %rax
    fldt	$LC6(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movq	%rax, %rdi
    call	test
    addq	$16, %rsp
    leaq	-12(%rbp), %rax
    fldt	$LC7(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    movq	%rax, %rdi
    call	test
    addq	$16, %rsp
    movl	$0, %edi
    call	exit
    .section	.rodata
LC2:
    .long	0
    .long	2147483648
    .long	16384
    .long	0
LC4:
    .long	0
    .long	3221225472
    .long	16384
    .long	0
LC5:
    .long	0
    .long	3758096384
    .long	16384
    .long	0
LC6:
    .long	0
    .long	2147483648
    .long	16385
    .long	0
LC7:
    .long	0
    .long	2684354560
    .long	16385
    .long	0
