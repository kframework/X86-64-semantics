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
	.comm	u,8,8
	.comm	v,16,16
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	$2147483660, %edx
	movq	u(%rip), %rax
	movq	%rax, %rdi
	xorq	%rdx, %rdi
	movabsq	$9223231297218904063, %rcx
	movq	%rdx, %rsi
	andq	%rcx, %rsi
	movabsq	$9223231297218904063, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movabsq	$-9223231297218904064, %rax
	andq	%rax, %rdi
	movq	%rdi, %rdx
	leaq	(%rsi,%rcx), %rax
	xorq	%rdx, %rax
	movq	%rax, u(%rip)
	addl	$1, -4(%rbp)
L10:
	cmpl	$1, -4(%rbp)
	jbe	L11
	movl	$0, -4(%rbp)
	jmp	L12
L13:
	vmovaps	LC0(%rip), %xmm0
	vmovaps	v(%rip), %xmm1
	vaddps	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, v(%rip)
	addl	$1, -4(%rbp)
L12:
	cmpl	$1, -4(%rbp)
	jbe	L13
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movzwl	u(%rip), %eax
	cmpw	$24, %ax
	jne	L15
	movzwl	u+2(%rip), %eax
	testw	%ax, %ax
	jne	L15
	movzwl	u+4(%rip), %eax
	testw	%ax, %ax
	jne	L15
	movzwl	u+6(%rip), %eax
	testw	%ax, %ax
	je	L16
L15:
	call	abort
L16:
	movl	v(%rip), %eax
	vmovd	%eax, %xmm0
	vucomiss	LC1(%rip), %xmm0
	jp	L17
	vmovd	%eax, %xmm1
	vucomiss	LC1(%rip), %xmm1
	jne	L17
	movl	v+4(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC2(%rip), %xmm2
	jp	L17
	vmovd	%eax, %xmm3
	vucomiss	LC2(%rip), %xmm3
	jne	L17
	movl	v+8(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	LC3(%rip), %xmm4
	jp	L17
	vmovd	%eax, %xmm5
	vucomiss	LC3(%rip), %xmm5
	jne	L17
	movl	v+12(%rip), %eax
	movl	LC4(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L17
	movl	LC4(%rip), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	je	L21
L17:
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	1099956224
	.long	1101004800
	.long	1102053376
	.long	0
LC1:
	.long	1108344832
LC2:
	.long	1109393408
LC3:
	.long	1110441984
LC4:
	.long	0
