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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$65, -16(%rbp)
	movb	$66, -15(%rbp)
	movb	$67, -14(%rbp)
	movb	$68, -13(%rbp)
	movb	$69, -12(%rbp)
	movb	$70, -11(%rbp)
	movb	$71, -10(%rbp)
	movb	$72, -9(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movzbl	-32(%rbp), %eax
	cmpb	$65, %al
	jne	L40
	movzbl	-31(%rbp), %eax
	cmpb	$66, %al
	jne	L40
	movzbl	-30(%rbp), %eax
	cmpb	$67, %al
	jne	L40
	movzbl	-29(%rbp), %eax
	cmpb	$68, %al
	jne	L40
	movzbl	-28(%rbp), %eax
	cmpb	$69, %al
	jne	L40
	movzbl	-27(%rbp), %eax
	cmpb	$70, %al
	jne	L40
	movzbl	-26(%rbp), %eax
	cmpb	$71, %al
	jne	L40
	movzbl	-25(%rbp), %eax
	cmpb	$72, %al
	je	L41
L40:
	call	abort
L41:
	movl	$0, %eax
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movw	$0, -8(%rbp)
	movb	$65, -16(%rbp)
	movb	$66, -15(%rbp)
	movb	$67, -14(%rbp)
	movb	$68, -13(%rbp)
	movb	$69, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movzwl	-8(%rbp), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	cmpb	$65, %al
	jne	L44
	movzbl	-31(%rbp), %eax
	cmpb	$66, %al
	jne	L44
	movzbl	-30(%rbp), %eax
	cmpb	$67, %al
	jne	L44
	movzbl	-29(%rbp), %eax
	cmpb	$68, %al
	jne	L44
	movzbl	-28(%rbp), %eax
	cmpb	$69, %al
	jne	L44
	movzbl	-27(%rbp), %eax
	testb	%al, %al
	jne	L44
	movzbl	-26(%rbp), %eax
	testb	%al, %al
	jne	L44
	movzbl	-25(%rbp), %eax
	testb	%al, %al
	jne	L44
	movzbl	-24(%rbp), %eax
	testb	%al, %al
	jne	L44
	movzbl	-23(%rbp), %eax
	testb	%al, %al
	je	L45
L44:
	call	abort
L45:
	movl	$0, %eax
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movw	$0, -8(%rbp)
	movb	$65, -16(%rbp)
	movb	$67, -14(%rbp)
	movb	$69, -12(%rbp)
	movb	$71, -10(%rbp)
	movb	$73, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movzwl	-8(%rbp), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	cmpb	$65, %al
	jne	L48
	movzbl	-31(%rbp), %eax
	testb	%al, %al
	jne	L48
	movzbl	-30(%rbp), %eax
	cmpb	$67, %al
	jne	L48
	movzbl	-29(%rbp), %eax
	testb	%al, %al
	jne	L48
	movzbl	-28(%rbp), %eax
	cmpb	$69, %al
	jne	L48
	movzbl	-27(%rbp), %eax
	testb	%al, %al
	jne	L48
	movzbl	-26(%rbp), %eax
	cmpb	$71, %al
	jne	L48
	movzbl	-25(%rbp), %eax
	testb	%al, %al
	jne	L48
	movzbl	-24(%rbp), %eax
	cmpb	$73, %al
	jne	L48
	movzbl	-23(%rbp), %eax
	testb	%al, %al
	je	L49
L48:
	call	abort
L49:
	movl	$0, %eax
	leave
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movw	$0, -8(%rbp)
	movb	$66, -15(%rbp)
	movb	$68, -13(%rbp)
	movb	$70, -11(%rbp)
	movb	$72, -9(%rbp)
	movb	$74, -7(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movzwl	-8(%rbp), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	testb	%al, %al
	jne	L52
	movzbl	-31(%rbp), %eax
	cmpb	$66, %al
	jne	L52
	movzbl	-30(%rbp), %eax
	testb	%al, %al
	jne	L52
	movzbl	-29(%rbp), %eax
	cmpb	$68, %al
	jne	L52
	movzbl	-28(%rbp), %eax
	testb	%al, %al
	jne	L52
	movzbl	-27(%rbp), %eax
	cmpb	$70, %al
	jne	L52
	movzbl	-26(%rbp), %eax
	testb	%al, %al
	jne	L52
	movzbl	-25(%rbp), %eax
	cmpb	$72, %al
	jne	L52
	movzbl	-24(%rbp), %eax
	testb	%al, %al
	jne	L52
	movzbl	-23(%rbp), %eax
	cmpb	$74, %al
	je	L53
L52:
	call	abort
L53:
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	test1
	movl	$0, %eax
	call	test2
	movl	$0, %eax
	call	test3
	movl	$0, %eax
	call	test4
	movl	$0, %eax
	popq	%rbp
	ret
