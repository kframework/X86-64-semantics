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
	.comm	a,8192,64
LC0:
	.long	-1
	.long	0
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	movq	LC0(%rip), %rdx
	movq	%rdx, a(,%rax,8)
	addl	$1, -4(%rbp)
L10:
	cmpl	$1023, -4(%rbp)
	jle	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	foo
	movl	$0, -4(%rbp)
	jmp	L13
L15:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,8), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	a+4(,%rax,8), %eax
	cmpl	$-1, %edx
	setne	%dl
	testl	%eax, %eax
	setne	%al
	orl	%edx, %eax
	cmpb	$1, %al
	jne	L14
	call	abort
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$1023, -4(%rbp)
	jle	L15
	movl	$0, %eax
	leave
	ret
