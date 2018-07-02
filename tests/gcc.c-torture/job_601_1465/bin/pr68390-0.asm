LCOLDB0:
LHOTB0:
	.p2align 4,,15
direct:
	imull	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edi, %xmm0, %xmm0
	ret
LCOLDE0:
LHOTE0:
LCOLDB1:
LHOTB1:
	.p2align 4,,15
broken:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	movl	%esi, %edi
	call %rdx
LCOLDE1:
LHOTE1:
LCOLDB3:
LHOTB3:
	.p2align 4,,15
.globl _start
_start:
	subq	$8, %rsp
	movl	$2, %esi
	movl	$direct, %edi
	call	broken
	vucomisd	LC2(%rip), %xmm0
	jp	L6
	jne	L6
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
L6:
	call	abort
LCOLDE3:
LHOTE3:
LC2:
	.long	0
	.long	1074790400
