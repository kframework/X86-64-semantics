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
	.comm	g1s,32,32
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	vmovq	%rdx, %xmm2
	vucomisd	-8(%rbp), %xmm2
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm3
	vucomisd	-8(%rbp), %xmm3
	cmove	%esi, %ecx
	vmovq	%rax, %xmm4
	vucomisd	-16(%rbp), %xmm4
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm5
	vucomisd	-16(%rbp), %xmm5
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L9
	call	abort
L9:
	leave
	ret
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	popq	%rbp
	ret
LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	LC0(%rip), %rax
	movq	LC0+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$g1s, %edi
	call	init
	movq	LC0(%rip), %rax
	movq	LC0+8(%rip), %rdx
	pushq	g1s+24(%rip)
	pushq	g1s+16(%rip)
	pushq	g1s+8(%rip)
	pushq	g1s(%rip)
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	check
	addq	$32, %rsp
	movl	$0, %eax
	leave
	ret
