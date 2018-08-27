	.file	"fp-cmp-8l.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L15
.L17:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L17
.L16:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.size	strcmp, .-strcmp
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L22
.L21:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L20:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
.L22:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L27:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L28
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L31:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L32
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L40
	cmpl	$122, -4(%rbp)
	jg	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	cmpl	$64, -4(%rbp)
	jle	.L42
	cmpl	$90, -4(%rbp)
	jg	.L42
	movl	$1, %eax
	jmp	.L41
.L42:
	cmpl	$47, -4(%rbp)
	jle	.L43
	cmpl	$57, -4(%rbp)
	jg	.L43
	movl	$1, %eax
	jmp	.L41
.L43:
	movl	$0, %eax
.L41:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.type	test_isunordered, @function
test_isunordered:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	jnp	.L45
	vmovsd	-24(%rbp), %xmm0
	jmp	.L47
.L45:
	vmovsd	-32(%rbp), %xmm0
.L47:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_isunordered, .-test_isunordered
	.type	test_not_isunordered, @function
test_not_isunordered:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	jp	.L49
	vmovsd	-24(%rbp), %xmm0
	jmp	.L51
.L49:
	vmovsd	-32(%rbp), %xmm0
.L51:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_isunordered, .-test_not_isunordered
	.type	test_isless, @function
test_isless:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vucomisd	-8(%rbp), %xmm0
	setbe	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L53
	vmovsd	-24(%rbp), %xmm0
	jmp	.L55
.L53:
	vmovsd	-32(%rbp), %xmm0
.L55:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_isless, .-test_isless
	.type	test_not_isless, @function
test_not_isless:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vucomisd	-8(%rbp), %xmm0
	ja	.L62
	vmovsd	-24(%rbp), %xmm0
	jmp	.L60
.L62:
	vmovsd	-32(%rbp), %xmm0
.L60:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_isless, .-test_not_isless
	.type	test_islessequal, @function
test_islessequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vucomisd	-8(%rbp), %xmm0
	setb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L64
	vmovsd	-24(%rbp), %xmm0
	jmp	.L66
.L64:
	vmovsd	-32(%rbp), %xmm0
.L66:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_islessequal, .-test_islessequal
	.type	test_not_islessequal, @function
test_not_islessequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vucomisd	-8(%rbp), %xmm0
	jnb	.L73
	vmovsd	-24(%rbp), %xmm0
	jmp	.L71
.L73:
	vmovsd	-32(%rbp), %xmm0
.L71:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_islessequal, .-test_not_islessequal
	.type	test_isgreater, @function
test_isgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	setbe	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L75
	vmovsd	-24(%rbp), %xmm0
	jmp	.L77
.L75:
	vmovsd	-32(%rbp), %xmm0
.L77:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_isgreater, .-test_isgreater
	.type	test_not_isgreater, @function
test_not_isgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	ja	.L84
	vmovsd	-24(%rbp), %xmm0
	jmp	.L82
.L84:
	vmovsd	-32(%rbp), %xmm0
.L82:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_isgreater, .-test_not_isgreater
	.type	test_isgreaterequal, @function
test_isgreaterequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	setb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L86
	vmovsd	-24(%rbp), %xmm0
	jmp	.L88
.L86:
	vmovsd	-32(%rbp), %xmm0
.L88:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_isgreaterequal, .-test_isgreaterequal
	.type	test_not_isgreaterequal, @function
test_not_isgreaterequal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	jnb	.L95
	vmovsd	-24(%rbp), %xmm0
	jmp	.L93
.L95:
	vmovsd	-32(%rbp), %xmm0
.L93:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_isgreaterequal, .-test_not_isgreaterequal
	.type	test_islessgreater, @function
test_islessgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	sete	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L97
	vmovsd	-24(%rbp), %xmm0
	jmp	.L99
.L97:
	vmovsd	-32(%rbp), %xmm0
.L99:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_islessgreater, .-test_islessgreater
	.type	test_not_islessgreater, @function
test_not_islessgreater:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	%xmm3, -32(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vucomisd	-16(%rbp), %xmm0
	jne	.L106
	vmovsd	-24(%rbp), %xmm0
	jmp	.L104
.L106:
	vmovsd	-32(%rbp), %xmm0
.L104:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	test_not_islessgreater, .-test_not_islessgreater
	.type	one_test, @function
one_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	vmovsd	.LC0(%rip), %xmm2
	vmovsd	.LC1(%rip), %xmm1
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	vmovapd	%xmm2, %xmm3
	vmovapd	%xmm1, %xmm2
	vmovapd	%xmm0, %xmm1
	vmovq	%rdx, %xmm0
	call	*%rax
	vmovq	%xmm0, %rax
	vmovsd	.LC1(%rip), %xmm0
	vmovq	%rax, %xmm4
	vucomisd	%xmm0, %xmm4
	setnp	%dl
	movl	$0, %ecx
	vmovsd	.LC1(%rip), %xmm0
	vmovq	%rax, %xmm5
	vucomisd	%xmm0, %xmm5
	movl	%ecx, %eax
	cmove	%edx, %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	je	.L108
	call	abort
.L108:
	vmovsd	.LC2(%rip), %xmm2
	vmovsd	.LC3(%rip), %xmm1
	vmovsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	vmovapd	%xmm2, %xmm3
	vmovapd	%xmm1, %xmm2
	vmovapd	%xmm0, %xmm1
	vmovq	%rdx, %xmm0
	call	*%rax
	vmovq	%xmm0, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovq	%rax, %xmm6
	vucomisd	%xmm0, %xmm6
	setnp	%dl
	movl	$0, %ecx
	vmovsd	.LC2(%rip), %xmm0
	vmovq	%rax, %xmm7
	vucomisd	%xmm0, %xmm7
	movl	%ecx, %eax
	cmove	%edx, %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	je	.L110
	call	abort
.L110:
	nop
	leave
	ret
	.size	one_test, .-one_test
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$14, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L112
.L115:
	movl	$0, -8(%rbp)
	jmp	.L113
.L114:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$tests.2513+8, %rax
	movq	(%rax), %rdi
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$tests.2513, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	data.2501+16(,%rax,4), %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$data.2501+8, %rax
	vmovsd	(%rax), %xmm0
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$data.2501, %rax
	movq	(%rax), %rax
	movq	%rdi, %rdx
	movl	%ecx, %edi
	vmovapd	%xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	one_test
	addl	$1, -8(%rbp)
.L113:
	cmpl	$5, -8(%rbp)
	jle	.L114
	addl	$1, -12(%rbp)
.L112:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L115
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.section	.rodata
	.align 32
	.type	tests.2513, @object
	.size	tests.2513, 96
tests.2513:
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
	.align 32
	.type	data.2501, @object
	.size	data.2501, 560
data.2501:
	.long	0
	.long	2146959360
	.long	0
	.long	2146959360
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2146959360
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2146959360
	.long	0
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
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1073741824
	.long	0
	.long	1072693248
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	2146435072
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1072693248
	.long	0
	.long	2146435072
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2146435072
	.long	0
	.long	2146435072
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1048576
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	-1048576
	.long	0
	.long	1072693248
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	-1048576
	.long	0
	.long	-1048576
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	2146435072
	.long	0
	.long	-1048576
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	-1048576
	.long	0
	.long	2146435072
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1074790400
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
