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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	f1
	movl	$0, %edi
	call	exit
LC0:
	.long	1065353216
	.long	0
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	LC0(%rip), %eax
	movl	%eax, -15(%rbp)
	movl	LC0+4(%rip), %eax
	movl	%eax, -11(%rbp)
	movb	$42, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f2
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	5(%rax), %eax
	movl	LC1(%rip), %ecx
	vmovd	%edx, %xmm0
	vmovd	%ecx, %xmm1
	vucomiss	%xmm1, %xmm0
	setp	%dil
	movl	$1, %esi
	movl	LC1(%rip), %ecx
	vmovd	%edx, %xmm2
	vmovd	%ecx, %xmm3
	vucomiss	%xmm3, %xmm2
	cmove	%edi, %esi
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	setp	%dil
	movl	$1, %ecx
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	movl	%ecx, %eax
	cmove	%edi, %eax
	orl	%esi, %eax
	cmpb	$1, %al
	je	L12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	L11
L12:
	call	abort
L11:
	leave
	ret
LC1:
	.long	1065353216
LC2:
	.long	0
