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
	.comm	i,4,4
	.comm	x,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	x(%rip), %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$32, -4(%rbp)
	cmpl	$31, -8(%rbp)
	jbe	L10
	call	abort
L10:
	cmpl	$0, -8(%rbp)
	je	L11
	movl	-8(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -4(%rbp)
L11:
	jmp	L12
L13:
	movl	$32, -4(%rbp)
	movl	$1, i(%rip)
L12:
	cmpl	$32, -4(%rbp)
	jne	L13
	movl	i(%rip), %eax
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
