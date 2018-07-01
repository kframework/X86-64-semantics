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
	.bss
fails:
	.zero	4
	.comm	a,60,32
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movl	%edi, -260(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	$2, -196(%rbp)
	jmp	L11
L21:
	movq	$0, -184(%rbp)
	addl	$1, -188(%rbp)
	addl	$2, -192(%rbp)
	movl	-260(%rbp), %eax
	sall	$4, %eax
	orl	-196(%rbp), %eax
	subl	$18, %eax
	cmpl	$1, %eax
	ja	L12
	movq	$a+24, -184(%rbp)
	movl	-244(%rbp), %eax
	cmpl	$160, %eax
	jae	L14
	movq	-232(%rbp), %rdx
	movl	-244(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rcx
	addq	$16, %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rcx)
	movl	-244(%rbp), %edx
	addl	$32, %edx
	movl	%edx, -244(%rbp)
	jmp	L15
L14:
	movq	-240(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -240(%rbp)
L15:
	movq	(%rax), %rdx
	movq	%rdx, -224(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -216(%rbp)
	jmp	L16
L12:
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
	nop
L16:
	cmpq	$0, -184(%rbp)
	je	L17
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	movl	-216(%rbp), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	jp	L22
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L17
L22:
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
L17:
	movl	fails(%rip), %eax
	testl	%eax, %eax
	je	L19
	jmp	L9
L19:
	addl	$1, -196(%rbp)
L11:
	cmpl	$3, -196(%rbp)
	jle	L21
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC0(%rip), %eax
	movl	%eax, a+32(%rip)
	movq	a+24(%rip), %rsi
	movl	a+32(%rip), %ecx
	movq	a+24(%rip), %rax
	movl	a+32(%rip), %edx
	vmovq	%rsi, %xmm2
	vmovq	%rcx, %xmm3
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$1, %edi
	movl	$4, %eax
	call	check
	movl	fails(%rip), %eax
	testl	%eax, %eax
	je	L24
	call	abort
L24:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	3342828032
