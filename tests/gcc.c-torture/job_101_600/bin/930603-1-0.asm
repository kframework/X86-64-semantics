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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
fx:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vcvtsd2ss	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -8(%rbp)
	vcvtss2sd	-8(%rbp), %xmm0, %xmm0
	movabsq	$4612367379483429237, %rax
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm0
	movabsq	$4613937818241073152, %rax
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovd	%xmm6, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	call	inita
	vmovd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	call	initc
	vmovd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movl	$0, %eax
	call	f
	vcvtss2sd	-8(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	movl	$1, %eax
	call	fx
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm3
	vaddss	-4(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -12(%rbp)
	movl	$0, %eax
	call	f
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	LC3(%rip), %xmm4
	jp	L42
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	LC3(%rip), %xmm5
	jne	L42
	vcvtss2sd	-12(%rbp), %xmm0, %xmm0
	movabsq	$4616556323654417043, %rax
	vmovq	%rax, %xmm6
	vucomisd	%xmm0, %xmm6
	ja	L42
	vcvtss2sd	-12(%rbp), %xmm7, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC5(%rip), %xmm1
	ja	L42
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC6(%rip), %xmm2
	jp	L42
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	LC6(%rip), %xmm3
	je	L45
L42:
	call	abort
L45:
	movl	$0, %edi
	call	exit
inita:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC3(%rip), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
initc:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC6(%rip), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
LC3:
	.long	1077936128
LC5:
	.long	2212767151
	.long	1074875806
LC6:
	.long	1082130432
