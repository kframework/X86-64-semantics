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
Link:
	.long	-1
W:
	.long	2
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
L22:
	cmpl	$2, -4(%rbp)
	jle	L10
L11:
	subl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
	cmpl	$2, -8(%rbp)
	jg	L11
L10:
	cmpl	$1, -8(%rbp)
	jne	L12
	jmp	L24
L12:
	jmp	L14
L15:
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	L14
	addl	$1, -4(%rbp)
L14:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	L15
L18:
	movl	-20(%rbp), %eax
	cltq
	movl	W(,%rax,4), %eax
	movl	%eax, -12(%rbp)
L17:
	cmpl	$0, -12(%rbp)
	je	L16
	movl	$1, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, W(,%rax,4)
L16:
	cmpl	$0, -24(%rbp)
	jle	L17
	cmpl	$0, -20(%rbp)
	jg	L18
L21:
	movl	$0, -24(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	Link(,%rax,4), %eax
	movl	%eax, -20(%rbp)
	jmp	L19
L20:
	cmpl	$-1, -20(%rbp)
	je	L19
	addl	$1, -4(%rbp)
	addl	$1, -24(%rbp)
L19:
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L20
	cmpl	$-1, -20(%rbp)
	jne	L21
	movl	$1, -8(%rbp)
	jmp	L22
L24:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %esi
	movl	$0, %edi
	call	f
	testl	%eax, %eax
	jne	L26
	call	abort
L26:
	movl	$0, %eax
	popq	%rbp
	ret
