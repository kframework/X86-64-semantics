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
vafunction:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
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
	movq	%rdi, -232(%rbp)
	movl	$0, -180(%rbp)
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$1, -184(%rbp)
	jmp	L11
L19:
	movl	-180(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L12
	movl	-220(%rbp), %eax
	cmpl	$176, %eax
	jae	L13
	movq	-208(%rbp), %rdx
	movl	-220(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-220(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -220(%rbp)
	jmp	L14
L13:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
L14:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	-184(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	-192(%rbp), %xmm1
	jp	L20
	vmovq	%rax, %xmm2
	vucomisd	-192(%rbp), %xmm2
	je	L15
L20:
	call	abort
L12:
	movl	-224(%rbp), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-208(%rbp), %rdx
	movl	-224(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	L18
L17:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
L18:
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	L15
	call	abort
L15:
	addl	$1, -184(%rbp)
	addl	$1, -180(%rbp)
L11:
	cmpl	$18, -184(%rbp)
	jle	L19
	leave
	ret
LC8:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movabsq	$4625196817309499392, %r10
	movabsq	$4624070917402656768, %r9
	movabsq	$4622945017495814144, %r8
	movabsq	$4621819117588971520, %rdi
	movabsq	$4620693217682128896, %rsi
	movabsq	$4618441417868443648, %rcx
	movabsq	$4616189618054758400, %rdx
	movabsq	$4611686018427387904, %rax
	movabsq	$4625759767262920704, %r11
	pushq	%r11
	pushq	$17
	pushq	$15
	pushq	$13
	pushq	$11
	vmovq	%r10, %xmm7
	vmovq	%r9, %xmm6
	vmovq	%r8, %xmm5
	vmovq	%rdi, %xmm4
	movl	$9, %r9d
	vmovq	%rsi, %xmm3
	movl	$7, %r8d
	vmovq	%rcx, %xmm2
	movl	$5, %ecx
	vmovq	%rdx, %xmm1
	movl	$3, %edx
	vmovq	%rax, %xmm0
	movl	$1, %esi
	movl	$LC8, %edi
	movl	$8, %eax
	call	vafunction
	addq	$48, %rsp
	movl	$0, %edi
	call	exit
