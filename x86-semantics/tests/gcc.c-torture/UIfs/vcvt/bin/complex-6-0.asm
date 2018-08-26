	.file	"complex-6.c"
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
	jmp	.L15
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
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
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
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
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
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
	jle	.L35
	cmpl	$122, -4(%rbp)
	jg	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	cmpl	$64, -4(%rbp)
	jle	.L37
	cmpl	$90, -4(%rbp)
	jg	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	cmpl	$47, -4(%rbp)
	jle	.L38
	cmpl	$57, -4(%rbp)
	jg	.L38
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	$0, %eax
.L36:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.comm	err,4,4
	.globl	ctest_float
	.type	ctest_float, @function
ctest_float:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	vmovss	-40(%rbp), %xmm1
	vmovss	-36(%rbp), %xmm0
	vmovss	%xmm1, -48(%rbp)
	vmovss	%xmm0, -44(%rbp)
	vmovss	-48(%rbp), %xmm0
	vmovss	%xmm0, -20(%rbp)
	vmovss	-44(%rbp), %xmm0
	vmovss	%xmm0, -16(%rbp)
	vmovss	-16(%rbp), %xmm1
	vmovss	.LC0(%rip), %xmm0
	vxorps	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -12(%rbp)
	vmovss	-12(%rbp), %xmm0
	vmovss	-20(%rbp), %xmm1
	vmovss	%xmm1, -8(%rbp)
	vmovss	%xmm0, -4(%rbp)
	vmovss	-20(%rbp), %xmm1
	vmovss	-12(%rbp), %xmm0
	vmovss	%xmm1, -56(%rbp)
	vmovss	%xmm0, -52(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	ctest_float, .-ctest_float
	.globl	test_float
	.type	test_float, @function
test_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovss	.LC1(%rip), %xmm0
	vmovss	%xmm0, -16(%rbp)
	vmovss	.LC2(%rip), %xmm0
	vmovss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	call	ctest_float
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	vmovss	-8(%rbp), %xmm0
	vmovss	%xmm0, -24(%rbp)
	vmovss	-4(%rbp), %xmm0
	vmovss	%xmm0, -20(%rbp)
	vmovss	-24(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovss	-20(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	setp	%al
	movl	$1, %edx
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	cmove	%eax, %edx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %ecx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L43
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L43:
	nop
	leave
	ret
	.size	test_float, .-test_float
	.globl	ctest_double
	.type	ctest_double, @function
ctest_double:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	vmovsd	%xmm1, -64(%rbp)
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	-64(%rbp), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-56(%rbp), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	-32(%rbp), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vxorpd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vmovsd	-40(%rbp), %xmm1
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-40(%rbp), %xmm1
	vmovsd	-24(%rbp), %xmm0
	vmovq	%xmm1, %rax
	vmovq	%xmm0, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	ctest_double, .-ctest_double
	.globl	test_double
	.type	test_double, @function
test_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	vmovsd	.LC3(%rip), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	.LC6(%rip), %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	vmovsd	-24(%rbp), %xmm1
	vmovq	%rax, %xmm0
	call	ctest_double
	vmovq	%xmm0, %rax
	vmovapd	%xmm1, %xmm0
	movq	%rax, -16(%rbp)
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	.LC3(%rip), %xmm0
	vucomisd	-48(%rbp), %xmm0
	setp	%al
	movl	$1, %edx
	vmovsd	.LC3(%rip), %xmm0
	vucomisd	-48(%rbp), %xmm0
	cmove	%eax, %edx
	vmovsd	.LC4(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vmovsd	.LC4(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L48
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L48:
	nop
	leave
	ret
	.size	test_double, .-test_double
	.globl	ctest_long_double
	.type	ctest_long_double, @function
ctest_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	vmovsd	%xmm1, -64(%rbp)
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	-64(%rbp), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-56(%rbp), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	-32(%rbp), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vxorpd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vmovsd	-40(%rbp), %xmm1
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-40(%rbp), %xmm1
	vmovsd	-24(%rbp), %xmm0
	vmovq	%xmm1, %rax
	vmovq	%xmm0, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	ctest_long_double, .-ctest_long_double
	.globl	test_long_double
	.type	test_long_double, @function
test_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	vmovsd	.LC3(%rip), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	.LC6(%rip), %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	vmovsd	-24(%rbp), %xmm1
	vmovq	%rax, %xmm0
	call	ctest_long_double
	vmovq	%xmm0, %rax
	vmovapd	%xmm1, %xmm0
	movq	%rax, -16(%rbp)
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	.LC3(%rip), %xmm0
	vucomisd	-48(%rbp), %xmm0
	setp	%al
	movl	$1, %edx
	vmovsd	.LC3(%rip), %xmm0
	vucomisd	-48(%rbp), %xmm0
	cmove	%eax, %edx
	vmovsd	.LC4(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vmovsd	.LC4(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L53
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L53:
	nop
	leave
	ret
	.size	test_long_double, .-test_long_double
	.globl	ctest_int
	.type	ctest_int, @function
ctest_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	negl	%eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edx
	movq	%rax, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movl	%esi, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	popq	%rbp
	ret
	.size	ctest_int, .-ctest_int
	.globl	test_int
	.type	test_int, @function
test_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	movabsq	$-4294967296, %rax
	andq	%rdi, %rax
	orq	%rcx, %rax
	movq	%rax, %rdi
	movl	%edx, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movl	%edi, %eax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	ctest_int
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	movl	-20(%rbp), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	setp	%al
	movl	$1, %edx
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	cmove	%eax, %edx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %ecx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L58
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L58:
	nop
	leave
	ret
	.size	test_int, .-test_int
	.globl	ctest_long_int
	.type	ctest_long_int, @function
ctest_long_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
	.size	ctest_long_int, .-ctest_long_int
	.globl	test_long_int
	.type	test_long_int, @function
test_long_int:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$1, -40(%rbp)
	movq	$2, -32(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ctest_long_int
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, -24(%rbp)
	movq	%rbx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movq	-48(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	setp	%al
	movl	$1, %edx
	vmovsd	.LC3(%rip), %xmm2
	vucomisd	%xmm2, %xmm1
	cmove	%eax, %edx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %ecx
	vmovsd	.LC4(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L63
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L63:
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	test_long_int, .-test_long_int
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, err(%rip)
	call	test_float
	call	test_double
	call	test_long_double
	call	test_int
	call	test_long_int
	movl	err(%rip), %eax
	testl	%eax, %eax
	je	.L65
	call	abort
.L65:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	-1073741824
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
