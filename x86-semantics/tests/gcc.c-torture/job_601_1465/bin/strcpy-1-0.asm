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
	.local	u1
	.comm	u1,112,64
	.local	u2
	.comm	u2,112,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L30:
	movl	$0, -8(%rbp)
	jmp	L11
L29:
	movl	$1, -12(%rbp)
	jmp	L12
L28:
	movl	$0, -16(%rbp)
	movb	$65, -25(%rbp)
	jmp	L13
L15:
	movl	-16(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -25(%rbp)
	jle	L14
	movb	$65, -25(%rbp)
L14:
	movl	-16(%rbp), %eax
	cltq
	movzbl	-25(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -16(%rbp)
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movb	%al, -25(%rbp)
L13:
	movl	-16(%rbp), %eax
	cmpl	$96, %eax
	jbe	L15
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	movb	$0, u2(%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	u2(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	$u1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u1, %rax
	cmpq	-40(%rbp), %rax
	je	L16
	call	abort
L16:
	movq	$u1, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	L17
L19:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L18
	call	abort
L18:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
L17:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L19
	movl	$0, -16(%rbp)
	movl	-8(%rbp), %eax
	addl	$65, %eax
	movb	%al, -25(%rbp)
	jmp	L20
L23:
	cmpb	$95, -25(%rbp)
	jle	L21
	movb	$65, -25(%rbp)
L21:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	je	L22
	call	abort
L22:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movb	%al, -25(%rbp)
L20:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L23
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L24
	call	abort
L24:
	movl	$0, -16(%rbp)
	jmp	L25
L27:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L26
	call	abort
L26:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
L25:
	movl	-16(%rbp), %eax
	cmpl	$7, %eax
	jbe	L27
	addl	$1, -12(%rbp)
L12:
	movl	-12(%rbp), %eax
	cmpl	$79, %eax
	jbe	L28
	addl	$1, -8(%rbp)
L11:
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	jbe	L29
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L30
	movl	$0, %edi
	call	exit
