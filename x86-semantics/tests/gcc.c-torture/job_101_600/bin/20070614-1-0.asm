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
v:
	.long	0
	.long	1074266112
	.long	0
	.long	1072693248
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	v(%rip), %rdx
	movq	v+8(%rip), %rax
	vmovq	%rdx, %xmm2
	vucomisd	-8(%rbp), %xmm2
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm3
	vucomisd	-8(%rbp), %xmm3
	cmove	%esi, %ecx
	vmovq	%rax, %xmm4
	vucomisd	-16(%rbp), %xmm4
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm5
	vucomisd	-16(%rbp), %xmm5
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L9
	call	abort
L9:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	v(%rip), %rdx
	movq	v+8(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L14
L15:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vmulss	%xmm2, %xmm0, %xmm1
	vcvtss2sd	%xmm1, %xmm3, %xmm3
	vmovq	%xmm3, %rdx
	vcvtss2sd	%xmm0, %xmm4, %xmm4
	vmovq	%xmm4, %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	bar
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	leaq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	foo
	addl	$1, -4(%rbp)
L14:
	cmpl	$5, -4(%rbp)
	jle	L15
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	baz
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	0
