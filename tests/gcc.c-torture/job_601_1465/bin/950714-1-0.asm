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
array:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L15:
	movq	$array, -16(%rbp)
	jmp	L11
L14:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jne	L12
	jmp	L13
L12:
	addq	$4, -16(%rbp)
L11:
	cmpq	$array+36, -16(%rbp)
	jne	L14
	addl	$1, -4(%rbp)
L10:
	cmpl	$9, -4(%rbp)
	jle	L15
L13:
	cmpl	$1, -4(%rbp)
	je	L16
	call	abort
L16:
	movl	$0, %edi
	call	exit
