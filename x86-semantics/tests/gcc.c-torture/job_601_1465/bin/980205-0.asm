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
fdouble:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	vmovsd	%xmm0, -216(%rbp)
	movl	$0, -208(%rbp)
	movl	$64, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L11
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L12
L11:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L12:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm0
	vucomisd	-216(%rbp), %xmm0
	jp	L13
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm1
	vucomisd	-216(%rbp), %xmm1
	jne	L13
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	jp	L13
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L16
L13:
	call	abort
L16:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4611686018427387904, %rax
	vmovq	%rax, %xmm1
	vmovsd	LC0(%rip), %xmm0
	movl	$2, %eax
	call	fdouble
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1072693248
LC1:
	.long	0
	.long	1073741824
