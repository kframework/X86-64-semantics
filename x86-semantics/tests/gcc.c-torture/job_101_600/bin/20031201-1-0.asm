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
test_length:
	.long	2
	.local	i
	.comm	i,8,8
m:
	.long	1
d:
	.long	1
	.local	test_t0
	.comm	test_t0,8,8
	.local	test_t1
	.comm	test_t1,8,8
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, i(%rip)
	movw	$32, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -48(%rbp)
	movq	i(%rip), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movq	i(%rip), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 4(%rax)
L10:
	call	f0
	movq	test_t1(%rip), %rax
	testq	%rax, %rax
	jne	L10
	movw	$8, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -48(%rbp)
	movq	i(%rip), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movq	i(%rip), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 4(%rax)
	call	test
	movl	m(%rip), %eax
	testl	%eax, %eax
	je	L11
	movl	test_length(%rip), %eax
	imull	$2170, %eax, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	test_t1(%rip), %rdx
	movq	test_t0(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	andl	$2147483647, %eax
	cmpq	$1000, %rax
	jbe	L11
	call	f0
L11:
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	test_length(%rip), %eax
	imull	$2170, %eax, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	test_t1(%rip), %rdx
	movq	test_t0(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	andl	$2147483647, %eax
	cmpq	$1000, %rax
	jbe	L12
	call	f0
L12:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f1
	call	abort
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	i(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$8, %ax
	jne	L16
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	cmpw	$8, %ax
	je	L17
L16:
	call	abort
L17:
	movl	$0, %edi
	call	exit
f0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	i(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	washere.2300(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, washere.2300(%rip)
	testl	%eax, %eax
	jne	L19
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$32, %ax
	jne	L19
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	cmpw	$32, %ax
	je	L18
L19:
	call	abort
L18:
	leave
	ret
	.local	washere.2300
	.comm	washere.2300,4,4
