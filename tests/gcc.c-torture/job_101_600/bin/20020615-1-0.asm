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
line_hints:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	L10
	negq	-8(%rbp)
L10:
	cmpl	$0, -24(%rbp)
	je	L11
	negq	-16(%rbp)
L11:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L12
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
L12:
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, %rdx
	xorq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, %rdx
	xorq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -16(%rbp)
	je	L13
	movq	-64(%rbp), %rax
	sarq	$4, %rax
	cmpq	-56(%rbp), %rax
	jl	L13
	cmpq	$0, -16(%rbp)
	jle	L14
	movl	$2, %eax
	jmp	L15
L14:
	movl	$1, %eax
L15:
	movl	%eax, -28(%rbp)
	cmpl	$0, -20(%rbp)
	je	L16
	xorl	$3, -28(%rbp)
	jmp	L17
L16:
	jmp	L17
L13:
	cmpq	$0, -8(%rbp)
	je	L18
	movq	-56(%rbp), %rax
	sarq	$4, %rax
	cmpq	-64(%rbp), %rax
	jl	L18
	cmpq	$0, -8(%rbp)
	jns	L19
	movl	$8, %eax
	jmp	L20
L19:
	movl	$4, %eax
L20:
	movl	%eax, -28(%rbp)
	cmpl	$0, -24(%rbp)
	je	L21
	xorl	$12, -28(%rbp)
	jmp	L17
L21:
	jmp	L17
L18:
	movl	$0, -28(%rbp)
L17:
	movl	-28(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$gsf.2279+16, %edx
	movl	$gsf.2279, %esi
	movl	$fh.2278, %edi
	call	line_hints
	cmpl	$1, %eax
	jne	L24
	movl	$gsf.2279+48, %edx
	movl	$gsf.2279+32, %esi
	movl	$fh.2278+12, %edi
	call	line_hints
	cmpl	$8, %eax
	jne	L24
	movl	$gsf.2279+48, %edx
	movl	$gsf.2279+32, %esi
	movl	$fh.2278+24, %edi
	call	line_hints
	cmpl	$4, %eax
	je	L25
L24:
	call	abort
L25:
	movl	$0, %edi
	call	exit
fh.2278:
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
gsf.2279:
	.quad	196608
	.quad	80216
	.quad	196608
	.quad	98697
	.quad	80216
	.quad	196608
	.quad	98697
	.quad	196608
