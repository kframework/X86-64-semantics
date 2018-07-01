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
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	L9
	movl	$0, -4(%rbp)
	jmp	L11
L15:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L12
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L13
L12:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L13:
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	je	L14
	call	abort
L14:
	addl	$1, -4(%rbp)
L11:
	cmpl	$9, -4(%rbp)
	jle	L15
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L16
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L17
L16:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L17:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L19
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L9
L19:
	call	abort
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L21
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L21:
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L23
L22:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L23:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	L24
	leaq	-208(%rbp), %rax
	jmp	L25
L24:
	movl	$0, %eax
L25:
	movl	-212(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	bar
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4602678819172646912, %rax
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	pushq	$4
	vmovq	%rax, %xmm0
	movl	$3, %r9d
	movl	$2, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$100, %edi
	movl	$1, %eax
	call	foo
	addq	$48, %rsp
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
	.long	1071644672
