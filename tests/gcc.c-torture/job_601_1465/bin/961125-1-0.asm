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
begfield:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -8(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	jmp	L11
L16:
	jmp	L12
L14:
	addq	$1, -16(%rbp)
L12:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	L13
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jne	L14
L13:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	L11
	addq	$1, -16(%rbp)
L11:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	L15
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -8(%rbp)
	testl	%eax, %eax
	jne	L16
	jmp	L15
L10:
	jmp	L10
L15:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	ja	L17
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
L17:
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	":ab"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$LC0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$58, %edi
	call	begfield
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	je	L20
	call	abort
L20:
	movl	$0, %edi
	call	exit
