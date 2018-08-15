	.local	pzero
	.comm	pzero,8,8
nzero:
	.long	0
	.long	-2147483648
pinf:
	.long	0
	.long	2146435072
ninf:
	.long	0
	.long	-1048576
nan:
	.long	0
	.long	2146959360
expect:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L9
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L12
L9:
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L1
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	je	L10
	jmp	L1
L10:
	call	abort
L12:
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L11
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L13
L11:
	call	abort
L13:
	leaq	-16(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L1
	call	abort
L1:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	pzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	pzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	nzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	pzero(%rip), %rax
	movq	pzero(%rip), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	pzero(%rip), %rax
	movq	nzero(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rcx
	movq	nzero(%rip), %rax
	movq	pzero(%rip), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	nzero(%rip), %rax
	movq	nzero(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	pzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rcx
	movq	pzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rcx
	movq	nzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rcx
	movq	nzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rdx
	movq	pzero(%rip), %rax
	vmovsd	LC0(%rip), %xmm0
	btcq	$63, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pzero(%rip), %rdx
	movq	nzero(%rip), %rax
	vmovsd	LC0(%rip), %xmm0
	btcq	$63, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nan(%rip), %rcx
	movq	pzero(%rip), %rax
	movq	pzero(%rip), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vdivsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nan(%rip), %rcx
	movq	pzero(%rip), %rax
	movq	nzero(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nan(%rip), %rcx
	movq	nzero(%rip), %rax
	movq	pzero(%rip), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vdivsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	nan(%rip), %rcx
	movq	nzero(%rip), %rax
	movq	nzero(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pinf(%rip), %rcx
	movq	pzero(%rip), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vdivsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	ninf(%rip), %rcx
	movq	pzero(%rip), %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	ninf(%rip), %rcx
	movq	nzero(%rip), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vdivsd	%xmm2, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movq	pinf(%rip), %rcx
	movq	nzero(%rip), %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rcx, %xmm1
	vmovq	%rax, %xmm0
	call	expect
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0