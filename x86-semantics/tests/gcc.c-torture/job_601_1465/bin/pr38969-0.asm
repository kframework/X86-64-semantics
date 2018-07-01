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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	call	foo
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, -32(%rbp)
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	LC1(%rip), %eax
	movl	%eax, -8(%rbp)
	movq	-12(%rbp), %rax
	vmovq	%rax, %xmm0
	call	bar
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-28(%rbp), %xmm1
	setp	%cl
	movl	$1, %edx
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-28(%rbp), %xmm2
	cmovne	%edx, %ecx
	movl	-32(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	LC1(%rip), %xmm3
	setp	%sil
	movl	$1, %edx
	movl	-32(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	LC1(%rip), %xmm4
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1091567616
LC1:
	.long	1109917696
