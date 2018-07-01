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
merge_pagelist:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L10
L13:
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jae	L11
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -112(%rbp)
L10:
	cmpq	$0, -104(%rbp)
	je	L12
	cmpq	$0, -112(%rbp)
	jne	L13
L12:
	cmpq	$0, -104(%rbp)
	je	L14
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	L15
L14:
	cmpq	$0, -112(%rbp)
	je	L16
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	L15
L16:
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
L15:
	movq	-40(%rbp), %rax
	popq	%rbp
	ret
sort_pagelist:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$232, %rsp
	movq	%rdi, -232(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$25, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	jmp	L19
L24:
	movq	-232(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movl	$0, -12(%rbp)
	jmp	L20
L23:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	L21
	movl	-12(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	movq	%rdx, -224(%rbp,%rax,8)
	jmp	L22
L21:
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
	addl	$1, -12(%rbp)
L20:
	cmpl	$23, -12(%rbp)
	jle	L23
L22:
	cmpl	$24, -12(%rbp)
	jne	L19
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
L19:
	cmpq	$0, -232(%rbp)
	jne	L24
	movq	-224(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	L25
L26:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_pagelist
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
L25:
	cmpl	$24, -12(%rbp)
	jle	L26
	movq	-8(%rbp), %rax
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$416, %rsp
	movl	$5, -416(%rbp)
	leaq	-416(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -360(%rbp)
	movl	$4, -336(%rbp)
	leaq	-416(%rbp), %rax
	addq	$160, %rax
	movq	%rax, -280(%rbp)
	movl	$1, -256(%rbp)
	leaq	-416(%rbp), %rax
	addq	$240, %rax
	movq	%rax, -200(%rbp)
	movl	$3, -176(%rbp)
	movq	$0, -120(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	sort_pagelist
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	L29
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
