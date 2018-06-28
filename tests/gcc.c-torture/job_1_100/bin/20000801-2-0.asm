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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	L10
L13:
	call	bar
	testl	%eax, %eax
	je	L11
	call	baz
	testl	%eax, %eax
	jne	L11
	jmp	L12
L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
L10:
	cmpq	$0, -8(%rbp)
	jne	L13
L12:
	movq	-8(%rbp), %rax
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	test
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L20
	call	abort
L20:
	movl	$0, %edi
	call	exit
