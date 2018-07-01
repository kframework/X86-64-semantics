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
	leaq	8(%rsp), %r10
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$104, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	leaq	-52(%rbp), %rax
	movl	%eax, -52(%rbp)
	cmpl	$0, -68(%rbp)
	je	L10
	movl	-52(%rbp), %eax
	movl	-68(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	test
	jmp	L12
L10:
	movl	-52(%rbp), %eax
	xorl	-72(%rbp), %eax
L12:
	addq	$104, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	leaq	-4(%rbp), %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	je	L14
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	test2
	jmp	L16
L14:
	movl	-4(%rbp), %eax
	xorl	-24(%rbp), %eax
L16:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test2
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test2
	orl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	test2
	orl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	testl	%eax, %eax
	jne	L18
	movl	-8(%rbp), %eax
	andl	$63, %eax
	testl	%eax, %eax
	je	L18
	movl	$1, %eax
	jmp	L19
L18:
	movl	$0, %eax
L19:
	leave
	ret
	.local	s.2273
	.comm	s.2273,64,64
	.local	s.2282
	.comm	s.2282,1,1
