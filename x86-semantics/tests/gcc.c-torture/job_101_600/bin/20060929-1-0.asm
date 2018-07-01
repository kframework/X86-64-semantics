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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rdx
	leaq	4(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$42, -4(%rbp)
	movl	$0, -8(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	-16(%rbp), %rax
	leaq	-4(%rax), %rdx
	leaq	-4(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L24
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	L24
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L25
L24:
	call	abort
L25:
	movl	$43, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bar
	movq	-16(%rbp), %rax
	leaq	-4(%rax), %rdx
	leaq	-4(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L26
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	L26
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L27
L26:
	call	abort
L27:
	movl	$44, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	baz
	movq	-16(%rbp), %rax
	leaq	-4(%rax), %rdx
	leaq	-4(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L28
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	L28
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L29
L28:
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
