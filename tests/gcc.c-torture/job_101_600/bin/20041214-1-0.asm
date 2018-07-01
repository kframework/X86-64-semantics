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
null:
	.string	"(null)"
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L10
	jmp	L11
L10:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	step0_jumps.2272+16(%rip), %rax
	jmp	L12
L13:
	addq	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L14
	jmp	L25
L12:
	jmp	*%rax
L25:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	L16
L14:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
L16:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	step0_jumps.2272+16(%rip), %rax
	jmp	L12
L17:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L18
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	L20
L18:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	L20
L21:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L23
L22:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L23:
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
L20:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L10
L11:
	movl	$0, %eax
	leave
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L27
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L27:
	movq	%rsi, -224(%rbp)
	movl	$16, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	g
	leave
	ret
LC0:
	.string	"asdf"
LC1:
	.string	"%s"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$LC0, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	f
	leaq	-16(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L29
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
step0_jumps.2272:
	.quad	L13
	.quad	L17
	.quad	L21
