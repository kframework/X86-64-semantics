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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	LC0(%rip), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -16(%rbp)
	movl	LC1(%rip), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -36(%rbp)
	je	L11
	leaq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L12
L11:
	leaq	-20(%rbp), %rax
	movq	%rax, -8(%rbp)
L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	cmpl	$0, -36(%rbp)
	je	L13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L15
L13:
	movl	-20(%rbp), %eax
L15:
	vmovd	%eax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	foo
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	jp	L20
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	je	L21
L20:
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	0
LC1:
	.long	1065353216
