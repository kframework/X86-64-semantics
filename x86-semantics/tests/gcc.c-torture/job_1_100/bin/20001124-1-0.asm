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
isofs_bread:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
do_isofs_readdir:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	4(%rax), %eax
	movb	%al, -25(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	L12
	movl	$0, %eax
	jmp	L13
L12:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	subl	$1, %edx
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movzbl	-25(%rbp), %eax
	sarx	%rax, %rdx, %rax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	L14
L19:
	cmpq	$0, -16(%rbp)
	jne	L15
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	isofs_bread
	movq	%rax, -16(%rbp)
L15:
	movzbl	-25(%rbp), %eax
	movl	-32(%rbp), %edx
	shlx	%eax, %edx, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L16
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
L16:
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	L17
	movl	-24(%rbp), %eax
	subl	$1, %eax
	andl	%eax, -4(%rbp)
L17:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L18
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
L18:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
L14:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jl	L19
	movl	$0, %eax
L13:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$512, -16(%rbp)
	movb	$9, -12(%rbp)
	movq	$2048, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_isofs_readdir
	call	abort
