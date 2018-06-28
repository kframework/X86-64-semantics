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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	cmpl	$0, -4(%rbp)
	jle	L11
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	movl	-4(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
L10:
	cmpl	$5, -4(%rbp)
	jle	L13
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	cmpl	$15, %eax
	je	L18
	call	abort
L18:
	movl	$0, %edi
	call	exit
