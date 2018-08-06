test_isunordered:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jnp	L2
	movl	-12(%rbp), %eax
	jmp	L3
L2:
	movl	-16(%rbp), %eax
L3:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_isunordered:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L6
	movl	-12(%rbp), %eax
	jmp	L7
L6:
	movl	-16(%rbp), %eax
L7:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_isless:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	setbe	%al
	xorl	$1, %eax
	testb	%al, %al
	je	L10
	movl	-12(%rbp), %eax
	jmp	L11
L10:
	movl	-16(%rbp), %eax
L11:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_isless:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L19
	movl	-12(%rbp), %eax
	jmp	L16
L19:
	movl	-16(%rbp), %eax
L16:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_islessequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	setb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	L21
	movl	-12(%rbp), %eax
	jmp	L22
L21:
	movl	-16(%rbp), %eax
L22:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_islessequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jnb	L30
	movl	-12(%rbp), %eax
	jmp	L27
L30:
	movl	-16(%rbp), %eax
L27:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_isgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	setbe	%al
	xorl	$1, %eax
	testb	%al, %al
	je	L32
	movl	-12(%rbp), %eax
	jmp	L33
L32:
	movl	-16(%rbp), %eax
L33:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_isgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	ja	L41
	movl	-12(%rbp), %eax
	jmp	L38
L41:
	movl	-16(%rbp), %eax
L38:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_isgreaterequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	setb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	L43
	movl	-12(%rbp), %eax
	jmp	L44
L43:
	movl	-16(%rbp), %eax
L44:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_isgreaterequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jnb	L52
	movl	-12(%rbp), %eax
	jmp	L49
L52:
	movl	-16(%rbp), %eax
L49:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_islessgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	sete	%al
	xorl	$1, %eax
	testb	%al, %al
	je	L54
	movl	-12(%rbp), %eax
	jmp	L55
L54:
	movl	-16(%rbp), %eax
L55:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
test_not_islessgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm2, -12(%rbp)
	vmovss	%xmm3, -16(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jne	L63
	movl	-12(%rbp), %eax
	jmp	L60
L63:
	movl	-16(%rbp), %eax
L60:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
one_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	vmovss	LC0(%rip), %xmm3
	vmovss	LC1(%rip), %xmm2
	vmovd	%ecx, %xmm1
	vmovd	%edx, %xmm0
	call %rax
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	%xmm4, %xmm0
	setnp	%dl
	movl	$0, %ecx
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	%xmm5, %xmm0
	movl	%ecx, %eax
	cmove	%edx, %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	L65
	call	abort
L65:
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	vmovss	LC2(%rip), %xmm3
	vmovss	LC3(%rip), %xmm2
	vmovd	%ecx, %xmm1
	vmovd	%edx, %xmm0
	call %rax
	vucomiss	LC2(%rip), %xmm0
	setnp	%al
	movl	$0, %edx
	vucomiss	LC2(%rip), %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	L64
	call	abort
L64:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$14, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	L68
L71:
	movl	$0, -8(%rbp)
	jmp	L69
L70:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$tests.2342, %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$tests.2342, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movl	data.2330+8(,%rax,4), %ecx
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	$data.2330, %rax
	movl	4(%rax), %r8d
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	$data.2330, %rax
	movl	(%rax), %eax
	movl	%ecx, %edi
	vmovd	%r8d, %xmm1
	vmovd	%eax, %xmm0
	call	one_test
	addl	$1, -8(%rbp)
L69:
	cmpl	$5, -8(%rbp)
	jle	L70
	addl	$1, -12(%rbp)
L68:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L71
	movl	$0, %edi
	call	exit
tests.2342:
	.quad	test_isunordered
	.quad	test_not_isunordered
	.quad	test_isless
	.quad	test_not_isless
	.quad	test_islessequal
	.quad	test_not_islessequal
	.quad	test_isgreater
	.quad	test_not_isgreater
	.quad	test_isgreaterequal
	.quad	test_not_isgreaterequal
	.quad	test_islessgreater
	.quad	test_not_islessgreater
data.2330:
	.long	2143289344
	.long	2143289344
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2143289344
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2143289344
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1065353216
	.long	1073741824
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1073741824
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	2139095040
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1065353216
	.long	2139095040
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	2139095040
	.long	2139095040
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	4286578688
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	4286578688
	.long	1065353216
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	4286578688
	.long	4286578688
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	2139095040
	.long	4286578688
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	4286578688
	.long	2139095040
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
LC0:
	.long	1073741824
LC1:
	.long	1065353216
LC2:
	.long	1082130432
LC3:
	.long	1077936128
