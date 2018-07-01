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
	.comm	X,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rcx
	vmovd	%xmm0, %eax
	movl	%eax, %eax
	movq	%rbx, %r8
	movabsq	$-4294967296, %rdi
	andq	%r8, %rdi
	orq	%rdi, %rax
	movq	%rax, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	X(%rip), %eax
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vaddss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, X(%rip)
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-16(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %eax
	movl	$X, %edx
	movq	%rcx, %rdi
	vmovd	%eax, %xmm0
	call	foo
	cmpl	$3, %eax
	jne	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
