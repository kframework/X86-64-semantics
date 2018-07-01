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
LC0:
	.long	0
	.long	1074266112
	.long	0
	.long	1072693248
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp
	leaq	-240(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	LC0+8(%rip), %rax
	movq	%rax, -32(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -336(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -328(%rbp)
	movabsq	$4613937818241073152, %rax
	movq	%rax, -320(%rbp)
	movabsq	$4616189618054758400, %rax
	movq	%rax, -312(%rbp)
	movabsq	$4617315517961601024, %rax
	movq	%rax, -304(%rbp)
	movabsq	$4618441417868443648, %rax
	movq	%rax, -296(%rbp)
	movabsq	$4619567317775286272, %rax
	movq	%rax, -288(%rbp)
	movabsq	$4620693217682128896, %rax
	movq	%rax, -280(%rbp)
	movabsq	$4621256167635550208, %rax
	movq	%rax, -272(%rbp)
	movabsq	$4621819117588971520, %rax
	movq	%rax, -264(%rbp)
	movabsq	$4622382067542392832, %rax
	movq	%rax, -256(%rbp)
	movabsq	$4622945017495814144, %rax
	movq	%rax, -248(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	vmovq	%rdx, %xmm1
	vmovq	%rcx, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rcx
	vmovq	%rdx, %xmm4
	vmovq	%rsi, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	addl	$1, -20(%rbp)
L10:
	cmpl	$5, -20(%rbp)
	jle	L11
	leaq	-240(%rbp), %rax
	addq	$96, %rax
	cmpq	%rax, -8(%rbp)
	jne	L12
	leaq	-336(%rbp), %rax
	addq	$48, %rax
	cmpq	%rax, -16(%rbp)
	je	L13
L12:
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
