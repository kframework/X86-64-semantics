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
copysign_bug:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movl	$0, %eax
	vmovq	%rax, %xmm3
	vucomisd	-8(%rbp), %xmm3
	jp	L16
	movl	$0, %eax
	vmovq	%rax, %xmm4
	vucomisd	-8(%rbp), %xmm4
	je	L10
L16:
	movq	-8(%rbp), %rdx
	movabsq	$4602678819172646912, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm1
	vucomisd	-8(%rbp), %xmm1
	jp	L10
	vmovq	%rax, %xmm3
	vucomisd	-8(%rbp), %xmm3
	jne	L10
	movl	$1, %eax
	jmp	L13
L10:
	movq	-8(%rbp), %rax
	vmovsd	LC2(%rip), %xmm0
	vmovsd	LC3(%rip), %xmm1
	vmovq	%rax, %xmm2
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	movl	$0, %eax
	vmovq	%rax, %xmm4
	vucomisd	%xmm0, %xmm4
	jbe	L19
	movl	$2, %eax
	jmp	L13
L19:
	movl	$3, %eax
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$-9223372036854775808, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	copysign_bug
	cmpl	$2, %eax
	je	L21
	call	abort
L21:
	movl	$0, %eax
	leave
	ret
LC2:
	.long	0
	.long	1072693248
	.long	0
	.long	0
LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
