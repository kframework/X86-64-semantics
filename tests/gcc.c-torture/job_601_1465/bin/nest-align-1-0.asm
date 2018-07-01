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
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$20, (%rax)
	movq	-8(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	L9
	call	abort
L9:
	leave
	ret
bar.2266:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movl	$-20, %edx
	movl	%edx, (%rax)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, %eax
	movl	%eax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %eax
	call	bar.2266
	movl	-32(%rbp), %eax
	cmpl	$-20, %eax
	je	L13
	call	abort
L13:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check
	movl	-32(%rbp), %eax
	cmpl	$20, %eax
	je	L12
	call	abort
L12:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
