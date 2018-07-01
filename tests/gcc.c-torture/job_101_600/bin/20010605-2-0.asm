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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -24(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$2, %eax
	call	foo
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	LC2(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	LC2(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	LC3(%rip), %eax
	movl	%eax, -40(%rbp)
	movq	-44(%rbp), %rax
	vmovq	%rax, %xmm0
	movl	$1, %eax
	call	bar
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	movabsq	$-6917529027641081856, %rax
	movl	$16385, %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	movabsq	$-6917529027641081856, %rax
	movl	$16385, %edx
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	movq	-112(%rbp), %rax
	movl	-104(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	movabsq	$-4611686018427387904, %rax
	movl	$16385, %edx
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	movl	$0, %eax
	call	baz
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L11
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jne	L11
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC1(%rip), %xmm6
	jp	L11
	vmovq	%rax, %xmm7
	vucomisd	LC1(%rip), %xmm7
	je	L14
L11:
	call	abort
L14:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC2(%rip), %xmm1
	jp	L16
	vmovd	%eax, %xmm2
	vucomiss	LC2(%rip), %xmm2
	jne	L16
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	LC3(%rip), %xmm3
	jp	L16
	vmovd	%eax, %xmm4
	vucomiss	LC3(%rip), %xmm4
	je	L19
L16:
	call	abort
L19:
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	jp	L25
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L21
	fldt	32(%rbp)
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	jp	L26
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L24
	jmp	L21
L25:
	fstp	%st(0)
	jmp	L21
L26:
	fstp	%st(0)
L21:
	call	abort
L24:
	popq	%rbp
	ret
LC1:
	.long	0
	.long	1073741824
LC2:
	.long	1077936128
LC3:
	.long	1082130432
LC4:
	.long	0
	.long	2684354560
	.long	16385
	.long	0
LC5:
	.long	0
	.long	3221225472
	.long	16385
	.long	0
