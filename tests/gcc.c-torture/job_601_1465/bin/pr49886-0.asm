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
	.comm	gi,4,4
	.comm	cond,4,4
never_ever:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	abort
mark_cell:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	cond(%rip), %eax
	testl	%eax, %eax
	jne	L41
	jmp	L40
L41:
	cmpq	$0, -16(%rbp)
	je	L43
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	jne	L43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$1, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L43:
	cmpq	$0, -16(%rbp)
	je	L44
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	L44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$2, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L44:
	cmpq	$0, -16(%rbp)
	je	L45
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L45
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L45
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	L45
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$3, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L45:
	cmpq	$0, -16(%rbp)
	je	L46
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L46
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L46
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	jne	L46
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$4, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L46:
	cmpq	$0, -16(%rbp)
	je	L47
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	jne	L47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$5, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L47:
	cmpq	$0, -16(%rbp)
	je	L48
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	L48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$6, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L48:
	cmpq	$0, -16(%rbp)
	je	L49
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$7, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L49:
	cmpq	$0, -16(%rbp)
	je	L50
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$8, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L50:
	cmpq	$0, -16(%rbp)
	je	L40
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L40
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L40
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	L40
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$9, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L40:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
getnull:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, cond(%rip)
	movl	$0, -4(%rbp)
	jmp	L55
L56:
	call	getnull
	movq	%rax, %rsi
	movl	$gi, %edi
	call	foo
	addl	$1, -4(%rbp)
L55:
	cmpl	$99, -4(%rbp)
	jle	L56
	movl	$0, %eax
	leave
	ret
bar_1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
bar_2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
