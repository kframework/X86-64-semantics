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
a:
	.long	1
b:
	.long	-1
c:
	.long	1
	.bss
d:
	.zero	4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	c(%rip), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	d(%rip), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -16(%rbp)
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jge	L10
	movq	-8(%rbp), %rax
	jmp	L11
L10:
	movq	-16(%rbp), %rax
L11:
	movq	%rax, -24(%rbp)
	movl	$0, %eax
	vmovq	%rax, %xmm2
	vucomisd	-24(%rbp), %xmm2
	jp	L14
	movl	$0, %eax
	vmovq	%rax, %xmm3
	vucomisd	-24(%rbp), %xmm3
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
