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
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%ecx, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$3, %eax
	jne	L21
	movl	-12(%rbp), %eax
	cmpl	$4, %eax
	jne	L21
	movl	-8(%rbp), %eax
	cmpl	$5, %eax
	je	L22
L21:
	call	abort
L22:
	movl	-32(%rbp), %eax
	cmpl	$6, %eax
	jne	L23
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jne	L23
	movl	-24(%rbp), %eax
	cmpl	$8, %eax
	je	L24
L23:
	call	abort
L24:
	movl	$0, %eax
	leave
	ret
foo3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%ecx, %eax
	movl	%r9d, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movl	-8(%rbp), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	foo2
	movl	-48(%rbp), %eax
	cmpl	$9, %eax
	jne	L27
	movl	-44(%rbp), %eax
	cmpl	$10, %eax
	jne	L27
	movl	-40(%rbp), %eax
	cmpl	$11, %eax
	je	L28
L27:
	call	abort
L28:
	movl	$0, %eax
	leave
	ret
bar2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%ecx, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	foo2
	leave
	ret
bar3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%ecx, %eax
	movl	%r9d, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-48(%rbp), %r8
	movl	-40(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %eax
	movl	%edi, %r9d
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	foo3
	leave
	ret
baz3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%ecx, %eax
	movl	%r9d, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %r8
	movl	-8(%rbp), %edi
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %eax
	movl	%edi, %r9d
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	foo3
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$3, -16(%rbp)
	movl	$4, -12(%rbp)
	movl	$5, -8(%rbp)
	movl	$6, -32(%rbp)
	movl	$7, -28(%rbp)
	movl	$8, -24(%rbp)
	movl	$9, -48(%rbp)
	movl	$10, -44(%rbp)
	movl	$11, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	bar2
	movq	-48(%rbp), %r8
	movl	-40(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %eax
	movl	%edi, %r9d
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	bar3
	movq	-32(%rbp), %r8
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movl	-40(%rbp), %eax
	movl	%edi, %r9d
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	baz3
	movl	$0, %eax
	leave
	ret
