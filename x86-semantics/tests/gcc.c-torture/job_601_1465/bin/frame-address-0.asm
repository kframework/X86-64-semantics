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
check_fa_work:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$0, -1(%rbp)
	leaq	-1(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jb	L10
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	L11
	leaq	-1(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	L11
	movl	$1, %eax
	jmp	L16
L11:
	movl	$0, %eax
	jmp	L16
L10:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	L14
	leaq	-1(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	ja	L14
	movl	$1, %eax
	jmp	L15
L14:
	movl	$0, %eax
L15:
	nop
L16:
	popq	%rbp
	ret
check_fa_mid:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rbp, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_fa_work
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	ret
check_fa:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -1(%rbp)
	leaq	-1(%rbp), %rax
	movq	%rax, %rdi
	call	check_fa_mid
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	ret
how_much:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$8, %eax
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	how_much
	cltq
	leaq	31(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_fa
	testl	%eax, %eax
	jne	L24
	call	abort
L24:
	movl	$0, %eax
	leave
	ret
