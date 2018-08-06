foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	orl	$-65536, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	L2
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	jmp	L3
L2:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
L3:
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	foo
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jp	L9
	vmovq	%rax, %xmm2
	vucomisd	LC0(%rip), %xmm2
	je	L10
L9:
	call	abort
L10:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	0
	.long	1106247648
