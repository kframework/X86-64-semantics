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
	.comm	v,1,1
a:
	.long	1
b:
	.long	1
c:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, v(%rip)
L10:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L11
	popq	%rbp
	ret
LC0:
	.string	"AB"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$1, -36(%rbp)
	movl	$1, -40(%rbp)
	movl	a(%rip), %ecx
	movl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	$3, %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	L13
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L13
	movl	$1, %eax
	jmp	L14
L13:
	movl	$0, %eax
L14:
	movl	%eax, -20(%rbp)
	movl	c(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	imull	%edx, %eax
	movw	%ax, -30(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movzwl	-30(%rbp), %eax
	imull	%eax, %edx
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	movw	%ax, -32(%rbp)
	cmpl	$1, -16(%rbp)
	jne	L15
	movl	$LC0, %edi
	call	foo
L15:
	cmpw	$-1, -32(%rbp)
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
