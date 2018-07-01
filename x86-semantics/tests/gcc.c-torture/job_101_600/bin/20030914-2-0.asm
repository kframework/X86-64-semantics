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
	subq	$72, %rsp
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
	movl	%edi, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	ret
	.comm	gs,72,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$72, %rsp
	movq	%rsp, %rax
	movq	gs(%rip), %rdx
	movq	%rdx, (%rax)
	movq	gs+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	gs+16(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	gs+24(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	gs+32(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	gs+40(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	gs+48(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	gs+56(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	gs+64(%rip), %rdx
	movq	%rdx, 64(%rax)
	movl	$4660, %edi
	movl	$0, %eax
	call	f
	addq	$80, %rsp
	cmpl	$4660, %eax
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
