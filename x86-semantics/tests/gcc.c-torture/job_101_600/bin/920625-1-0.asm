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
pts:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1075052544
	.long	0
	.long	1075314688
	.long	0
	.long	1075576832
	.long	0
	.long	1075838976
va1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
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
	movl	%edi, -260(%rbp)
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	$0, -180(%rbp)
	jmp	L11
L17:
	movl	-228(%rbp), %eax
	cmpl	$160, %eax
	jae	L12
	movq	-216(%rbp), %rdx
	movl	-228(%rbp), %eax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rcx
	leaq	-208(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rsi
	leaq	16(%rcx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rsi)
	movl	-228(%rbp), %edx
	addl	$32, %edx
	movl	%edx, -228(%rbp)
	jmp	L13
L12:
	movq	-224(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -224(%rbp)
L13:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movl	-180(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$pts, %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L14
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L14
	movl	-180(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$pts, %rax
	movq	8(%rax), %rax
	movq	-248(%rbp), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L14
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L18
L14:
	call	abort
L18:
	addl	$1, -180(%rbp)
L11:
	movl	-180(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	L17
	leave
	ret
ipts:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
va2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L20
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L20:
	movl	%edi, -228(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -180(%rbp)
	jmp	L21
L26:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L23
L22:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L23:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movl	ipts(,%rax,8), %edx
	movl	-224(%rbp), %eax
	cmpl	%eax, %edx
	jne	L24
	movl	-180(%rbp), %eax
	cltq
	movl	ipts+4(,%rax,8), %edx
	movl	-220(%rbp), %eax
	cmpl	%eax, %edx
	je	L25
L24:
	call	abort
L25:
	addl	$1, -180(%rbp)
L21:
	movl	-180(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jl	L26
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	pts+48(%rip), %r10
	movq	pts+56(%rip), %r9
	movq	pts+32(%rip), %r8
	movq	pts+40(%rip), %rdi
	movq	pts+16(%rip), %rsi
	movq	pts+24(%rip), %rcx
	movq	pts(%rip), %rax
	movq	pts+8(%rip), %rdx
	vmovq	%r10, %xmm6
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm4
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm2
	vmovq	%rcx, %xmm3
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$4, %edi
	movl	$8, %eax
	call	va1
	movq	ipts+24(%rip), %r8
	movq	ipts+16(%rip), %rcx
	movq	ipts+8(%rip), %rdx
	movq	ipts(%rip), %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	va2
	movl	$0, %edi
	call	exit
