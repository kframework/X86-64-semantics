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
	.comm	v,3,1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$v+1, -8(%rbp)
	jne	L10
	cmpq	$v+2, -16(%rbp)
	je	L11
L10:
	call	abort
L11:
	movzbl	v+1(%rip), %eax
	addl	$1, %eax
	movb	%al, v+1(%rip)
	leave
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$v, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L14
	call	abort
L14:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	24(%rbp), %eax
	testl	%eax, %eax
	je	L17
	movl	48(%rbp), %eax
	testl	%eax, %eax
	je	L17
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	fn2
	testl	%eax, %eax
	je	L18
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	fn2
	testl	%eax, %eax
	je	L18
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$124, %eax
	je	L22
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fn3
	jmp	L18
L22:
	nop
L18:
	movq	40(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fn1
L17:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	leave
	ret
LC0:
	.string	"+"
LC1:
	.string	"-"
bar:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$72, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$219, %eax
	je	L25
	cmpl	$220, %eax
	je	L26
	jmp	L24
L25:
	movq	-32(%rbp), %rax
	leaq	-48(%rax), %rdx
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	pushq	16(%rdx)
	pushq	8(%rdx)
	pushq	(%rdx)
	movl	$LC0, %esi
	movq	%rcx, %rdi
	call	foo
	addq	$48, %rsp
L26:
	movq	-32(%rbp), %rax
	leaq	-48(%rax), %rdx
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	pushq	16(%rdx)
	pushq	8(%rdx)
	pushq	(%rdx)
	movl	$LC1, %esi
	movq	%rcx, %rdi
	call	foo
	addq	$48, %rsp
L24:
	movq	-8(%rbp), %r10
	leave
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$v+1, -80(%rbp)
	movl	$1, -72(%rbp)
	movq	$1, -64(%rbp)
	movq	$v, -56(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$v+2, -32(%rbp)
	movl	$2, -24(%rbp)
	movq	$2, -16(%rbp)
	leaq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rsi
	movl	$220, %edi
	call	bar
	movzbl	v+1(%rip), %eax
	cmpb	$1, %al
	je	L28
	call	abort
L28:
	movl	$0, %eax
	leave
	ret
