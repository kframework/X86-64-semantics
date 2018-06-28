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
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	$7, (%rax)
	movl	$1, %eax
	popq	%rbp
	ret
bogus:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dummy
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L12
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	L12
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
L12:
	cmpq	$0, -40(%rbp)
	je	L13
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	L13
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$1, %edx
	movb	%dl, (%rax)
L13:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L11
	call	abort
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	bogus
	movl	$0, %edi
	call	exit
