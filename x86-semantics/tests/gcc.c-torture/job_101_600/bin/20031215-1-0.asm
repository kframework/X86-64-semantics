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
ao:
	.long	2
	.long	2
	.string	"OK"
	.zero	1
a:
	.quad	ao
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	movzbl	8(%rdx,%rax), %eax
	testb	%al, %al
	je	L9
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	addq	%rdx, %rax
	addq	$8, %rax
	movb	$0, (%rax)
L9:
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	movzbl	8(%rdx,%rax), %eax
	testb	%al, %al
	je	L11
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	addq	%rdx, %rax
	addq	$8, %rax
	movb	$-1, (%rax)
L11:
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	movzbl	8(%rdx,%rax), %eax
	testb	%al, %al
	je	L13
	movl	$ao, %edx
	movl	$ao, %eax
	movl	4(%rax), %eax
	cltq
	addq	%rdx, %rax
	addq	$8, %rax
	movb	$1, (%rax)
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test1
	call	test2
	call	test3
	movl	$0, %eax
	popq	%rbp
	ret
