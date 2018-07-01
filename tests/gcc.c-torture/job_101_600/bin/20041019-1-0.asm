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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
test_store_ccp:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	cmpl	$4, -36(%rbp)
	jg	L21
	leaq	-12(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L21:
	cmpl	$8, -36(%rbp)
	jle	L23
	leaq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	leaq	-20(%rbp), %rax
	movq	%rax, -8(%rbp)
L22:
	movq	-8(%rbp), %rax
	movl	$10, (%rax)
	movl	$3, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	popq	%rbp
	ret
test_store_copy_prop:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	cmpl	$4, -36(%rbp)
	jg	L26
	leaq	-12(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L27
L26:
	cmpl	$8, -36(%rbp)
	jle	L28
	leaq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L27
L28:
	leaq	-20(%rbp), %rax
	movq	%rax, -8(%rbp)
L27:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$10, %edi
	call	test_store_ccp
	movl	%eax, -4(%rbp)
	cmpl	$12, -4(%rbp)
	jne	L31
	call	abort
L31:
	movl	$9, %edi
	call	test_store_copy_prop
	movl	%eax, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jne	L32
	call	abort
L32:
	movl	$0, %eax
	leave
	ret
