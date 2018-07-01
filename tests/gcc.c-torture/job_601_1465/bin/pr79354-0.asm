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
	.comm	b,4,4
	.comm	f,4,4
	.comm	g,4,4
	.comm	e,4,4
	.comm	d,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, g(%rip)
	jmp	L10
L14:
	movl	f(%rip), %eax
	testl	%eax, %eax
	je	L11
	movq	d(%rip), %rax
	testq	%rax, %rax
	js	L12
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L13
L12:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L13:
	movl	%eax, e(%rip)
	movl	e(%rip), %eax
	movl	%eax, b(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, b(%rip)
L11:
	movl	g(%rip), %eax
	addl	$1, %eax
	movl	%eax, g(%rip)
L10:
	movl	g(%rip), %eax
	cmpl	$31, %eax
	jle	L14
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$5, -4(%rbp)
	movl	$1, f(%rip)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	$b, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
