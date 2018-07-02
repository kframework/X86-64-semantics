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
a:
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.zero	2
b:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.zero	2
c:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L40
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L40
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L40
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	L41
L40:
	call	abort
L41:
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L42
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L42
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L42
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	jne	L42
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	imulq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627776, %rdx
	cmpq	%rdx, %rax
	je	L43
L42:
	call	abort
L43:
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	addq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	L44
	call	abort
L44:
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	jne	L45
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$8589934592, %rdx
	cmpq	%rdx, %rax
	je	L46
L45:
	call	abort
L46:
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movabsq	$4296015872, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$8589934591, %rax
	andq	a(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$1099511627775, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1095217709056, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$1099511627775, %rax
	andq	a+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$8589934591, %rax
	andq	b(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	andq	b+8(%rip), %rax
	movq	%rax, %rcx
	movabsq	$2199023255551, %rax
	andq	%rcx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	jne	L47
	movabsq	$2199023255551, %rax
	andq	a+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	andq	b+16(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movabsq	$2199023255551, %rdx
	andq	%rdx, %rax
	movabsq	$2194729336832, %rdx
	cmpq	%rdx, %rax
	je	L48
L47:
	call	abort
L48:
	movabsq	$8589934591, %rax
	andq	c(%rip), %rax
	addq	$1, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movabsq	$8589934591, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	c(%rip), %rdx
	movabsq	$-8589934592, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, c(%rip)
	movabsq	$8589934591, %rax
	andq	c(%rip), %rax
	testq	%rax, %rax
	jne	L49
	movabsq	$1099511627775, %rax
	andq	c+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movq	c+8(%rip), %rdx
	movabsq	$-1099511627776, %rax
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, c+8(%rip)
	movabsq	$1099511627775, %rax
	andq	c+8(%rip), %rax
	movq	%rax, %rdx
	movabsq	$1099511627775, %rax
	cmpq	%rax, %rdx
	jne	L49
	movabsq	$2199023255551, %rax
	andq	c+16(%rip), %rax
	movq	%rax, %rdx
	movabsq	$2199023255551, %rax
	addq	%rdx, %rax
	movabsq	$2199023255551, %rcx
	andq	%rcx, %rax
	movl	%eax, %ecx
	movl	c+16(%rip), %esi
	andl	$0, %esi
	orl	%esi, %ecx
	movl	%ecx, c+16(%rip)
	shrq	$32, %rax
	andl	$511, %eax
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	c+20(%rip), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, c+20(%rip)
	testq	%rdx, %rdx
	je	L50
L49:
	call	abort
L50:
	movl	$0, %edi
	call	exit
