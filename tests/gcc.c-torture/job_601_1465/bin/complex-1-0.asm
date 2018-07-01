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
g0:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
g1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movabsq	$-4616189618054758400, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
g2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movl	$0, %eax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
xcexp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm0
	call	g0
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	call	g1
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	call	g2
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	leave
	ret
LC3:
	.long	0
	.long	0
	.long	0
	.long	1072693248
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	LC3(%rip), %rax
	movq	LC3+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	xcexp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L22
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L24
L22:
	call	abort
L24:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L23
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L25
L23:
	call	abort
L25:
	movl	$0, %edi
	call	exit
