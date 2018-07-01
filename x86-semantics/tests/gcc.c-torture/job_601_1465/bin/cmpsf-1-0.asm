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
feq:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L10
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jne	L10
	movl	$13, %eax
	jmp	L12
L10:
	movl	$140, %eax
L12:
	popq	%rbp
	ret
fne:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L18
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	je	L19
L18:
	movl	$13, %eax
	jmp	L17
L19:
	movl	$140, %eax
L17:
	popq	%rbp
	ret
flt:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jbe	L25
	movl	$13, %eax
	jmp	L23
L25:
	movl	$140, %eax
L23:
	popq	%rbp
	ret
fge:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jb	L31
	movl	$13, %eax
	jmp	L29
L31:
	movl	$140, %eax
L29:
	popq	%rbp
	ret
fgt:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jbe	L37
	movl	$13, %eax
	jmp	L35
L37:
	movl	$140, %eax
L35:
	popq	%rbp
	ret
fle:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jb	L43
	movl	$13, %eax
	jmp	L41
L43:
	movl	$140, %eax
L41:
	popq	%rbp
	ret
args:
	.long	0
	.long	1065353216
	.long	3212836864
	.long	2139095039
	.long	8388608
	.long	702623251
	.long	1290500515
	.long	3463149987
correct_results:
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$correct_results, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L45
L54:
	movl	-4(%rbp), %eax
	cltq
	movl	args(,%rax,4), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	L46
L53:
	movl	-8(%rbp), %eax
	cltq
	movl	args(,%rax,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	feq
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L47
	call	abort
L47:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	fne
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L48
	call	abort
L48:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	flt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L49
	call	abort
L49:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	fge
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L50
	call	abort
L50:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	fgt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L51
	call	abort
L51:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	fle
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L52
	call	abort
L52:
	addl	$1, -8(%rbp)
L46:
	cmpl	$7, -8(%rbp)
	jle	L53
	addl	$1, -4(%rbp)
L45:
	cmpl	$7, -4(%rbp)
	jle	L54
	movl	$0, %edi
	call	exit
