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
	.comm	s2848,16,16
	.comm	fails,4,4
check2848va:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
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
	movl	-232(%rbp), %eax
	cmpl	$40, %eax
	jae	L11
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rcx
	addq	$8, %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rcx)
	movl	-232(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -232(%rbp)
	jmp	L12
L11:
	movq	-224(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -224(%rbp)
L12:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movl	s2848(%rip), %edx
	movl	-208(%rbp), %eax
	cmpl	%eax, %edx
	je	L13
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
L13:
	movl	s2848+4(%rip), %esi
	movl	s2848+8(%rip), %edx
	movl	-204(%rbp), %ecx
	movl	-200(%rbp), %eax
	cmpl	%ecx, %esi
	setne	%cl
	cmpl	%eax, %edx
	setne	%al
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L9
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
L9:
	leave
	ret
LC0:
	.long	723419448
	.long	-218144346
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-267489557, s2848(%rip)
	movq	LC0(%rip), %rax
	movq	%rax, s2848+4(%rip)
	movq	s2848(%rip), %rdx
	movl	s2848+8(%rip), %eax
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	$1, %edi
	movl	$0, %eax
	call	check2848va
	movl	fails(%rip), %eax
	testl	%eax, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
