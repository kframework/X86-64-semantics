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
debug:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
	.comm	errors,4,4
compare:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	L12
	call	debug
	testl	%eax, %eax
	je	L12
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edi
	call	*%rax
	testl	%eax, %eax
	je	L12
	movl	errors(%rip), %eax
	addl	$1, %eax
	movl	%eax, errors(%rip)
L12:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edi
	call	*%rax
	leave
	ret
bad_compare:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	negl	%eax
	popq	%rbp
	ret
array:
	.long	1
	.zero	4
	.quad	bad_compare
	.long	-1
	.zero	4
	.quad	bad_compare
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$compare, %ecx
	movl	$16, %edx
	movl	$2, %esi
	movl	$array, %edi
	call	qsort
	movl	errors(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
