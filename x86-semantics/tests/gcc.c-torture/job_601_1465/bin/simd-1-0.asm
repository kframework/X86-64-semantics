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
i:
	.long	150
	.long	100
	.long	150
	.long	200
j:
	.long	10
	.long	13
	.long	20
	.long	30
	.comm	k,16,16
	.comm	res,16,16
verify:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	L10
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	L10
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jne	L10
	movl	-16(%rbp), %eax
	cmpl	24(%rbp), %eax
	je	L9
L10:
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpaddd	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$230
	pushq	$170
	movl	$113, %r9d
	movl	$160, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpmulld	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$6000
	pushq	$3000
	movl	$1300, %r9d
	movl	$1500, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vmovd	%xmm1, %eax
	vmovd	%xmm0, %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	vpextrd	$1, %xmm1, %eax
	vpextrd	$1, %xmm0, %edi
	cltd
	idivl	%edi
	movl	%eax, %ecx
	vpextrd	$2, %xmm1, %eax
	vpextrd	$2, %xmm0, %edi
	cltd
	idivl	%edi
	movl	%eax, %edi
	vpextrd	$3, %xmm1, %eax
	vpextrd	$3, %xmm0, %r10d
	cltd
	idivl	%r10d
	vmovd	%edi, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovd	%esi, %xmm5
	vpinsrd	$1, %ecx, %xmm5, %xmm4
	vmovq	%xmm4, %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vpunpcklqdq	%xmm7, %xmm6, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$6
	pushq	$7
	movl	$7, %r9d
	movl	$15, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$8
	pushq	$20
	movl	$4, %r9d
	movl	$2, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$222
	pushq	$150
	movl	$109, %r9d
	movl	$158, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$214
	pushq	$130
	movl	$105, %r9d
	movl	$156, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vpxor	%xmm0, %xmm0, %xmm0
	vpsubd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$-200
	pushq	$-150
	movl	$-100, %r9d
	movl	$-150, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movl	res+12(%rip), %ecx
	movl	res+8(%rip), %edx
	movl	res+4(%rip), %esi
	movl	res(%rip), %eax
	pushq	$-201
	pushq	$-151
	movl	$-101, %r9d
	movl	$-151, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
