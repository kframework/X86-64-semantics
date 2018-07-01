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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	vmovsd	%xmm0, -216(%rbp)
	vmovsd	%xmm1, -224(%rbp)
	vmovsd	%xmm2, -232(%rbp)
	vmovsd	%xmm3, -240(%rbp)
	vmovsd	%xmm4, -248(%rbp)
	vmovsd	%xmm5, -256(%rbp)
	vmovsd	%xmm6, -264(%rbp)
	vmovsd	%xmm7, -272(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	movl	$0, -200(%rbp)
	movl	$176, -196(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L11
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L12
L11:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L12:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L23
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L26
L23:
	call	abort
L26:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L15
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L16
L15:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L16:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	jp	L24
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L27
L24:
	call	abort
L27:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L19
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L20
L19:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L20:
	movq	(%rax), %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L25
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L28
L25:
	call	abort
L28:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4620693217682128896, %r9
	movabsq	$4619567317775286272, %r8
	movabsq	$4618441417868443648, %rdi
	movabsq	$4617315517961601024, %rsi
	movabsq	$4616189618054758400, %rcx
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	movl	$0, %r10d
	pushq	%r10
	movabsq	$4622382067542392832, %r10
	pushq	%r10
	movabsq	$4621819117588971520, %r10
	pushq	%r10
	movabsq	$4621256167635550208, %r10
	pushq	%r10
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm1
	vmovsd	LC11(%rip), %xmm0
	movl	$8, %eax
	call	f
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1076101120
LC1:
	.long	0
	.long	1076232192
LC11:
	.long	0
	.long	1072693248
