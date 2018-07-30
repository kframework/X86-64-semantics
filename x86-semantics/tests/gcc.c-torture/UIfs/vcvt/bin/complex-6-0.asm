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
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, -48(%rbp)
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	vmovss	.LC0(%rip), %xmm0
	xorl	$-2147483648, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, -56(%rbp)
	movl	%eax, -52(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	ctest_float, .-ctest_float
	.section	.rodata
.LC5:
	.string	"test_float failed"
	.text
	.globl	test_float
	.type	test_float, @function
test_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	.LC1(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	.LC2(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	call	ctest_float
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vmovd	%edx, %xmm0
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovq	%xmm1, %rdx
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm3
	vmovq	%rcx, %xmm4
	vucomisd	%xmm4, %xmm3
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm5
	vmovq	%rcx, %xmm6
	vucomisd	%xmm6, %xmm5
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm7
	vucomisd	.LC4(%rip), %xmm7
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm1
	vucomisd	.LC4(%rip), %xmm1
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L41
	movl	$.LC5, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L41:
	leave
	ret
	.size	test_float, .-test_float
	.globl	ctest_double
	.type	ctest_double, @function
ctest_double:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovsd	.LC6(%rip), %xmm0
	btcq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	ctest_double, .-ctest_double
	.section	.rodata
.LC8:
	.string	"test_double failed"
	.text
	.globl	test_double
	.type	test_double, @function
test_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movabsq	$4607182418800017408, %rax
	movq	%rax, -32(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	ctest_double
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm2
	vucomisd	-48(%rbp), %xmm2
	setp	%dl
	movl	$1, %ecx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm3
	vucomisd	-48(%rbp), %xmm3
	cmovne	%ecx, %edx
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC4(%rip), %xmm4
	setp	%cl
	movl	$1, %esi
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	.LC4(%rip), %xmm5
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L45
	movl	$.LC8, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L45:
	leave
	ret
	.size	test_double, .-test_double
	.globl	ctest_long_double
	.type	ctest_long_double, @function
ctest_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovsd	.LC6(%rip), %xmm0
	btcq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	ctest_long_double, .-ctest_long_double
	.section	.rodata
.LC9:
	.string	"test_long_double failed"
	.text
	.globl	test_long_double
	.type	test_long_double, @function
test_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movabsq	$4607182418800017408, %rax
	movq	%rax, -32(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	ctest_long_double
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm2
	vucomisd	-48(%rbp), %xmm2
	setp	%dl
	movl	$1, %ecx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm3
	vucomisd	-48(%rbp), %xmm3
	cmovne	%ecx, %edx
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC4(%rip), %xmm4
	setp	%cl
	movl	$1, %esi
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	.LC4(%rip), %xmm5
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L49
	movl	$.LC9, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L49:
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
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %ecx
	movq	%rax, %rsi
	movabsq	$-4294967296, %rax
	andq	%rsi, %rax
	orq	%rcx, %rax
	movl	%edx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	popq	%rbp
	ret
	.size	ctest_int, .-ctest_int
	.section	.rodata
.LC10:
	.string	"test_int failed"
	.text
	.globl	test_int
	.type	test_int, @function
test_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdi, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %rdi
	movl	%eax, %eax
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
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm2
	vmovq	%rcx, %xmm3
	vucomisd	%xmm3, %xmm2
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm4
	vmovq	%rcx, %xmm5
	vucomisd	%xmm5, %xmm4
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm6
	vucomisd	.LC4(%rip), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	.LC4(%rip), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L53
	movl	$.LC10, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L53:
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
	.section	.rodata
.LC11:
	.string	"test_long_int failed"
	.text
	.globl	test_long_int
	.type	test_long_int, @function
test_long_int:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$1, -48(%rbp)
	movq	$2, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ctest_long_int
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm2
	vmovq	%rcx, %xmm3
	vucomisd	%xmm3, %xmm2
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm4
	vmovq	%rcx, %xmm5
	vucomisd	%xmm5, %xmm4
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm6
	vucomisd	.LC4(%rip), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	.LC4(%rip), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L57
	movl	$.LC11, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
.L57:
	addq	$56, %rsp
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
	je	.L60
	call	abort
.L60:
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
.LC4:
	.long	0
	.long	-1073741824
	.align 16
.LC6:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
