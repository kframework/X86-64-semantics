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
	.comm	a,20,16
	.comm	b,4,4
	.comm	c,8,8
	.comm	d,4,4
	.comm	e,8,8
	.comm	t,4112,64
	.comm	f,128,64
LC0:
	.string	"a"
LC1:
	.string	"-u"
LC2:
	.string	"b"
LC3:
	.string	"c"
g:
	.quad	LC0
	.quad	LC1
	.quad	LC2
	.quad	LC3
foo:
	pushq	%rbp
	movq	%rsp, %rbp
L40:
	jmp	L40
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$4096, -12(%rbp)
	jbe	L44
	call	foo
L44:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bar
	leave
	ret
setup1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	$4096, %esi
	movl	$t+8, %edi
	call	baz
	testq	%rax, %rax
	jne	L47
	movl	$4096, %esi
	movl	$t+8, %edi
	call	baz
L47:
	movl	-20(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	L48
	movq	e(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	d(%rip), %eax
	addl	$1, %eax
	movl	%eax, d(%rip)
	movq	$f, e(%rip)
	movq	t(%rip), %rax
	testq	%rax, %rax
	je	L49
	movq	t(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L49
	movq	e(%rip), %rax
	movq	t(%rip), %rdx
	movq	%rdx, (%rax)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	L50
L49:
	call	abort
L51:
	addq	$8, -16(%rbp)
	addq	$8, -8(%rbp)
L50:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L51
L48:
	movl	$1, %eax
	leave
	ret
setup2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movq	c(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
	movl	b(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	jmp	L54
L64:
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L55
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L55
	call	abort
L55:
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$80, %eax
	je	L57
	cmpl	$117, %eax
	je	L58
	cmpl	$45, %eax
	je	L59
	jmp	L56
L58:
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L60
	call	abort
L60:
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, t+4104(%rip)
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
	jmp	L56
L57:
	orl	$4096, -4(%rbp)
	jmp	L56
L59:
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
	cmpl	$1, -4(%rbp)
	jne	L61
	orl	$1536, -4(%rbp)
L61:
	movl	-4(%rbp), %eax
	jmp	L62
L56:
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
L54:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L63
	movq	e(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	L64
L63:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L65
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L65
	call	abort
L65:
	movl	-4(%rbp), %eax
L62:
	leave
	ret
LC4:
	.string	"/bin/sh"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$g, c(%rip)
	movl	$4, b(%rip)
	call	setup2
	movl	%eax, -4(%rbp)
	movq	$LC4, t(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	setup1
	movl	-4(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	L67
	movl	a+16(%rip), %eax
	testl	%eax, %eax
	jne	L67
	call	abort
L67:
	movl	$0, %edi
	call	exit
