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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	negq	%rax
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L10
L12:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	L11
	movl	$0, %edi
	call	exit
L11:
	addq	$4, -8(%rbp)
L10:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	L12
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	-16(%rbp), %rax
	addq	$4, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	call	abort
