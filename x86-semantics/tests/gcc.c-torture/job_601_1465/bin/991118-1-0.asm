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
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	sarq	$12, %rax
	movq	%rax, %rdx
	movabsq	$2381903268435576, %rax
	xorq	%rdx, %rax
	salq	$12, %rax
	sarq	$12, %rax
	salq	$12, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$4095, %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
sub2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$12, %rax
	sarq	$12, %rax
	movq	%rax, %rdx
	movabsq	$2381903268435576, %rax
	xorq	%rdx, %rax
	salq	$12, %rax
	sarq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movabsq	$-4503599627370496, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
sub3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movabsq	$6885502895806072, %rax
	xorq	%rdx, %rax
	salq	$11, %rax
	sarq	$11, %rax
	salq	$11, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$2047, %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
sub4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$11, %rax
	sarq	$11, %rax
	movq	%rax, %rdx
	movabsq	$6885502895806072, %rax
	xorq	%rdx, %rax
	salq	$11, %rax
	sarq	$11, %rax
	movabsq	$9007199254740991, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movabsq	$-9007199254740992, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
tmp:
	.byte	35
	.byte	209
	.byte	188
	.byte	154
	.byte	120
	.byte	86
	.byte	52
	.byte	18
tmp2:
	.byte	205
	.byte	171
	.byte	137
	.byte	103
	.byte	69
	.byte	35
	.byte	49
	.byte	18
tmp3:
	.byte	35
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	248
	.byte	255
	.byte	15
tmp4:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	255
	.byte	255
	.byte	97
	.byte	36
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	tmp(%rip), %rdi
	call	sub
	movq	%rax, tmp(%rip)
	movq	tmp2(%rip), %rdi
	call	sub2
	movq	%rax, tmp2(%rip)
	movzwl	tmp(%rip), %eax
	andw	$4095, %ax
	cmpw	$291, %ax
	jne	L48
	movq	tmp(%rip), %rax
	andq	$-4096, %rax
	movq	%rax, %rdx
	movabsq	$-7687337405579571200, %rax
	cmpq	%rax, %rdx
	je	L49
L48:
	call	abort
L49:
	movzwl	tmp2+6(%rip), %eax
	andl	$-16, %eax
	cmpw	$4656, %ax
	jne	L50
	movq	tmp2(%rip), %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	movabsq	$2626808268586421, %rax
	cmpq	%rax, %rdx
	je	L51
L50:
	call	abort
L51:
	movq	tmp3(%rip), %rdi
	call	sub3
	movq	%rax, tmp3(%rip)
	movq	tmp4(%rip), %rdi
	call	sub4
	movq	%rax, tmp4(%rip)
	movzwl	tmp3(%rip), %eax
	andw	$2047, %ax
	cmpw	$291, %ax
	jne	L52
	movq	tmp3(%rip), %rax
	andq	$-2048, %rax
	movq	%rax, %rdx
	movabsq	$-3725223934242340864, %rax
	cmpq	%rax, %rdx
	je	L53
L52:
	call	abort
L53:
	movzwl	tmp4+6(%rip), %eax
	andl	$-32, %eax
	cmpw	$9312, %ax
	jne	L54
	movq	tmp4(%rip), %rdx
	movabsq	$9007199254740991, %rax
	andq	%rax, %rdx
	movabsq	$7188242255599224, %rax
	cmpq	%rax, %rdx
	je	L55
L54:
	call	abort
L55:
	movl	$0, %edi
	call	exit
