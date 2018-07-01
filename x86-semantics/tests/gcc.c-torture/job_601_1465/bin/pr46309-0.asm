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
	.comm	q,8,8
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	L9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	L9
	movq	q(%rip), %rax
	movl	(%rax), %eax
	andl	$263, %eax
	testl	%eax, %eax
	je	L9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movl	$3, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, q(%rip)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movl	$0, %eax
	leave
	ret
