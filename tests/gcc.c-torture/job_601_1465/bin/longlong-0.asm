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
	.comm	pars,8,8
	.comm	b,256,64
r:
	.quad	b
alpha_ep_extbl_i_eq_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	pars(%rip), %rax
	shrq	$27, %rax
	andl	$31, %eax
	movl	%eax, -4(%rbp)
	movq	pars(%rip), %rax
	shrl	$5, %eax
	andl	$31, %eax
	movl	%eax, -8(%rbp)
	movq	pars(%rip), %rax
	andl	$31, %eax
	movl	%eax, -12(%rbp)
	movq	r(%rip), %rax
	movl	-8(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	r(%rip), %rax
	movl	-4(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	andl	$7, %eax
	salq	$3, %rax
	shrx	%rax, %rdx, %rax
	andl	$255, %eax
	movq	%rax, -24(%rbp)
	cmpl	$31, -12(%rbp)
	je	L9
	movq	r(%rip), %rax
	movl	-12(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$3160194, b+136(%rip)
	movabsq	$6003104017374052362, %rax
	movq	%rax, b+16(%rip)
	movl	$2281701442, %eax
	movq	%rax, pars(%rip)
	movl	$0, %eax
	call	alpha_ep_extbl_i_eq_0
	movq	b+16(%rip), %rax
	cmpq	$77, %rax
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
