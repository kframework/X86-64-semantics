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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$29, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$29, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$19, %edi
	call	test1
	testl	%eax, %eax
	je	L42
	call	abort
L42:
	movl	$20, %edi
	call	test1
	cmpl	$1, %eax
	je	L43
	call	abort
L43:
	movl	$29, %edi
	call	test1
	cmpl	$1, %eax
	je	L44
	call	abort
L44:
	movl	$30, %edi
	call	test1
	testl	%eax, %eax
	je	L45
	call	abort
L45:
	movl	$-10, %edi
	call	test2
	testl	%eax, %eax
	je	L46
	call	abort
L46:
	movl	$-9, %edi
	call	test2
	cmpl	$1, %eax
	je	L47
	call	abort
L47:
	movl	$9, %edi
	call	test2
	cmpl	$1, %eax
	je	L48
	call	abort
L48:
	movl	$10, %edi
	call	test2
	testl	%eax, %eax
	je	L49
	call	abort
L49:
	movl	$-30, %edi
	call	test3
	testl	%eax, %eax
	je	L50
	call	abort
L50:
	movl	$-29, %edi
	call	test3
	cmpl	$1, %eax
	je	L51
	call	abort
L51:
	movl	$-20, %edi
	call	test3
	cmpl	$1, %eax
	je	L52
	call	abort
L52:
	movl	$-19, %edi
	call	test3
	testl	%eax, %eax
	je	L53
	call	abort
L53:
	movl	$-30, %edi
	call	test4
	testl	%eax, %eax
	je	L54
	call	abort
L54:
	movl	$-29, %edi
	call	test4
	cmpl	$1, %eax
	je	L55
	call	abort
L55:
	movl	$-20, %edi
	call	test4
	cmpl	$1, %eax
	je	L56
	call	abort
L56:
	movl	$-19, %edi
	call	test4
	testl	%eax, %eax
	je	L57
	call	abort
L57:
	movl	$-10, %edi
	call	test5
	testl	%eax, %eax
	je	L58
	call	abort
L58:
	movl	$-9, %edi
	call	test5
	cmpl	$1, %eax
	je	L59
	call	abort
L59:
	movl	$9, %edi
	call	test5
	cmpl	$1, %eax
	je	L60
	call	abort
L60:
	movl	$10, %edi
	call	test5
	testl	%eax, %eax
	je	L61
	call	abort
L61:
	movl	$19, %edi
	call	test6
	testl	%eax, %eax
	je	L62
	call	abort
L62:
	movl	$20, %edi
	call	test6
	cmpl	$1, %eax
	je	L63
	call	abort
L63:
	movl	$29, %edi
	call	test6
	cmpl	$1, %eax
	je	L64
	call	abort
L64:
	movl	$30, %edi
	call	test6
	testl	%eax, %eax
	je	L65
	call	abort
L65:
	movl	$0, %eax
	popq	%rbp
	ret
