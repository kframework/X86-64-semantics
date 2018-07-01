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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	L10
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	jmp	L11
L12:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
L11:
	cmpq	$0, -8(%rbp)
	jne	L12
L10:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	L13
	call	abort
L13:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	jne	L14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
L14:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	je	L9
	call	abort
L9:
	leave
	ret
	.comm	x,64,64
	.comm	y,64,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, y(%rip)
	movq	$145, y+24(%rip)
	movq	$2448, y+32(%rip)
	movq	$-1, x+24(%rip)
	movl	$y, %esi
	movl	$x, %edi
	call	foo
	movl	$0, %edi
	call	exit
