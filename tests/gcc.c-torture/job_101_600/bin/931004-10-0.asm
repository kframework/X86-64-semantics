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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movl	%edi, -244(%rbp)
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	$0, -180(%rbp)
	jmp	L11
L16:
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L12
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	L13
L12:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
L13:
	movzwl	(%rax), %eax
	movw	%ax, -208(%rbp)
	movzbl	-208(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$10, %edx
	cmpl	%edx, %eax
	je	L14
	call	abort
L14:
	movzbl	-207(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$20, %edx
	cmpl	%edx, %eax
	je	L15
	call	abort
L15:
	addl	$1, -180(%rbp)
L11:
	movl	-180(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jl	L16
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	L18
L17:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
L18:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$123, -192(%rbp)
	je	L19
	call	abort
L19:
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$10, -16(%rbp)
	movb	$11, -14(%rbp)
	movb	$12, -12(%rbp)
	movb	$20, -15(%rbp)
	movb	$21, -13(%rbp)
	movb	$22, -11(%rbp)
	movzwl	-12(%rbp), %ecx
	movzwl	-14(%rbp), %edx
	movzwl	-16(%rbp), %eax
	movl	$123, %r8d
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f
	movl	$0, %edi
	call	exit
