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
	.comm	x00,4,4
	.comm	x01,4,4
	.comm	y00,4,4
	.comm	y01,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movzbl	-16(%rbp), %eax
	orl	$2, %eax
	movb	%al, -16(%rbp)
	movzbl	-14(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -14(%rbp)
	movl	$22, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, x00(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, x01(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, y00(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, y01(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	L10
	call	abort
L10:
	movzbl	-62(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L11
	call	abort
L11:
	movl	-60(%rbp), %eax
	cmpl	$22, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
