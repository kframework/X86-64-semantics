twoTo52:
	.long	0
	.long	1127219200
func:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	vmovsd	%xmm0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -36(%rbp)
	cmpl	$1127219199, -36(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L2
	movabsq	$4841369599423283200, %rdx
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm0
	movabsq	$4841369599423283200, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm1
	vucomisd	-56(%rbp), %xmm1
	jp	L7
	vmovapd	%xmm1, %xmm6
	vucomisd	-56(%rbp), %xmm6
	je	L9
L7:
	call	abort
L9:
	movq	-56(%rbp), %rax
	movabsq	$4602678819172646912, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm7
	vmovq	%xmm7, %rbx
	movabsq	$4841369599423283200, %rax
	vmovq	%rbx, %xmm5
	vmovq	%rax, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm0
	movabsq	$4841369599423283200, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm2
	vmovapd	%xmm2, %xmm1
	movabsq	$4841369599423283200, %rdx
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm0
	movabsq	$4841369599423283200, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vucomisd	%xmm2, %xmm7
	jp	L10
	vmovq	%rax, %xmm3
	vmovapd	%xmm1, %xmm4
	vucomisd	%xmm4, %xmm3
	je	L8
	jmp	L10
L8:
	call	abort
L2:
	nop
L10:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	LC2(%rip), %xmm0
	call	func
	movl	$0, %eax
	popq	%rbp
	ret
LC2:
	.long	0
	.long	1072693248
