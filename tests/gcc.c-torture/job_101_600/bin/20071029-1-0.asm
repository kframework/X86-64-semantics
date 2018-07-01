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
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	i.2278(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, i.2278(%rip)
	cmpl	%eax, %ecx
	je	L10
	call	abort
L10:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	L11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L11
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	L11
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	L12
L11:
	call	abort
L12:
	movl	i.2278(%rip), %eax
	cmpl	$20, %eax
	jne	L9
	movl	$0, %edi
	call	exit
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movl	%edi, -68(%rbp)
L15:
	addl	$1, -68(%rbp)
	leaq	-64(%rbp), %rsi
	movl	$0, %eax
	movl	$7, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	test
	jmp	L15
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
L17:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-80(%rbp), %rsi
	movl	$0, %eax
	movl	$7, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$2, -12(%rbp)
	jg	L18
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	L19
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$2, %rax
	je	L20
L19:
	call	abort
L20:
	movl	$10, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
i.2278:
	.long	11
