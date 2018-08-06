foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	vmovaps	%xmm0, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	L2
L3:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	vmovaps	-48(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	addl	$1, -4(%rbp)
L2:
	cmpl	$31, -4(%rbp)
	jle	L3
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$528, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vmovaps	LC0(%rip), %xmm0
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	-476(%rbp), %eax
	vmovss	LC1(%rip), %xmm0
	vmovss	LC2(%rip), %xmm1
	vmovd	%eax, %xmm2
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	jp	L9
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	L10
L9:
	call	abort
L10:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L8
	call	__stack_chk_fail
L8:
	leave
	ret
LC0:
	.long	0
	.long	2147483648
	.long	0
	.long	2147483648
LC1:
	.long	1065353216
	.long	0
	.long	0
	.long	0
LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
LC3:
	.long	3212836864
