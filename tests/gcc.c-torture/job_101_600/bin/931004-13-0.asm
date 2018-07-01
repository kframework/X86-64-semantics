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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -40(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	$10, %al
	je	L21
	call	abort
L21:
	movzbl	-15(%rbp), %eax
	cmpb	$20, %al
	je	L22
	call	abort
L22:
	movzbl	-14(%rbp), %eax
	cmpb	$30, %al
	je	L23
	call	abort
L23:
	movzbl	-13(%rbp), %eax
	cmpb	$40, %al
	je	L24
	call	abort
L24:
	movzbl	-32(%rbp), %eax
	cmpb	$11, %al
	je	L25
	call	abort
L25:
	movzbl	-31(%rbp), %eax
	cmpb	$21, %al
	je	L26
	call	abort
L26:
	movzbl	-30(%rbp), %eax
	cmpb	$31, %al
	je	L27
	call	abort
L27:
	movzbl	-29(%rbp), %eax
	cmpb	$41, %al
	je	L28
	call	abort
L28:
	movzbl	-48(%rbp), %eax
	cmpb	$12, %al
	je	L29
	call	abort
L29:
	movzbl	-47(%rbp), %eax
	cmpb	$22, %al
	je	L30
	call	abort
L30:
	movzbl	-46(%rbp), %eax
	cmpb	$32, %al
	je	L31
	call	abort
L31:
	movzbl	-45(%rbp), %eax
	cmpb	$42, %al
	je	L32
	call	abort
L32:
	cmpq	$123, -40(%rbp)
	je	L33
	call	abort
L33:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$10, -16(%rbp)
	movb	$11, -12(%rbp)
	movb	$12, -8(%rbp)
	movb	$20, -15(%rbp)
	movb	$21, -11(%rbp)
	movb	$22, -7(%rbp)
	movb	$30, -14(%rbp)
	movb	$31, -10(%rbp)
	movb	$32, -6(%rbp)
	movb	$40, -13(%rbp)
	movb	$41, -9(%rbp)
	movb	$42, -5(%rbp)
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	$123, %r8d
	movl	%eax, %esi
	movl	$3, %edi
	call	f
	movl	$0, %edi
	call	exit
