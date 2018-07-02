strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
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
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
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
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
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
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
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
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
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
C:
	.long	0
	.long	2684354560
	.long	16385
	.long	0
U:
	.long	0
	.long	2147483648
	.long	16383
	.long	0
Y2:
	.long	0
	.long	2952790016
	.long	16386
	.long	0
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
	jp	L44
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	Y(%rip)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	jp	L45
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	X(%rip)
	fldt	LC3(%rip)
	fucomip	%st(1), %st
	jp	L46
	fldt	LC3(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	Y1(%rip)
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	jp	L47
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	R(%rip)
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	jp	L48
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	S(%rip)
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	jp	L49
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	T(%rip)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L50
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L40
	fldt	Y2(%rip)
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	jp	L51
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L43
	jmp	L40
L44:
	fstp	%st(0)
	jmp	L40
L45:
	fstp	%st(0)
	jmp	L40
L46:
	fstp	%st(0)
	jmp	L40
L47:
	fstp	%st(0)
	jmp	L40
L48:
	fstp	%st(0)
	jmp	L40
L49:
	fstp	%st(0)
	jmp	L40
L50:
	fstp	%st(0)
	jmp	L40
L51:
	fstp	%st(0)
L40:
	call	abort
L43:
	movl	$0, %edi
	call	exit
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
