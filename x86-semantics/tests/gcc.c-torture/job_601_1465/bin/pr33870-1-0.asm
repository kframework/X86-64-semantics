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
	jmp	L10
L14:
	movq	-104(%rbp), %rax
	movl	8(%rax), %edx
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jae	L11
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	L12
L11:
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)
L12:
	movq	xx(%rip), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, vx(%rip)
L10:
	cmpq	$0, -104(%rbp)
	je	L13
	cmpq	$0, -112(%rbp)
	jne	L14
L13:
	cmpq	$0, -104(%rbp)
	je	L15
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	L16
L15:
	cmpq	$0, -112(%rbp)
	je	L17
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	L16
L17:
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
L16:
	movq	-32(%rbp), %rax
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
	jmp	L20
L25:
	movq	-232(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$0, -12(%rbp)
	jmp	L21
L24:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	L22
	movl	-12(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	movq	%rdx, -224(%rbp,%rax,8)
	jmp	L23
L22:
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
L21:
	cmpl	$23, -12(%rbp)
	jle	L24
L23:
	cmpl	$24, -12(%rbp)
	jne	L20
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
L20:
	cmpq	$0, -232(%rbp)
	jne	L25
	movq	-224(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	L26
L27:
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_pagelist
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
L26:
	cmpl	$24, -12(%rbp)
	jle	L27
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
	jne	L30
	call	abort
L30:
	movl	$0, %eax
	leave
	ret
