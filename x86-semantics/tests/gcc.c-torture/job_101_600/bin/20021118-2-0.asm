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
t1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movabsq	$4613937818241073152, %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	call	*%rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	vmovss	LC1(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	*%rax
	leave
	ret
t2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovss	LC3(%rip), %xmm0
	call	*%rax
	movabsq	$4613937818241073152, %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	call	*%rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	vmovss	LC1(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	*%rax
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jp	L14
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC0(%rip), %xmm2
	je	L15
L14:
	call	abort
L15:
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC2(%rip), %xmm2
	jp	L17
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	LC2(%rip), %xmm3
	jne	L17
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	LC1(%rip), %xmm4
	jp	L17
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	LC1(%rip), %xmm5
	je	L20
L17:
	call	abort
L20:
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC3(%rip), %xmm1
	jp	L24
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC3(%rip), %xmm2
	je	L25
L24:
	call	abort
L25:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	LC4(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	LC5(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	LC6(%rip), %eax
	movl	%eax, -8(%rbp)
	leaq	-16(%rbp), %rax
	movl	$f2, %ecx
	movl	$f1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	t1
	leaq	-16(%rbp), %rax
	movl	$f3, %r8d
	movl	$f2, %ecx
	movl	$f1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	t2
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	LC5(%rip), %xmm0
	jp	L30
	vmovd	%eax, %xmm1
	vucomiss	LC5(%rip), %xmm1
	je	L27
L30:
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC6(%rip), %xmm2
	jp	L31
	vmovd	%eax, %xmm3
	vucomiss	LC6(%rip), %xmm3
	je	L27
L31:
	call	abort
L27:
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1074266112
LC1:
	.long	1080033280
LC2:
	.long	1075838976
LC3:
	.long	1086324736
LC4:
	.long	1073741824
LC5:
	.long	1077936128
LC6:
	.long	1082130432
