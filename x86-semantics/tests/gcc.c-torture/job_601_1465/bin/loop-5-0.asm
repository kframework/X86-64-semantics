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
testit:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$3, -20(%rbp)
	movl	$1, -8(%rbp)
	movl	$3, -12(%rbp)
	movl	$1, -4(%rbp)
	jmp	L10
L13:
	cmpl	$1, -8(%rbp)
	jne	L11
	movl	$4, -12(%rbp)
	jmp	L12
L11:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
L12:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, %edi
	call	ap
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
L10:
	cmpl	$4, -4(%rbp)
	jle	L13
	leave
	ret
	.local	t
	.comm	t,4,4
	.local	a
	.comm	a,16,16
ap:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	t(%rip), %eax
	cmpl	$3, %eax
	jle	L15
	call	abort
L15:
	movl	t(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, t(%rip)
	cltq
	movl	-4(%rbp), %edx
	movl	%edx, a(,%rax,4)
	movl	$1, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	testit
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L18
	call	abort
L18:
	movl	a+4(%rip), %eax
	cmpl	$3, %eax
	je	L19
	call	abort
L19:
	movl	a+8(%rip), %eax
	cmpl	$2, %eax
	je	L20
	call	abort
L20:
	movl	a+12(%rip), %eax
	cmpl	$1, %eax
	je	L21
	call	abort
L21:
	movl	$0, %edi
	call	exit
