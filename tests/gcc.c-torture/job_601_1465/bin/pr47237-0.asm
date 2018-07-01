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
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
bar:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$512, %rsp
	movq	%rax, -392(%rbp)
	movq	%rdx, -384(%rbp)
	movq	%rcx, -376(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdi, -360(%rbp)
	vmovaps	%ymm0, -336(%rbp)
	vmovaps	%ymm1, -304(%rbp)
	vmovaps	%ymm2, -272(%rbp)
	vmovaps	%ymm3, -240(%rbp)
	vmovaps	%ymm4, -208(%rbp)
	vmovaps	%ymm5, -176(%rbp)
	vmovaps	%ymm6, -144(%rbp)
	vmovaps	%ymm7, -112(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r10, %rax
	movq	%rax, -400(%rbp)
	leaq	-400(%rbp), %rbx
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movq	%rbx, %r9
	movq	(%r9), %rcx
	movq	%rsp, %rbx
	movl	$16, %eax
	subq	$1, %rax
	addq	$47, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	8(%r9), %rax
	movq	16(%r9), %rdx
	movq	24(%r9), %rcx
	movq	32(%r9), %rsi
	movq	40(%r9), %rdi
	vmovdqu	64(%r9), %ymm0
	vmovdqu	96(%r9), %ymm1
	vmovdqu	128(%r9), %ymm2
	vmovdqu	160(%r9), %ymm3
	vmovdqu	192(%r9), %ymm4
	vmovdqu	224(%r9), %ymm5
	vmovdqu	256(%r9), %ymm6
	vmovdqu	288(%r9), %ymm7
	movq	320(%r9), %r8
	movq	328(%r9), %r9
	movl	$7, %eax
	call	foo
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdi, -504(%rbp)
	fstpt	-496(%rbp)
	fstpt	-480(%rbp)
	vmovaps	%ymm0, -464(%rbp)
	vmovaps	%ymm1, -432(%rbp)
	movq	%rbx, %rsp
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	call	bar
	movl	$0, %eax
	popq	%rbp
	ret
