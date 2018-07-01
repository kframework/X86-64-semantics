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
	.comm	u,8,8
	.comm	h,8,8
	.bss
check:
	.zero	4
o:
	.zero	4
LC0:
	.string	"a"
LC1:
	.string	"b"
LC2:
	.string	"c"
LC3:
	.string	"d"
LC4:
	.string	"e"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$LC0, -48(%rbp)
	movq	$LC1, -40(%rbp)
	movq	$LC2, -32(%rbp)
	movq	$LC3, -24(%rbp)
	movq	$LC4, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	x
	testl	%eax, %eax
	jne	L10
	movl	check(%rip), %eax
	cmpl	$2, %eax
	jne	L10
	movl	o(%rip), %eax
	cmpl	$5, %eax
	je	L11
L10:
	call	abort
L11:
	movl	$0, %edi
	call	exit
x:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	o(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	L13
	cmpl	$2, -36(%rbp)
	jle	L13
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L13
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L14
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s
	movq	%rax, h(%rip)
	movq	-24(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jne	L14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	m
	movq	%rax, h(%rip)
L14:
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s
	movq	%rax, u(%rip)
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L15
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	m
	movq	%rax, u(%rip)
	jmp	L16
L15:
	jmp	L16
L13:
	call	abort
L16:
	jmp	L17
L19:
	movl	o(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	r
	testl	%eax, %eax
	jne	L17
	movl	$1, %eax
	jmp	L20
L17:
	movl	o(%rip), %eax
	addl	$1, %eax
	movl	%eax, o(%rip)
	movl	o(%rip), %eax
	cmpl	-36(%rbp), %eax
	jl	L19
	movl	$0, %eax
L20:
	leave
	ret
m:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	abort
s:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L23
	movl	check(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, check(%rip)
	cmpl	$1, %eax
	jle	L24
L23:
	call	abort
L24:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	leave
	ret
r:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	c.2295(%rip), %eax
	cmpb	%al, %dl
	jne	L27
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movzbl	c.2295+1(%rip), %eax
	cmpb	%al, %dl
	jne	L27
	movl	cnt.2296(%rip), %eax
	cmpl	$3, %eax
	jle	L28
L27:
	call	abort
L28:
	movzbl	c.2295(%rip), %eax
	addl	$1, %eax
	movb	%al, c.2295(%rip)
	movl	cnt.2296(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt.2296(%rip)
	movl	$1, %eax
	leave
	ret
c.2295:
	.string	"b"
	.local	cnt.2296
	.comm	cnt.2296,4,4
