expectd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L2
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jne	L2
	leaq	-16(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L1
L2:
	call	abort
L1:
	leave
	ret
expectf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L5
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jne	L5
	leaq	-8(%rbp), %rcx
	leaq	-4(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L4
L5:
	call	abort
L4:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	expectd
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	expectd
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	expectd
	vmovsd	LC1(%rip), %xmm1
	vmovsd	LC1(%rip), %xmm0
	call	expectd
	vmovsd	LC1(%rip), %xmm1
	vmovsd	LC1(%rip), %xmm0
	call	expectd
	vmovsd	LC1(%rip), %xmm1
	vmovsd	LC1(%rip), %xmm0
	call	expectd
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	expectf
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	expectf
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	expectf
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	expectf
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	expectf
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	expectf
	movl	$0, %eax
	popq	%rbp
	ret
LC1:
	.long	0
	.long	-2147483648
LC3:
	.long	2147483648
