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
	.comm	bitmap_zero_bits,40,32
bmp_iter_set_init:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
L13:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L10
	movq	-8(%rbp), %rax
	movq	$bitmap_zero_bits, (%rax)
	jmp	L11
L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	movl	-20(%rbp), %edx
	shrl	$7, %edx
	cmpl	%edx, %eax
	jb	L12
	jmp	L11
L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	L13
L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	movl	-20(%rbp), %edx
	shrl	$7, %edx
	cmpl	%edx, %eax
	je	L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	sall	$7, %eax
	movl	%eax, -20(%rbp)
L14:
	movl	-20(%rbp), %eax
	shrl	$6, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	16(%rdx), %edx
	movl	%edx, %edx
	movq	24(%rax,%rdx,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	andl	$63, %eax
	shrx	%rax, %rdx, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	popq	%rbp
	ret
bmp_iter_next:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	popq	%rbp
	ret
bmp_iter_set_tail:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
L17:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L18
	movl	$1, %eax
	popq	%rbp
	ret
bmp_iter_set:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L21
	jmp	L22
L23:
	shrq	-16(%rbp)
	addl	$1, -4(%rbp)
L22:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L23
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	L24
L21:
	movl	-4(%rbp), %eax
	addl	$63, %eax
	shrl	$6, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
L29:
	jmp	L25
L27:
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movq	24(%rax,%rdx,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	L26
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bmp_iter_set_tail
	jmp	L24
L26:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leal	64(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
L25:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	L27
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L28
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	L24
L28:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	sall	$7, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	L29
L24:
	leave
	ret
catchme:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L30
	cmpl	$64, -4(%rbp)
	je	L30
	call	abort
L30:
	leave
	ret
foobar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -56(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	bmp_iter_set_init
	jmp	L33
L34:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	catchme
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bmp_iter_next
L33:
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bmp_iter_set
	testb	%al, %al
	jne	L34
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	$1, -24(%rbp)
	movq	$1, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	foobar
	movl	$0, %eax
	leave
	ret
