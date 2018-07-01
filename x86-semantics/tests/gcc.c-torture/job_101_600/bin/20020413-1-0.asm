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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	$0, -20(%rbp)
	fldz
	fldt	16(%rbp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	L10
	fldt	16(%rbp)
	fchs
	fstpt	16(%rbp)
L10:
	fldt	16(%rbp)
	fldt	-16(%rbp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	L23
	jmp	L14
L15:
	fldt	-16(%rbp)
	fadd	%st(0), %st
	fstpt	-16(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cmpl	$9, %eax
	jle	L14
	call	abort
L14:
	fldt	16(%rbp)
	fldt	-16(%rbp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	ja	L15
	jmp	L16
L23:
	fldt	16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L22
	fldt	16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L16
L22:
	jmp	L18
L19:
	fldt	-16(%rbp)
	fldt	LC2(%rip)
	fdivrp	%st, %st(1)
	fstpt	-16(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cmpl	$9, %eax
	jle	L18
	call	abort
L18:
	fldt	-16(%rbp)
	fldt	16(%rbp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	ja	L19
L16:
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rcx
	movabsq	$-4611686018427387904, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movq	%rcx, %rdi
	call	test
	addq	$16, %rsp
	leaq	-4(%rbp), %rcx
	movabsq	$-2305843009213693952, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movq	%rcx, %rdi
	call	test
	addq	$16, %rsp
	leaq	-4(%rbp), %rcx
	movabsq	$-9223372036854775808, %rax
	movl	$16385, %edx
	pushq	%rdx
	pushq	%rax
	movq	%rcx, %rdi
	call	test
	addq	$16, %rsp
	leaq	-4(%rbp), %rcx
	movabsq	$-6917529027641081856, %rax
	movl	$16385, %edx
	pushq	%rdx
	pushq	%rax
	movq	%rcx, %rdi
	call	test
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	2147483648
	.long	16384
	.long	0
