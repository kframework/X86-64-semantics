LC2:
	.string	"ABC"
LC3:
	.string	"int=%d  char*=%s float=%f double=%f"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$10, -24(%rbp)
	movl	$LC0(%rip), %eax
	movl	%eax, -20(%rbp)
	movabsq	$4612361558371493478, %rax
	movq	%rax, -16(%rbp)
	movq	$LC2, -8(%rbp)
	vcvtss2sd	-20(%rbp), %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	-24(%rbp), %ecx
	vmovq	%rsi, %xmm1
	vmovq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$LC3, %edi
	movl	$2, %eax
	//call	printf
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1072064102
