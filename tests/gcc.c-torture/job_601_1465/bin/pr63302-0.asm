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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$-9223372036854773761, %rax
	andq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	andb	$255, %ah
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	orq	-16(%rbp), %rax
	testq	%rax, %rax
	je	L40
	movabsq	$-9223372036854775808, %rax
	movq	$-1, %rdx
	movq	%rdx, %rcx
	xorq	-8(%rbp), %rcx
	xorq	-16(%rbp), %rax
	orq	%rcx, %rax
	testq	%rax, %rax
	jne	L41
L40:
	movl	$1, %eax
	jmp	L42
L41:
	movl	$0, %eax
L42:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$-2147481601, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L45
	cmpq	$-2147483648, -8(%rbp)
	jne	L46
L45:
	movl	$1, %eax
	jmp	L47
L46:
	movl	$0, %eax
L47:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	L50
	movl	$1, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	L50
	movl	$2048, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	L50
	movl	$2049, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	L50
	movabsq	$-9223372036854775808, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	L50
	movabsq	$-9223372036854775808, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	L50
	movabsq	$-9223372036854775807, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	L50
	movabsq	$-9223372036854773760, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	L50
	movabsq	$-9223372036854773759, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	je	L51
L50:
	call	abort
L51:
	movl	$0, %edi
	call	bar
	cmpl	$1, %eax
	jne	L52
	movl	$1, %edi
	call	bar
	testl	%eax, %eax
	jne	L52
	movl	$2048, %edi
	call	bar
	cmpl	$1, %eax
	jne	L52
	movl	$2049, %edi
	call	bar
	testl	%eax, %eax
	jne	L52
	movl	$2147483648, %edi
	call	bar
	testl	%eax, %eax
	jne	L52
	movq	$-2147483648, %rdi
	call	bar
	cmpl	$1, %eax
	jne	L52
	movq	$-2147483647, %rdi
	call	bar
	testl	%eax, %eax
	jne	L52
	movq	$-2147481600, %rdi
	call	bar
	cmpl	$1, %eax
	jne	L52
	movq	$-2147481599, %rdi
	call	bar
	testl	%eax, %eax
	je	L53
L52:
	call	abort
L53:
	movl	$0, %eax
	popq	%rbp
	ret