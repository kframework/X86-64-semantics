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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$17, %rax
	movw	$25185, (%rax)
	movb	$99, 2(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 24(%rax)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movabsq	$3978425819141910832, %rcx
	movq	%rcx, (%rax)
	movabsq	$3833745473465760056, %rsi
	movq	%rsi, 8(%rax)
	movb	$54, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$17, %rax
	movw	$25185, (%rax)
	movb	$99, 2(%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 24(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movl	$18, %edx
	movl	$71, %esi
	movq	%rax, %rdi
	call	foo
	movl	-12(%rbp), %eax
	cmpl	$71, %eax
	jne	L12
	movl	-8(%rbp), %eax
	cmpl	$18, %eax
	je	L13
L12:
	call	abort
L13:
	leaq	-32(%rbp), %rax
	movl	$26, %edx
	movl	$59, %esi
	movq	%rax, %rdi
	call	bar
	movl	-12(%rbp), %eax
	cmpl	$59, %eax
	jne	L14
	movl	-8(%rbp), %eax
	cmpl	$26, %eax
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
