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
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$7696, %rsp
	leaq	-2064(%rbp), %rax
	movl	$2048, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-5136(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-6672(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$64, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-7440(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$32, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movabsq	$81985529216486895, %rax
	movq	%rax, -2064(%rbp)
	movl	$19088743, -5136(%rbp)
	movw	$17767, -6672(%rbp)
	movb	$115, -7440(%rbp)
	leaq	-2064(%rbp), %rax
	leaq	-5136(%rbp), %rdx
	leaq	-6672(%rbp), %rcx
	leaq	-7440(%rbp), %rsi
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	movq	-2064(%rbp,%rax,8), %rax
	rorx	$8, %rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -4112(%rbp,%rax,8)
	addl	$1, -4(%rbp)
L10:
	cmpl	$255, -4(%rbp)
	jle	L11
	movl	$0, -4(%rbp)
	jmp	L12
L13:
	movl	-4(%rbp), %eax
	cltq
	movl	-5136(%rbp,%rax,4), %eax
	rorx	$8, %eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -6160(%rbp,%rax,4)
	addl	$1, -4(%rbp)
L12:
	cmpl	$255, -4(%rbp)
	jle	L13
	movl	$0, -4(%rbp)
	jmp	L14
L15:
	movl	-4(%rbp), %eax
	cltq
	movzwl	-6672(%rbp,%rax,2), %eax
	shrw	$9, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movzwl	-6672(%rbp,%rax,2), %eax
	movzwl	%ax, %eax
	sall	$7, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, -7184(%rbp,%rax,2)
	addl	$1, -4(%rbp)
L14:
	cmpl	$255, -4(%rbp)
	jle	L15
	movl	$0, -4(%rbp)
	jmp	L16
L17:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-7440(%rbp,%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-7440(%rbp,%rax), %eax
	movzbl	%al, %eax
	sall	$3, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -7696(%rbp,%rax)
	addl	$1, -4(%rbp)
L16:
	cmpl	$255, -4(%rbp)
	jle	L17
	leaq	-4112(%rbp), %rax
	leaq	-6160(%rbp), %rdx
	leaq	-7184(%rbp), %rcx
	leaq	-7696(%rbp), %rsi
	movq	-4112(%rbp), %rdx
	movabsq	$-1224658842671273011, %rax
	cmpq	%rax, %rdx
	jne	L18
	movq	-4104(%rbp), %rax
	testq	%rax, %rax
	je	L19
L18:
	call	abort
L19:
	movl	-6160(%rbp), %eax
	cmpl	$1728127813, %eax
	jne	L20
	movl	-6156(%rbp), %eax
	testl	%eax, %eax
	je	L21
L20:
	call	abort
L21:
	movzwl	-7184(%rbp), %eax
	cmpw	$-19550, %ax
	jne	L22
	movzwl	-7182(%rbp), %eax
	testw	%ax, %ax
	je	L23
L22:
	call	abort
L23:
	movzbl	-7696(%rbp), %eax
	cmpb	$-101, %al
	jne	L24
	movzbl	-7695(%rbp), %eax
	testb	%al, %al
	je	L25
L24:
	call	abort
L25:
	movl	$0, %eax
	leave
	ret
