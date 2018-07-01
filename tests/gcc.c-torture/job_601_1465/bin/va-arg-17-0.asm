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
	subq	$224, %rsp
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
	movq	%rdi, -216(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
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
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L47
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L56
L47:
	call	abort
L56:
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
	vmovq	%rax, %xmm4
	vucomisd	LC1(%rip), %xmm4
	jp	L48
	vmovq	%rax, %xmm5
	vucomisd	LC1(%rip), %xmm5
	je	L57
L48:
	call	abort
L57:
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
	vmovq	%rax, %xmm6
	vucomisd	LC2(%rip), %xmm6
	jp	L49
	vmovq	%rax, %xmm7
	vucomisd	LC2(%rip), %xmm7
	je	L58
L49:
	call	abort
L58:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L23
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L24
L23:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L24:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC3(%rip), %xmm0
	jp	L50
	vmovq	%rax, %xmm1
	vucomisd	LC3(%rip), %xmm1
	je	L59
L50:
	call	abort
L59:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L27
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L28
L27:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L28:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	jp	L51
	vmovq	%rax, %xmm3
	vucomisd	LC4(%rip), %xmm3
	je	L60
L51:
	call	abort
L60:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L31
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L32
L31:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L32:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L52
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	je	L61
L52:
	call	abort
L61:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L35
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L36
L35:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L36:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC6(%rip), %xmm6
	jp	L53
	vmovq	%rax, %xmm7
	vucomisd	LC6(%rip), %xmm7
	je	L62
L53:
	call	abort
L62:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L39
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L40
L39:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L40:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC7(%rip), %xmm0
	jp	L54
	vmovq	%rax, %xmm1
	vucomisd	LC7(%rip), %xmm1
	je	L63
L54:
	call	abort
L63:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L43
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L44
L43:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L44:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC8(%rip), %xmm2
	jp	L55
	vmovq	%rax, %xmm3
	vucomisd	LC8(%rip), %xmm3
	je	L64
L55:
	call	abort
L64:
	leave
	ret
LC9:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movabsq	$4620693217682128896, %r9
	movabsq	$4619567317775286272, %r8
	movabsq	$4618441417868443648, %rdi
	movabsq	$4617315517961601024, %rsi
	movabsq	$4616189618054758400, %rcx
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	movabsq	$4621256167635550208, %r10
	pushq	%r10
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm1
	vmovsd	LC0(%rip), %xmm0
	movl	$LC9, %edi
	movl	$8, %eax
	call	vafunction
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1072693248
LC1:
	.long	0
	.long	1073741824
LC2:
	.long	0
	.long	1074266112
LC3:
	.long	0
	.long	1074790400
LC4:
	.long	0
	.long	1075052544
LC5:
	.long	0
	.long	1075314688
LC6:
	.long	0
	.long	1075576832
LC7:
	.long	0
	.long	1075838976
LC8:
	.long	0
	.long	1075970048
