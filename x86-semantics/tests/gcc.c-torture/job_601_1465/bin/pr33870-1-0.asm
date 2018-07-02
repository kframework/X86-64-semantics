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
	.comm	xx,8,8
	.comm	vx,4,4
merge_pagelist:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	leaq	-96(%rbp), %rax
	addq	$64, %rax
	movq	%rax, xx(%rip)
	leaq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L40
L44:
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jae	L41
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	L42
L41:
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)
L42:
	movq	xx(%rip), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, vx(%rip)
L40:
	cmpq	$0, -104(%rbp)
	je	L43
	cmpq	$0, -112(%rbp)
	jne	L44
L43:
	cmpq	$0, -104(%rbp)
	je	L45
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	L46
L45:
	cmpq	$0, -112(%rbp)
	je	L47
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	L46
L47:
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
L46:
	movq	-32(%rbp), %rax
	popq	%rbp
	ret
sort_pagelist:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$232, %rsp
	movq	%rdi, -232(%rbp)
	leaq	-224(%rbp), %rax
	movl	$200, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	jmp	L50
L55:
	movq	-232(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$0, -12(%rbp)
	jmp	L51
L54:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	L52
	movl	-12(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	movq	%rdx, -224(%rbp,%rax,8)
	jmp	L53
L52:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_pagelist
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	$0, -224(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	cltq
	movq	$0, -224(%rbp,%rax,8)
	addl	$1, -12(%rbp)
L51:
	cmpl	$23, -12(%rbp)
	jle	L54
L53:
	cmpl	$24, -12(%rbp)
	jne	L50
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_pagelist
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -224(%rbp,%rdx,8)
L50:
	cmpq	$0, -232(%rbp)
	jne	L55
	movq	-224(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	L56
L57:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_pagelist
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
L56:
	cmpl	$24, -12(%rbp)
	jle	L57
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$448, %rsp
	movl	$5, -440(%rbp)
	leaq	-448(%rbp), %rax
	addq	$88, %rax
	movq	%rax, -384(%rbp)
	movl	$4, -352(%rbp)
	leaq	-448(%rbp), %rax
	addq	$176, %rax
	movq	%rax, -296(%rbp)
	movl	$1, -264(%rbp)
	leaq	-448(%rbp), %rax
	addq	$264, %rax
	movq	%rax, -208(%rbp)
	movl	$3, -176(%rbp)
	movq	$0, -120(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	sort_pagelist
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	L60
	call	abort
L60:
	movl	$0, %eax
	leave
	ret
