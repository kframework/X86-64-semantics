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
vd:
	.long	0
	.long	1072693248
	.long	0
	.long	0
vi:
	.long	1234567890
	.long	0
pd:
	.quad	vd
pi:
	.quad	vi
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L9
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$6160, %rsp
	movl	$-1, -4(%rbp)
	movl	$1, -6148(%rbp)
	movl	$0, -8(%rbp)
	leaq	-6144(%rbp), %rdx
	leaq	-6148(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init
	jmp	L12
L16:
	cmpl	$0, -4(%rbp)
	jne	L13
	movq	pd(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %edx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jbe	L14
	movq	pi(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	L14
	movq	pi(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
L14:
	movq	pd(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	pi(%rip), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sd	%eax, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, (%rdx)
L13:
	addl	$1, -4(%rbp)
L12:
	movl	-6148(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	L16
	cmpl	$1234567890, -8(%rbp)
	je	L17
	call	abort
L17:
	movl	$0, %eax
	leave
	ret
