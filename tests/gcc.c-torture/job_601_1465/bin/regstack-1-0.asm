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
	jp	L14
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	Y(%rip)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	jp	L15
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	X(%rip)
	fldt	LC3(%rip)
	fucomip	%st(1), %st
	jp	L16
	fldt	LC3(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	Y1(%rip)
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	jp	L17
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	R(%rip)
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	jp	L18
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	S(%rip)
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	jp	L19
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	T(%rip)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L20
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L10
	fldt	Y2(%rip)
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	jp	L21
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L13
	jmp	L10
L14:
	fstp	%st(0)
	jmp	L10
L15:
	fstp	%st(0)
	jmp	L10
L16:
	fstp	%st(0)
	jmp	L10
L17:
	fstp	%st(0)
	jmp	L10
L18:
	fstp	%st(0)
	jmp	L10
L19:
	fstp	%st(0)
	jmp	L10
L20:
	fstp	%st(0)
	jmp	L10
L21:
	fstp	%st(0)
L10:
	call	abort
L13:
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
