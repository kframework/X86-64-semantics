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
	.local	flag
	.comm	flag,4,4
fetch:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, 4(%rax)
	popq	%rbp
	ret
next:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jl	L11
	movl	flag(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	$0, flag(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fetch
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	next
	jmp	L14
L12:
	movl	$1, flag(%rip)
	movw	$-1, -16(%rbp)
	movzwl	-16(%rbp), %eax
	jmp	L14
L11:
	movw	$0, -16(%rbp)
	movzwl	-16(%rbp), %eax
L14:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, flag(%rip)
	movl	$0, -4(%rbp)
	jmp	L16
L20:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	next
	movw	%ax, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L17
	movzwl	-32(%rbp), %eax
	cmpw	$-1, %ax
	jne	L18
L17:
	cmpl	$0, -4(%rbp)
	jle	L19
	movzwl	-32(%rbp), %eax
	testw	%ax, %ax
	je	L19
L18:
	call	abort
L19:
	addl	$1, -4(%rbp)
L16:
	cmpl	$15, -4(%rbp)
	jle	L20
	movl	$0, %eax
	leave
	ret
