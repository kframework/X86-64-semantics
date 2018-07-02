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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$7696, %rsp
	leaq	-2064(%rbp), %rax
	movl	$2048, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-5136(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-6672(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-7440(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movabsq	$81985529216486895, %rax
	movq	%rax, -2064(%rbp)
	movl	$19088743, -5136(%rbp)
	movw	$17767, -6672(%rbp)
	movb	$115, -7440(%rbp)
	leaq	-2064(%rbp), %rax
	leaq	-5136(%rbp), %rdx
	leaq	-6672(%rbp), %rcx
	leaq	-7440(%rbp), %rsi
	movl	$0, -4(%rbp)
	jmp	L40
L41:
	movl	-4(%rbp), %eax
	cltq
	movq	-2064(%rbp,%rax,8), %rax
	rorx	$8, %rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -4112(%rbp,%rax,8)
	addl	$1, -4(%rbp)
L40:
	cmpl	$255, -4(%rbp)
	jle	L41
	movl	$0, -4(%rbp)
	jmp	L42
L43:
	movl	-4(%rbp), %eax
	cltq
	movl	-5136(%rbp,%rax,4), %eax
	rorx	$8, %eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -6160(%rbp,%rax,4)
	addl	$1, -4(%rbp)
L42:
	cmpl	$255, -4(%rbp)
	jle	L43
	movl	$0, -4(%rbp)
	jmp	L44
L45:
	movl	-4(%rbp), %eax
	cltq
	movzwl	-6672(%rbp,%rax,2), %eax
	shrw	$9, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movzwl	-6672(%rbp,%rax,2), %eax
	movzwl	%ax, %eax
	sall	$7, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, -7184(%rbp,%rax,2)
	addl	$1, -4(%rbp)
L44:
	cmpl	$255, -4(%rbp)
	jle	L45
	movl	$0, -4(%rbp)
	jmp	L46
L47:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-7440(%rbp,%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-7440(%rbp,%rax), %eax
	movzbl	%al, %eax
	sall	$3, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -7696(%rbp,%rax)
	addl	$1, -4(%rbp)
L46:
	cmpl	$255, -4(%rbp)
	jle	L47
	leaq	-4112(%rbp), %rax
	leaq	-6160(%rbp), %rdx
	leaq	-7184(%rbp), %rcx
	leaq	-7696(%rbp), %rsi
	movq	-4112(%rbp), %rdx
	movabsq	$-1224658842671273011, %rax
	cmpq	%rax, %rdx
	jne	L48
	movq	-4104(%rbp), %rax
	testq	%rax, %rax
	je	L49
L48:
	call	abort
L49:
	movl	-6160(%rbp), %eax
	cmpl	$1728127813, %eax
	jne	L50
	movl	-6156(%rbp), %eax
	testl	%eax, %eax
	je	L51
L50:
	call	abort
L51:
	movzwl	-7184(%rbp), %eax
	cmpw	$-19550, %ax
	jne	L52
	movzwl	-7182(%rbp), %eax
	testw	%ax, %ax
	je	L53
L52:
	call	abort
L53:
	movzbl	-7696(%rbp), %eax
	cmpb	$-101, %al
	jne	L54
	movzbl	-7695(%rbp), %eax
	testb	%al, %al
	je	L55
L54:
	call	abort
L55:
	movl	$0, %eax
	leave
	ret
