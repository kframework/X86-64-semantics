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
	.comm	i,9,1
	.comm	j,9,1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	i+5(%rip), %eax
	andl	$7, %eax
	movb	%al, i+5(%rip)
	movzbl	i+6(%rip), %eax
	andl	$0, %eax
	movb	%al, i+6(%rip)
	movzbl	i+7(%rip), %eax
	andl	$-4, %eax
	movb	%al, i+7(%rip)
	movzbl	i(%rip), %eax
	andl	$0, %eax
	orl	$5, %eax
	movb	%al, i(%rip)
	movzbl	i+1(%rip), %eax
	andl	$0, %eax
	movb	%al, i+1(%rip)
	movzbl	i+2(%rip), %eax
	andl	$-4, %eax
	movb	%al, i+2(%rip)
	movzbl	i+2(%rip), %eax
	andl	$-5, %eax
	movb	%al, i+2(%rip)
	movzbl	i+2(%rip), %eax
	andl	$7, %eax
	orl	$-40, %eax
	movb	%al, i+2(%rip)
	movzbl	i+3(%rip), %eax
	orl	$-1, %eax
	movb	%al, i+3(%rip)
	movzbl	i+4(%rip), %eax
	orl	$-1, %eax
	movb	%al, i+4(%rip)
	movzbl	i+5(%rip), %eax
	orl	$7, %eax
	movb	%al, i+5(%rip)
	movzbl	i+7(%rip), %eax
	andl	$3, %eax
	orl	$20, %eax
	movb	%al, i+7(%rip)
	movzbl	i+8(%rip), %eax
	andl	$0, %eax
	movb	%al, i+8(%rip)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	j(%rip), %eax
	andl	$0, %eax
	orl	$5, %eax
	movb	%al, j(%rip)
	movzbl	j+1(%rip), %eax
	andl	$0, %eax
	movb	%al, j+1(%rip)
	movzbl	j+2(%rip), %eax
	andl	$-4, %eax
	movb	%al, j+2(%rip)
	movzbl	j+2(%rip), %eax
	andl	$-5, %eax
	movb	%al, j+2(%rip)
	movzbl	j+2(%rip), %eax
	andl	$7, %eax
	orl	$-40, %eax
	movb	%al, j+2(%rip)
	movzbl	j+3(%rip), %eax
	orl	$-1, %eax
	movb	%al, j+3(%rip)
	movzbl	j+4(%rip), %eax
	orl	$-1, %eax
	movb	%al, j+4(%rip)
	movzbl	j+5(%rip), %eax
	orl	$7, %eax
	movb	%al, j+5(%rip)
	movzbl	j+5(%rip), %eax
	andl	$7, %eax
	movb	%al, j+5(%rip)
	movzbl	j+6(%rip), %eax
	andl	$0, %eax
	movb	%al, j+6(%rip)
	movzbl	j+7(%rip), %eax
	andl	$-4, %eax
	movb	%al, j+7(%rip)
	movzbl	j+7(%rip), %eax
	andl	$3, %eax
	orl	$20, %eax
	movb	%al, j+7(%rip)
	movzbl	j+8(%rip), %eax
	andl	$0, %eax
	movb	%al, j+8(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movl	$0, %eax
	call	bar
	movzbl	i(%rip), %eax
	movzbl	i+1(%rip), %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	i+2(%rip), %eax
	andl	$3, %eax
	salq	$16, %rax
	orq	%rdx, %rax
	salq	$46, %rax
	sarq	$46, %rax
	movl	%eax, %edx
	movzbl	j(%rip), %eax
	movzbl	j+1(%rip), %ecx
	salq	$8, %rcx
	orq	%rax, %rcx
	movzbl	j+2(%rip), %eax
	andl	$3, %eax
	salq	$16, %rax
	orq	%rcx, %rax
	salq	$46, %rax
	sarq	$46, %rax
	cmpl	%eax, %edx
	jne	L42
	movzbl	i+2(%rip), %eax
	sall	$5, %eax
	movl	%eax, %edx
	sarb	$7, %dl
	movzbl	j+2(%rip), %eax
	sall	$5, %eax
	sarb	$7, %al
	cmpb	%al, %dl
	jne	L42
	movzbl	i+2(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	i+3(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	i+4(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	i+5(%rip), %eax
	andl	$7, %eax
	salq	$21, %rax
	orq	%rdx, %rax
	salq	$40, %rax
	sarq	$40, %rax
	movl	%eax, %edx
	movzbl	j+2(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	j+3(%rip), %ecx
	salq	$5, %rcx
	orq	%rax, %rcx
	movzbl	j+4(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rcx
	movzbl	j+5(%rip), %eax
	andl	$7, %eax
	salq	$21, %rax
	orq	%rcx, %rax
	salq	$40, %rax
	sarq	$40, %rax
	cmpl	%eax, %edx
	jne	L42
	movzbl	i+5(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	i+6(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	i+7(%rip), %eax
	andl	$3, %eax
	salq	$13, %rax
	orq	%rdx, %rax
	salq	$49, %rax
	sarq	$49, %rax
	movl	%eax, %edx
	movzbl	j+5(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	j+6(%rip), %ecx
	salq	$5, %rcx
	orq	%rax, %rcx
	movzbl	j+7(%rip), %eax
	andl	$3, %eax
	salq	$13, %rax
	orq	%rcx, %rax
	salq	$49, %rax
	sarq	$49, %rax
	cmpw	%ax, %dx
	jne	L42
	movzbl	i+7(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movzbl	i+8(%rip), %edx
	salq	$6, %rdx
	orq	%rdx, %rax
	salq	$50, %rax
	sarq	$50, %rax
	movl	%eax, %edx
	movzbl	j+7(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movzbl	j+8(%rip), %ecx
	salq	$6, %rcx
	orq	%rcx, %rax
	salq	$50, %rax
	sarq	$50, %rax
	cmpw	%ax, %dx
	je	L43
L42:
	call	abort
L43:
	popq	%rbp
	ret
