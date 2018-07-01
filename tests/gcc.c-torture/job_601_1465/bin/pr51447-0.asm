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
bar.2261:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	%r10, %rax
	movq	-8(%rbp), %rbx
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rsp, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %r10
	movl	$L12, %edi
	call	bar.2261
	movl	$1, %eax
	jmp	L13
L10:
	leaq	32(%rbp), %rbp
L12:
	movq	%rbx, %rax
	cmpq	$L12, %rax
	je	L14
	call	abort
L14:
	movl	$0, %eax
L13:
	addq	$32, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
