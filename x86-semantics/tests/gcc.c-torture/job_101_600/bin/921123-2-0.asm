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
	.comm	x,8,2
	.comm	a,4,4
	.comm	b,4,4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movzwl	-12(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, b(%rip)
	movzwl	-10(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, a(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$0, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -16(%rbp)
	movw	$38, -10(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f
	movl	a(%rip), %eax
	cmpl	$38, %eax
	je	L11
	call	abort
L11:
	movl	$0, %edi
	call	exit
