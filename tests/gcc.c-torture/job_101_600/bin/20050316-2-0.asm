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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	LC0(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -4(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test1
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC0(%rip), %xmm1
	jp	L16
	vmovd	%eax, %xmm2
	vucomiss	LC0(%rip), %xmm2
	jne	L16
	movl	-28(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	LC0(%rip), %xmm3
	jp	L16
	vmovd	%eax, %xmm4
	vucomiss	LC0(%rip), %xmm4
	je	L25
L16:
	call	abort
L25:
	movl	LC1(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	LC1(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test2
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	LC1(%rip), %xmm5
	jp	L19
	vmovd	%eax, %xmm6
	vucomiss	LC1(%rip), %xmm6
	jne	L19
	movl	-28(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	LC1(%rip), %xmm7
	jp	L19
	vmovd	%eax, %xmm1
	vucomiss	LC1(%rip), %xmm1
	je	L26
L19:
	call	abort
L26:
	movabsq	$17179869188, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test3
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$4, %eax
	jne	L22
	movl	-28(%rbp), %eax
	cmpl	$4, %eax
	je	L23
L22:
	call	abort
L23:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1073741824
LC1:
	.long	1086324736
