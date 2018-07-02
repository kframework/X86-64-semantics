	.file	"pr68390.c"
	.text
	.globl	direct
	.type	direct, @function
direct:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L2:
	movl	%edi, -180(%rbp)
	movl	-180(%rbp), %eax
	imull	-180(%rbp), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	leave
	ret
	.size	direct, .-direct
	.globl	broken
	.type	broken, @function
broken:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	*%rdx
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	ret
	.size	broken, .-broken
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$direct, %edi
	call	broken
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	imull	-4(%rbp), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	jp	.L10
	vmovq	%rax, %xmm3
	vucomisd	-16(%rbp), %xmm3
	je	.L11
.L10:
	call	abort
.L11:
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
