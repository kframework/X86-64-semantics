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
one:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
zero:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	call	one
	leaq	-32(%rbp), %rbx
	call	zero
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, (%rbx)
	movl	%eax, 8(%rbx)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	L14
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	L14
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
