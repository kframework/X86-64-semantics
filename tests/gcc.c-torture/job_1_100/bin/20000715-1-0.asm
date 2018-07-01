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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	L40
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cmpl	$2, %eax
	setne	%al
	jmp	L41
L40:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$2, %eax
	setne	%al
L41:
	testb	%al, %al
	je	L42
	call	abort
L42:
	cmpl	$3, -4(%rbp)
	je	L43
	call	abort
L43:
	cmpl	$3, -8(%rbp)
	je	L39
	call	abort
L39:
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	L46
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	L47
L46:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
L47:
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	je	L48
	call	abort
L48:
	cmpl	$3, -4(%rbp)
	je	L49
	call	abort
L49:
	cmpl	$3, -8(%rbp)
	je	L45
	call	abort
L45:
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	$3, -12(%rbp)
	movl	$2, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	L52
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cmpl	$2, %eax
	setne	%al
	jmp	L53
L52:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$2, %eax
	setne	%al
L53:
	testb	%al, %al
	je	L54
	call	abort
L54:
	cmpl	$3, -4(%rbp)
	je	L55
	call	abort
L55:
	cmpl	$3, -8(%rbp)
	je	L51
	call	abort
L51:
	leave
	ret
	.comm	x,4,4
	.comm	y,4,4
init_xy:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, x(%rip)
	movl	$2, y(%rip)
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	call	init_xy
	movl	x(%rip), %edx
	movl	y(%rip), %eax
	cmpl	%eax, %edx
	jge	L59
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cmpl	$2, %eax
	setne	%al
	jmp	L60
L59:
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cmpl	$2, %eax
	setne	%al
L60:
	testb	%al, %al
	je	L61
	call	abort
L61:
	movl	x(%rip), %eax
	cmpl	$3, %eax
	je	L62
	call	abort
L62:
	movl	y(%rip), %eax
	cmpl	$3, %eax
	je	L58
	call	abort
L58:
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	init_xy
	movl	x(%rip), %edx
	movl	y(%rip), %eax
	cmpl	%eax, %edx
	jge	L65
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	jmp	L66
L65:
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
L66:
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	je	L67
	call	abort
L67:
	movl	x(%rip), %eax
	cmpl	$3, %eax
	je	L68
	call	abort
L68:
	movl	y(%rip), %eax
	cmpl	$3, %eax
	je	L64
	call	abort
L64:
	leave
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$2, -8(%rbp)
	call	init_xy
	movl	y(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	L71
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	jmp	L72
L71:
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
L72:
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	je	L73
	call	abort
L73:
	movl	x(%rip), %eax
	cmpl	$3, %eax
	je	L74
	call	abort
L74:
	movl	y(%rip), %eax
	cmpl	$3, %eax
	je	L70
	call	abort
L70:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test1
	call	test2
	call	test3
	call	test4
	call	test5
	call	test6
	movl	$0, %edi
	call	exit
