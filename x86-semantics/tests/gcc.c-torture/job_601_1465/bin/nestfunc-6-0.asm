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
compare.2271:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r10, %rax
	movl	$L10, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	leaq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	%rsp, -104(%rbp)
	leaq	-112(%rbp), %rax
	addq	$24, %rax
	leaq	-112(%rbp), %rdx
	movl	$compare.2271, %ecx
	movw	$-17599, (%rax)
	movl	%ecx, 2(%rax)
	movw	$-17847, 6(%rax)
	movq	%rdx, 8(%rax)
	movl	$-1864106167, 16(%rax)
	leaq	-112(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	qsort
	call	abort
L10:
	leaq	48(%rbp), %rbp
L12:
	movl	$0, %edi
	call	exit
