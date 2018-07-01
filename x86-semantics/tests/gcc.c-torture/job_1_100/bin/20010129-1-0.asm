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
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
baz1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	l.2321(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, l.2321(%rip)
	popq	%rbp
	ret
baz2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
baz3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L44
	call	abort
L44:
	movl	$1, %eax
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$328, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movl	%edx, -324(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -40(%rbp)
	movb	$10, -304(%rbp)
	movb	$0, -303(%rbp)
	jmp	L47
L59:
	movzbl	-304(%rbp), %eax
	cmpb	$32, %al
	je	L47
	movzbl	-304(%rbp), %eax
	cmpb	$9, %al
	je	L47
	movl	$1, -28(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L48
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	baz2
	testl	%eax, %eax
	jne	L48
	movl	-324(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	L49
	jmp	L47
L49:
	movl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
L48:
	movl	-324(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L50
	movl	-324(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	L50
	cmpl	$0, -8(%rbp)
	jne	L51
L50:
	movl	-324(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L51
	jmp	L47
L51:
	movl	-324(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	L52
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	baz2
	testl	%eax, %eax
	jne	L52
	jmp	L47
L52:
	movl	-324(%rbp), %eax
	andl	$5128, %eax
	testl	%eax, %eax
	je	L53
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	baz2
	testl	%eax, %eax
	jne	L53
	jmp	L47
L53:
	movl	-324(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	L54
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	baz2
	testl	%eax, %eax
	jne	L54
	jmp	L47
L54:
	movl	-324(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	L55
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L56
L58:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	baz3
	testl	%eax, %eax
	je	L57
	jmp	L55
L57:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -12(%rbp)
L56:
	cmpq	$0, -24(%rbp)
	jne	L58
L55:
	movl	$0, -28(%rbp)
L47:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	baz1
	cmpq	-320(%rbp), %rax
	jl	L59
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$51217, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	movl	$0, %edi
	call	exit
	.local	l.2321
	.comm	l.2321,8,8
