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
	vmovsd	%xmm0, -216(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	vmovsd	%xmm1, -224(%rbp)
	movl	$0, -200(%rbp)
	movl	$80, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L51
	movq	-216(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L62
L51:
	call	abort
L62:
	movq	-224(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	jp	L52
	movq	-224(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L63
L52:
	call	abort
L63:
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
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L53
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L64
L53:
	call	abort
L64:
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
	vmovq	%rax, %xmm0
	vucomisd	LC3(%rip), %xmm0
	jp	L54
	vmovq	%rax, %xmm1
	vucomisd	LC3(%rip), %xmm1
	je	L65
L54:
	call	abort
L65:
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
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	jp	L55
	vmovq	%rax, %xmm3
	vucomisd	LC4(%rip), %xmm3
	je	L66
L55:
	call	abort
L66:
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
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L56
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	je	L67
L56:
	call	abort
L67:
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
	vmovq	%rax, %xmm6
	vucomisd	LC6(%rip), %xmm6
	jp	L57
	vmovq	%rax, %xmm7
	vucomisd	LC6(%rip), %xmm7
	je	L68
L57:
	call	abort
L68:
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
	vmovq	%rax, %xmm0
	vucomisd	LC7(%rip), %xmm0
	jp	L58
	vmovq	%rax, %xmm1
	vucomisd	LC7(%rip), %xmm1
	je	L69
L58:
	call	abort
L69:
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
	vmovq	%rax, %xmm2
	vucomisd	LC8(%rip), %xmm2
	jp	L59
	vmovq	%rax, %xmm3
	vucomisd	LC8(%rip), %xmm3
	je	L70
L59:
	call	abort
L70:
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
	vmovq	%rax, %xmm4
	vucomisd	LC9(%rip), %xmm4
	jp	L60
	vmovq	%rax, %xmm5
	vucomisd	LC9(%rip), %xmm5
	je	L71
L60:
	call	abort
L71:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L47
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L48
L47:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L48:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC10(%rip), %xmm6
	jp	L61
	vmovq	%rax, %xmm7
	vucomisd	LC10(%rip), %xmm7
	je	L72
L61:
	call	abort
L72:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movabsq	$4618441417868443648, %r9
	movabsq	$4617315517961601024, %r8
	movabsq	$4616189618054758400, %rdi
	movabsq	$4613937818241073152, %rsi
	movabsq	$4611686018427387904, %rcx
	movabsq	$4651998512748167168, %rdx
	movabsq	$4651022146422702080, %rax
	movabsq	$4621256167635550208, %r10
	pushq	%r10
	movabsq	$4620693217682128896, %r10
	pushq	%r10
	movabsq	$4619567317775286272, %r10
	pushq	%r10
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovsd	LC2(%rip), %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$8, %eax
	call	vafunction
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1082900480
LC1:
	.long	0
	.long	1083127808
LC2:
	.long	0
	.long	1072693248
LC3:
	.long	0
	.long	1073741824
LC4:
	.long	0
	.long	1074266112
LC5:
	.long	0
	.long	1074790400
LC6:
	.long	0
	.long	1075052544
LC7:
	.long	0
	.long	1075314688
LC8:
	.long	0
	.long	1075576832
LC9:
	.long	0
	.long	1075838976
LC10:
	.long	0
	.long	1075970048
