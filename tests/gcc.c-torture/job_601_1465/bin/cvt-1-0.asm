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
g1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm3
	vcvttsd2siq	%xmm3, %rax
	popq	%rbp
	ret
g2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	-16(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	call	g1
	movq	%rax, %rbx
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdq	-16(%rbp), %xmm2, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	call	g2
	cmpq	%rax, %rbx
	je	L14
	call	abort
L14:
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	-16(%rbp), %xmm3, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	g2
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdq	%rax, %xmm4, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movl	$123456789, %edi
	call	f
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jp	L21
	vmovq	%rax, %xmm2
	vucomisd	LC0(%rip), %xmm2
	je	L23
L21:
	call	abort
L23:
	movl	$123456789, %edi
	call	f
	vmovq	%xmm0, %rbx
	movabsq	$4728057454347157504, %rax
	vmovq	%rax, %xmm0
	call	g2
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovq	%rbx, %xmm3
	vucomisd	%xmm0, %xmm3
	jp	L22
	vmovq	%rbx, %xmm4
	vucomisd	%xmm0, %xmm4
	je	L24
L22:
	call	abort
L24:
	movl	$0, %edi
	call	exit
LC0:
	.long	1409286144
	.long	1100836660
