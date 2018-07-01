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
L10:
	jmp	L10
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
	jbe	L14
	call	foo
L14:
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
	jne	L17
	movl	$4096, %esi
	movl	$t+8, %edi
	call	baz
L17:
	movl	-20(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	L18
	movq	e(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	d(%rip), %eax
	addl	$1, %eax
	movl	%eax, d(%rip)
	movq	$f, e(%rip)
	movq	t(%rip), %rax
	testq	%rax, %rax
	je	L19
	movq	t(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L19
	movq	e(%rip), %rax
	movq	t(%rip), %rdx
	movq	%rdx, (%rax)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	L20
L19:
	call	abort
L21:
	addq	$8, -16(%rbp)
	addq	$8, -8(%rbp)
L20:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L21
L18:
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
	jmp	L24
L34:
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L25
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L25
	call	abort
L25:
	movq	e(%rip), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$80, %eax
	je	L27
	cmpl	$117, %eax
	je	L28
	cmpl	$45, %eax
	je	L29
	jmp	L26
L28:
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L30
	call	abort
L30:
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, t+4104(%rip)
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
	jmp	L26
L27:
	orl	$4096, -4(%rbp)
	jmp	L26
L29:
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
	cmpl	$1, -4(%rbp)
	jne	L31
	orl	$1536, -4(%rbp)
L31:
	movl	-4(%rbp), %eax
	jmp	L32
L26:
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
	movq	e(%rip), %rax
	addq	$8, %rax
	movq	%rax, e(%rip)
L24:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L33
	movq	e(%rip), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	L34
L33:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L35
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L35
	call	abort
L35:
	movl	-4(%rbp), %eax
L32:
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
	je	L37
	movl	a+16(%rip), %eax
	testl	%eax, %eax
	jne	L37
	call	abort
L37:
	movl	$0, %edi
	call	exit
