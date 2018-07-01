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
LC0:
	.string	""
dummy1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$LC0, %eax
	popq	%rbp
	ret
dummy2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %edi
	call	exit
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+8(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+16(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+24(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+32(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+40(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+48(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+56(%rip)
	movabsq	$6148914691236517205, %rax
	movq	%rax, v.2282+64(%rip)
	movl	$v.2282, %eax
	popq	%rbp
	ret
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L15
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	L15
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	L15
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	L15
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	L16
L15:
	call	abort
L16:
	movl	$1, %eax
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -40(%rbp)
	movb	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	dummy1
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L19
	movl	$0, %eax
	jmp	L23
L19:
	movl	$72, %edi
	call	baz
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check
	testl	%eax, %eax
	je	L21
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check
	testl	%eax, %eax
	jne	L22
L21:
	movl	$0, %eax
	jmp	L23
L22:
	movq	-16(%rbp), %rax
L23:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, -12(%rbp)
	jmp	L25
L32:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	L33
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	bar
	movq	%rax, -24(%rbp)
	jmp	L28
L33:
	movq	$0, -24(%rbp)
	nop
L28:
	cmpq	$0, -24(%rbp)
	je	L29
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dummy2
	movq	%rax, -8(%rbp)
	jmp	L34
L29:
	movl	$1, %eax
	jmp	L31
L34:
	addl	$1, -12(%rbp)
L25:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	L32
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
L31:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	call	abort
	.local	v.2282
	.comm	v.2282,72,64
