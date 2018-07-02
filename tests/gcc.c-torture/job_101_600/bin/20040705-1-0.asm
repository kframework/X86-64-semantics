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
	.comm	b,16,16
	.comm	c,16,16
	.comm	d,16,16
ret1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
ret2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
ret3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
ret4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
ret5:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
ret6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	popq	%rbp
	ret
ret7:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	d+8(%rip), %eax
	movzwl	%ax, %eax
	popq	%rbp
	ret
ret8:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	d+10(%rip), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
ret9:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	d+11(%rip), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn1_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	addl	$1, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	addl	$1, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	addl	$1, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	addl	$1, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	addl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	addl	$1, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	addl	$1, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	addl	$1, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	addl	$1, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	addl	$1, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	addl	$1, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	addl	$1, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	addl	$1, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	addl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	addl	$1, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	addl	$1, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	addl	$1, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	addl	$1, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	subl	-4(%rbp), %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %edx
	movl	-4(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	addl	$63, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	addw	$2047, %ax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	addw	$32767, %ax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	addl	$31, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	addl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	addl	$67108863, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	subl	$1, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	subl	$1, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	subl	$1, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	addl	$63, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	addw	$2047, %ax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	addw	$32767, %ax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	addl	$31, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	addl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	addl	$67108863, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	subl	$1, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	subl	$1, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	subl	$1, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	andl	-4(%rbp), %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	orl	-4(%rbp), %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	xorl	-4(%rbp), %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	movzwl	%ax, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	addl	$3, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	addl	$3, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	addl	$3, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	addl	$3, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	addl	$3, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	addl	$3, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	addl	$3, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	addl	$3, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	addl	$3, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	subl	$7, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	subl	$7, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	subl	$7, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	subl	$7, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	subl	$7, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	subl	$7, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	subl	$7, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	subl	$7, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	subl	$7, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	andl	$21, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	andl	$21, %eax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	andl	$21, %eax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	andl	$21, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	andl	$21, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	andl	$21, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	andl	$21, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_e:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	andl	$21, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	orl	$19, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	orl	$19, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	orl	$19, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	orl	$19, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	orl	$19, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	orl	$19, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	orl	$19, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	orl	$19, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	orl	$19, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	xorl	$37, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	xorl	$37, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	xorl	$37, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	xorl	$37, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	xorl	$37, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	xorl	$37, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	xorl	$37, %eax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	xorl	$37, %eax
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	xorl	$37, %eax
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movzwl	%ax, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movzwl	%ax, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movzbl	%al, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	movl	$2021161081, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %eax
	movzwl	%ax, %eax
	imull	$61681, %eax, %eax
	shrl	$16, %eax
	shrw	$4, %ax
	movw	%ax, d+8(%rip)
	popq	%rbp
	ret
fn8_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %eax
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	shrw	$8, %ax
	shrb	$4, %al
	movb	%al, d+10(%rip)
	popq	%rbp
	ret
fn9_h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %eax
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	shrw	$8, %ax
	shrb	$4, %al
	movb	%al, d+11(%rip)
	popq	%rbp
	ret
fn1_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	b+8(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, b+8(%rip)
	popq	%rbp
	ret
fn2_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	b+8(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	movzwl	%ax, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %eax
	andl	$2047, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	%edx, %eax
	movl	%eax, b+8(%rip)
	popq	%rbp
	ret
fn3_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	b+10(%rip), %eax
	shrw	%ax
	movzwl	%ax, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, b+10(%rip)
	popq	%rbp
	ret
fn4_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	andl	$31, %eax
	movzbl	%al, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$31, %eax
	andl	$31, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn5_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	c+8(%rip), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movzbl	c+8(%rip), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, c+8(%rip)
	popq	%rbp
	ret
fn6_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	c+8(%rip), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$67108863, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movl	%eax, c+8(%rip)
	popq	%rbp
	ret
fn7_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzwl	d+8(%rip), %ecx
	movzwl	%cx, %eax
	imull	$55189, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$4, %dx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movw	%dx, d+8(%rip)
	popq	%rbp
	ret
fn8_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+10(%rip), %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	addl	%edx, %eax
	shrw	$8, %ax
	movl	%eax, %edx
	shrb	%dl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movb	%dl, d+10(%rip)
	popq	%rbp
	ret
fn9_i:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	d+11(%rip), %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	addl	%edx, %eax
	shrw	$8, %ax
	movl	%eax, %edx
	shrb	%dl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movb	%dl, d+11(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_1
	call	ret1
	cmpl	$54, %eax
	je	L220
	call	abort
L220:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_1
	call	ret2
	cmpl	$887, %eax
	je	L221
	call	abort
L221:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_1
	call	ret3
	cmpl	$11789, %eax
	je	L222
	call	abort
L222:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_1
	call	ret4
	cmpl	$13, %eax
	je	L223
	call	abort
L223:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_1
	call	ret5
	testl	%eax, %eax
	je	L224
	call	abort
L224:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_1
	call	ret6
	cmpl	$33818583, %eax
	je	L225
	call	abort
L225:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_1
	call	ret7
	cmpl	$27525, %eax
	je	L226
	call	abort
L226:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_1
	call	ret8
	cmpl	$173, %eax
	je	L227
	call	abort
L227:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_1
	call	ret9
	cmpl	$130, %eax
	je	L228
	call	abort
L228:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_2
	call	ret1
	cmpl	$52, %eax
	je	L229
	call	abort
L229:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_2
	call	ret2
	cmpl	$637, %eax
	je	L230
	call	abort
L230:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_2
	call	ret3
	cmpl	$31279, %eax
	je	L231
	call	abort
L231:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_2
	call	ret4
	cmpl	$22, %eax
	je	L232
	call	abort
L232:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_2
	call	ret5
	testl	%eax, %eax
	je	L233
	call	abort
L233:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_2
	call	ret6
	cmpl	$33554433, %eax
	je	L234
	call	abort
L234:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_2
	call	ret7
	cmpl	$26813, %eax
	je	L235
	call	abort
L235:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_2
	call	ret8
	cmpl	$157, %eax
	je	L236
	call	abort
L236:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_2
	call	ret9
	cmpl	$188, %eax
	je	L237
	call	abort
L237:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_3
	call	ret1
	cmpl	$52, %eax
	je	L238
	call	abort
L238:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_3
	call	ret2
	cmpl	$637, %eax
	je	L239
	call	abort
L239:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_3
	call	ret3
	cmpl	$31279, %eax
	je	L240
	call	abort
L240:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_3
	call	ret4
	cmpl	$22, %eax
	je	L241
	call	abort
L241:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_3
	call	ret5
	testl	%eax, %eax
	je	L242
	call	abort
L242:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_3
	call	ret6
	cmpl	$33554433, %eax
	je	L243
	call	abort
L243:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_3
	call	ret7
	cmpl	$26813, %eax
	je	L244
	call	abort
L244:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_3
	call	ret8
	cmpl	$157, %eax
	je	L245
	call	abort
L245:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_3
	call	ret9
	cmpl	$188, %eax
	je	L246
	call	abort
L246:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_4
	call	ret1
	cmpl	$48, %eax
	je	L247
	call	abort
L247:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_4
	call	ret2
	cmpl	$385, %eax
	je	L248
	call	abort
L248:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_4
	call	ret3
	cmpl	$17999, %eax
	je	L249
	call	abort
L249:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_4
	call	ret4
	cmpl	$29, %eax
	je	L250
	call	abort
L250:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_4
	call	ret5
	testl	%eax, %eax
	je	L251
	call	abort
L251:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_4
	call	ret6
	cmpl	$33290281, %eax
	je	L252
	call	abort
L252:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_4
	call	ret7
	cmpl	$26099, %eax
	je	L253
	call	abort
L253:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_4
	call	ret8
	cmpl	$139, %eax
	je	L254
	call	abort
L254:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_4
	call	ret9
	cmpl	$244, %eax
	je	L255
	call	abort
L255:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_5
	call	ret1
	cmpl	$50, %eax
	je	L256
	call	abort
L256:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_5
	call	ret2
	cmpl	$635, %eax
	je	L257
	call	abort
L257:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_5
	call	ret3
	cmpl	$31277, %eax
	je	L258
	call	abort
L258:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_5
	call	ret4
	cmpl	$20, %eax
	je	L259
	call	abort
L259:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_5
	call	ret5
	testl	%eax, %eax
	je	L260
	call	abort
L260:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_5
	call	ret6
	cmpl	$33554431, %eax
	je	L261
	call	abort
L261:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_5
	call	ret7
	cmpl	$26811, %eax
	je	L262
	call	abort
L262:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_5
	call	ret8
	cmpl	$155, %eax
	je	L263
	call	abort
L263:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_5
	call	ret9
	cmpl	$186, %eax
	je	L264
	call	abort
L264:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_6
	call	ret1
	cmpl	$50, %eax
	je	L265
	call	abort
L265:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_6
	call	ret2
	cmpl	$635, %eax
	je	L266
	call	abort
L266:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_6
	call	ret3
	cmpl	$31277, %eax
	je	L267
	call	abort
L267:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_6
	call	ret4
	cmpl	$20, %eax
	je	L268
	call	abort
L268:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_6
	call	ret5
	testl	%eax, %eax
	je	L269
	call	abort
L269:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_6
	call	ret6
	cmpl	$33554431, %eax
	je	L270
	call	abort
L270:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_6
	call	ret7
	cmpl	$26811, %eax
	je	L271
	call	abort
L271:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_6
	call	ret8
	cmpl	$155, %eax
	je	L272
	call	abort
L272:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_6
	call	ret9
	cmpl	$186, %eax
	je	L273
	call	abort
L273:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_7
	call	ret1
	cmpl	$3, %eax
	je	L274
	call	abort
L274:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_7
	call	ret2
	cmpl	$120, %eax
	je	L275
	call	abort
L275:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_7
	call	ret3
	cmpl	$12814, %eax
	je	L276
	call	abort
L276:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_7
	call	ret4
	cmpl	$16, %eax
	je	L277
	call	abort
L277:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_7
	call	ret5
	cmpl	$1, %eax
	je	L278
	call	abort
L278:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_7
	call	ret6
	testl	%eax, %eax
	je	L279
	call	abort
L279:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_7
	call	ret7
	cmpl	$136, %eax
	je	L280
	call	abort
L280:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_7
	call	ret8
	cmpl	$16, %eax
	je	L281
	call	abort
L281:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_7
	call	ret9
	cmpl	$131, %eax
	je	L282
	call	abort
L282:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_8
	call	ret1
	cmpl	$51, %eax
	je	L283
	call	abort
L283:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_8
	call	ret2
	cmpl	$767, %eax
	je	L284
	call	abort
L284:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_8
	call	ret3
	cmpl	$31743, %eax
	je	L285
	call	abort
L285:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_8
	call	ret4
	cmpl	$29, %eax
	je	L286
	call	abort
L286:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_8
	call	ret5
	cmpl	$1, %eax
	je	L287
	call	abort
L287:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_8
	call	ret6
	cmpl	$33818583, %eax
	je	L288
	call	abort
L288:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_8
	call	ret7
	cmpl	$27389, %eax
	je	L289
	call	abort
L289:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_8
	call	ret8
	cmpl	$157, %eax
	je	L290
	call	abort
L290:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_8
	call	ret9
	cmpl	$255, %eax
	je	L291
	call	abort
L291:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_9
	call	ret1
	cmpl	$48, %eax
	je	L292
	call	abort
L292:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_9
	call	ret2
	cmpl	$647, %eax
	je	L293
	call	abort
L293:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_9
	call	ret3
	cmpl	$18929, %eax
	je	L294
	call	abort
L294:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_9
	call	ret4
	cmpl	$13, %eax
	je	L295
	call	abort
L295:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_9
	call	ret5
	testl	%eax, %eax
	je	L296
	call	abort
L296:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_9
	call	ret6
	cmpl	$33818583, %eax
	je	L297
	call	abort
L297:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_9
	call	ret7
	cmpl	$27253, %eax
	je	L298
	call	abort
L298:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_9
	call	ret8
	cmpl	$141, %eax
	je	L299
	call	abort
L299:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_9
	call	ret9
	cmpl	$124, %eax
	je	L300
	call	abort
L300:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_a
	call	ret1
	cmpl	$17, %eax
	je	L301
	call	abort
L301:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_a
	call	ret2
	cmpl	$2, %eax
	je	L302
	call	abort
L302:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_a
	call	ret3
	cmpl	$2, %eax
	je	L303
	call	abort
L303:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_a
	call	ret4
	testl	%eax, %eax
	je	L304
	call	abort
L304:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_a
	call	ret5
	cmpl	$1, %eax
	je	L305
	call	abort
L305:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_a
	call	ret6
	cmpl	$127, %eax
	je	L306
	call	abort
L306:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_a
	call	ret7
	cmpl	$37, %eax
	je	L307
	call	abort
L307:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_a
	call	ret8
	cmpl	$9, %eax
	je	L308
	call	abort
L308:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_a
	call	ret9
	testl	%eax, %eax
	je	L309
	call	abort
L309:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_b
	call	ret1
	testl	%eax, %eax
	je	L310
	call	abort
L310:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_b
	call	ret2
	cmpl	$134, %eax
	je	L311
	call	abort
L311:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_b
	call	ret3
	cmpl	$4720, %eax
	je	L312
	call	abort
L312:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_b
	call	ret4
	cmpl	$21, %eax
	je	L313
	call	abort
L313:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_b
	call	ret5
	testl	%eax, %eax
	je	L314
	call	abort
L314:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_b
	call	ret6
	cmpl	$7255, %eax
	je	L315
	call	abort
L315:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_b
	call	ret7
	cmpl	$431, %eax
	je	L316
	call	abort
L316:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_b
	call	ret8
	cmpl	$3, %eax
	je	L317
	call	abort
L317:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_b
	call	ret9
	cmpl	$187, %eax
	je	L318
	call	abort
L318:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_c
	call	ret1
	cmpl	$54, %eax
	je	L319
	call	abort
L319:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_c
	call	ret2
	cmpl	$639, %eax
	je	L320
	call	abort
L320:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_c
	call	ret3
	cmpl	$31281, %eax
	je	L321
	call	abort
L321:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_c
	call	ret4
	cmpl	$24, %eax
	je	L322
	call	abort
L322:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_c
	call	ret5
	testl	%eax, %eax
	je	L323
	call	abort
L323:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_c
	call	ret6
	cmpl	$33554435, %eax
	je	L324
	call	abort
L324:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_c
	call	ret7
	cmpl	$26815, %eax
	je	L325
	call	abort
L325:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_c
	call	ret8
	cmpl	$159, %eax
	je	L326
	call	abort
L326:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_c
	call	ret9
	cmpl	$190, %eax
	je	L327
	call	abort
L327:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_d
	call	ret1
	cmpl	$44, %eax
	je	L328
	call	abort
L328:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_d
	call	ret2
	cmpl	$629, %eax
	je	L329
	call	abort
L329:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_d
	call	ret3
	cmpl	$31271, %eax
	je	L330
	call	abort
L330:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_d
	call	ret4
	cmpl	$14, %eax
	je	L331
	call	abort
L331:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_d
	call	ret5
	testl	%eax, %eax
	je	L332
	call	abort
L332:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_d
	call	ret6
	cmpl	$33554425, %eax
	je	L333
	call	abort
L333:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_d
	call	ret7
	cmpl	$26805, %eax
	je	L334
	call	abort
L334:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_d
	call	ret8
	cmpl	$149, %eax
	je	L335
	call	abort
L335:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_d
	call	ret9
	cmpl	$180, %eax
	je	L336
	call	abort
L336:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_e
	call	ret1
	cmpl	$17, %eax
	je	L337
	call	abort
L337:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_e
	call	ret2
	cmpl	$20, %eax
	je	L338
	call	abort
L338:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_e
	call	ret3
	cmpl	$4, %eax
	je	L339
	call	abort
L339:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_e
	call	ret4
	cmpl	$21, %eax
	je	L340
	call	abort
L340:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_e
	call	ret5
	cmpl	$1, %eax
	je	L341
	call	abort
L341:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_e
	call	ret6
	testl	%eax, %eax
	je	L342
	call	abort
L342:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_e
	call	ret7
	cmpl	$20, %eax
	je	L343
	call	abort
L343:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_e
	call	ret8
	cmpl	$20, %eax
	je	L344
	call	abort
L344:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_e
	call	ret9
	cmpl	$17, %eax
	je	L345
	call	abort
L345:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_f
	call	ret1
	cmpl	$51, %eax
	je	L346
	call	abort
L346:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_f
	call	ret2
	cmpl	$639, %eax
	je	L347
	call	abort
L347:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_f
	call	ret3
	cmpl	$31295, %eax
	je	L348
	call	abort
L348:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_f
	call	ret4
	cmpl	$23, %eax
	je	L349
	call	abort
L349:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_f
	call	ret5
	cmpl	$1, %eax
	je	L350
	call	abort
L350:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_f
	call	ret6
	cmpl	$33554451, %eax
	je	L351
	call	abort
L351:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_f
	call	ret7
	cmpl	$26815, %eax
	je	L352
	call	abort
L352:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_f
	call	ret8
	cmpl	$159, %eax
	je	L353
	call	abort
L353:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_f
	call	ret9
	cmpl	$187, %eax
	je	L354
	call	abort
L354:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_g
	call	ret1
	cmpl	$22, %eax
	je	L355
	call	abort
L355:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_g
	call	ret2
	cmpl	$601, %eax
	je	L356
	call	abort
L356:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_g
	call	ret3
	cmpl	$31243, %eax
	je	L357
	call	abort
L357:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_g
	call	ret4
	cmpl	$16, %eax
	je	L358
	call	abort
L358:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_g
	call	ret5
	testl	%eax, %eax
	je	L359
	call	abort
L359:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_g
	call	ret6
	cmpl	$33554469, %eax
	je	L360
	call	abort
L360:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_g
	call	ret7
	cmpl	$26777, %eax
	je	L361
	call	abort
L361:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_g
	call	ret8
	cmpl	$185, %eax
	je	L362
	call	abort
L362:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_g
	call	ret9
	cmpl	$158, %eax
	je	L363
	call	abort
L363:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_h
	call	ret1
	cmpl	$3, %eax
	je	L364
	call	abort
L364:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_h
	call	ret2
	cmpl	$37, %eax
	je	L365
	call	abort
L365:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_h
	call	ret3
	cmpl	$1839, %eax
	je	L366
	call	abort
L366:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_h
	call	ret4
	cmpl	$1, %eax
	je	L367
	call	abort
L367:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_h
	call	ret5
	testl	%eax, %eax
	je	L368
	call	abort
L368:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_h
	call	ret6
	cmpl	$1973790, %eax
	je	L369
	call	abort
L369:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_h
	call	ret7
	cmpl	$1577, %eax
	je	L370
	call	abort
L370:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_h
	call	ret8
	cmpl	$9, %eax
	je	L371
	call	abort
L371:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_h
	call	ret9
	cmpl	$11, %eax
	je	L372
	call	abort
L372:
	movb	$-69, d+11(%rip)
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movzwl	b+10(%rip), %eax
	andl	$1, %eax
	orw	$-2980, %ax
	movw	%ax, b+10(%rip)
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movw	$26812, d+8(%rip)
	movb	$-100, d+10(%rip)
	movb	$-69, d+11(%rip)
	movl	$3, %edi
	call	fn1_i
	call	ret1
	cmpl	$13, %eax
	je	L373
	call	abort
L373:
	movzbl	b+8(%rip), %eax
	andl	$-64, %eax
	orl	$51, %eax
	movb	%al, b+8(%rip)
	movl	$251, %edi
	call	fn2_i
	call	ret2
	cmpl	$9, %eax
	je	L374
	call	abort
L374:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orb	$159, %ah
	movl	%eax, b+8(%rip)
	movl	$13279, %edi
	call	fn3_i
	call	ret3
	cmpl	$4, %eax
	je	L375
	call	abort
L375:
	movl	b+8(%rip), %eax
	andl	$-131009, %eax
	orl	$35712, %eax
	movl	%eax, b+8(%rip)
	movl	$24, %edi
	call	fn4_i
	call	ret4
	cmpl	$2, %eax
	je	L376
	call	abort
L376:
	movzbl	c+8(%rip), %eax
	andl	$-32, %eax
	orl	$21, %eax
	movb	%al, c+8(%rip)
	movl	$1, %edi
	call	fn5_i
	call	ret5
	cmpl	$1, %eax
	je	L377
	call	abort
L377:
	movzbl	c+8(%rip), %eax
	orl	$32, %eax
	movb	%al, c+8(%rip)
	movl	$264151, %edi
	call	fn6_i
	call	ret6
	cmpl	$14, %eax
	je	L378
	call	abort
L378:
	movl	c+8(%rip), %eax
	andl	$63, %eax
	orl	$-2147483648, %eax
	movl	%eax, c+8(%rip)
	movl	$713, %edi
	call	fn7_i
	call	ret7
	cmpl	$3, %eax
	je	L379
	call	abort
L379:
	movw	$26812, d+8(%rip)
	movl	$17, %edi
	call	fn8_i
	call	ret8
	cmpl	$4, %eax
	je	L380
	call	abort
L380:
	movb	$-100, d+10(%rip)
	movl	$199, %edi
	call	fn9_i
	call	ret9
	cmpl	$16, %eax
	je	L381
	call	abort
L381:
	movb	$-69, d+11(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
