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
num_positive:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$32, -36(%rbp)
	jbe	L10
	subl	$32, -36(%rbp)
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	L11
L10:
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
L11:
	popq	%rbx
	popq	%rbp
	ret
num_trim:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$32, -36(%rbp)
	jbe	L13
	subl	$32, -36(%rbp)
	cmpl	$31, -36(%rbp)
	ja	L15
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -32(%rbp)
	jmp	L15
L13:
	cmpl	$31, -36(%rbp)
	ja	L16
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -28(%rbp)
L16:
	movl	$0, -32(%rbp)
L15:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	popq	%rbx
	popq	%rbp
	ret
num_rshift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_positive
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	L19
	cmpl	$0, -8(%rbp)
	je	L20
L19:
	movl	$0, -4(%rbp)
	jmp	L21
L20:
	movl	$-1, -4(%rbp)
L21:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	L22
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	L23
L22:
	cmpl	$31, -36(%rbp)
	ja	L24
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	-4(%rbp), %ecx
	shlx	%eax, %ecx, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	jmp	L25
L24:
	cmpl	$63, -36(%rbp)
	ja	L25
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$32, %eax
	movl	-4(%rbp), %ecx
	shlx	%eax, %ecx, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
L25:
	cmpl	$31, -40(%rbp)
	jbe	L26
	subl	$32, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
L26:
	cmpl	$0, -40(%rbp)
	je	L23
	movl	-28(%rbp), %edx
	movl	-40(%rbp), %eax
	shrx	%eax, %edx, %ecx
	movl	-32(%rbp), %edx
	movl	$32, %eax
	subl	-40(%rbp), %eax
	shlx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %eax
	shrx	%eax, %edx, %ecx
	movl	$32, %eax
	subl	-40(%rbp), %eax
	movl	-4(%rbp), %edx
	shlx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -32(%rbp)
L23:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_trim
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	leave
	ret
num_lshift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdi, -56(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	L29
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	L30
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	L30
	movl	$1, %eax
	jmp	L31
L30:
	movl	$0, %eax
L31:
	movl	%eax, -52(%rbp)
	movl	$0, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	L32
L29:
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$31, -4(%rbp)
	jbe	L33
	subl	$32, -4(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -60(%rbp)
L33:
	cmpl	$0, -4(%rbp)
	je	L34
	movl	-64(%rbp), %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %ecx
	movl	-60(%rbp), %edx
	movl	$32, %eax
	subl	-4(%rbp), %eax
	shrx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %eax
	movl	%eax, -60(%rbp)
L34:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_trim
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	L35
	movl	$0, -52(%rbp)
	jmp	L32
L35:
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	num_rshift
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jne	L37
	movl	-32(%rbp), %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	je	L38
L37:
	movl	$1, %eax
	jmp	L39
L38:
	movl	$0, %eax
L39:
	movl	%eax, -52(%rbp)
L32:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	leave
	ret
precision:
	.long	64
n:
	.long	16
num:
	.long	0
	.long	3
	.long	0
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	n(%rip), %edx
	movq	num(%rip), %rsi
	movq	num+8(%rip), %rax
	movl	%edx, %ecx
	movl	$64, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	num_lshift
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$196608, %eax
	je	L42
	call	abort
L42:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	L43
	call	abort
L43:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L44
	call	abort
L44:
	movl	$0, %edi
	call	exit
