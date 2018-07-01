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
doit:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movq	%rdi, -216(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$24, %edi
	call	malloc
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movl	$24, %edi
	call	malloc
	movq	%rax, -192(%rbp)
	movq	-208(%rbp), %rax
	movl	$8, (%rax)
	movl	$48, 4(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	leaq	-176(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movq	-184(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -184(%rbp)
	addq	$8, -184(%rbp)
	movq	-192(%rbp), %rax
	movl	$8, (%rax)
	movl	$48, 4(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, 8(%rax)
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L9
	call	abort
L9:
	leave
	ret
LC0:
	.string	"hello world\n"
LC1:
	.string	"%s"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$LC0, %esi
	movl	$LC1, %edi
	movl	$0, %eax
	call	doit
	movl	$0, %edi
	call	exit
