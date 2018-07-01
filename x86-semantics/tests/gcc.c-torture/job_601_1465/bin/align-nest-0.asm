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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-84(%rbp), %esi
	movslq	%esi, %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movslq	%esi, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%esi, %rax
	salq	$2, %rax
	leaq	1(%rax), %rdi
	movslq	%esi, %rax
	salq	$2, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%r8, %rax
	movq	%r9, %rdx
	addq	$5, %rax
	adcq	$0, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %rcx
	andq	$-32, %rcx
	movq	%rcx, -112(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -104(%rbp)
	movslq	%esi, %rax
	addq	$2, %rax
	leaq	0(,%rax,4), %rcx
	movslq	%esi, %rax
	salq	$2, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r12, %rax
	movq	%r13, %rdx
	addq	$5, %rax
	adcq	$0, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %r9
	andq	$-32, %r9
	movq	%r9, -128(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -120(%rbp)
	movslq	%esi, %rax
	salq	$2, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%r10, %rax
	movq	%r11, %rdx
	addq	$5, %rax
	adcq	$0, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %r11
	andq	$-32, %r11
	movq	%r11, -144(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -136(%rbp)
	movslq	%esi, %rax
	addq	$2, %rax
	salq	$3, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -52(%rbp)
	jmp	L10
L11:
	movq	%rcx, %rsi
	shrq	$2, %rsi
	movq	-72(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	salq	$2, %rax
	addq	%rdi, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -52(%rbp)
L10:
	cmpl	$1, -52(%rbp)
	jle	L11
	movq	%rbx, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
