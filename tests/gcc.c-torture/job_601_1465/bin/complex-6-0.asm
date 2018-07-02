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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
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
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
	.comm	err,4,4
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
	movl	%eax, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	vmovss	LC0(%rip), %xmm0
	xorl	$-2147483648, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, -56(%rbp)
	movl	%eax, -52(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
LC5:
	.string	"test_float failed"
test_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	LC1(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	LC2(%rip), %eax
	movl	%eax, -4(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	ctest_float
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	vmovd	%eax, %xmm2
	vcvtss2sd	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, %rdx
	movl	%ecx, %eax
	vmovd	%eax, %xmm4
	vcvtss2sd	%xmm4, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm5
	vmovq	%rcx, %xmm6
	vucomisd	%xmm6, %xmm5
	setp	%dil
	movl	$1, %esi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm7
	vmovq	%rcx, %xmm1
	vucomisd	%xmm1, %xmm7
	cmove	%edi, %esi
	movl	%esi, %ecx
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm3
	vucomisd	LC4(%rip), %xmm3
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L41
	movl	$LC5, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
L41:
	leave
	ret
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
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovsd	LC6(%rip), %xmm0
	btcq	$63, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
LC8:
	.string	"test_double failed"
test_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movabsq	$4607182418800017408, %rax
	movq	%rax, -16(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	ctest_double
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm2
	vucomisd	-40(%rbp), %xmm2
	setp	%cl
	movl	$1, %edx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm3
	vucomisd	-40(%rbp), %xmm3
	cmovne	%edx, %ecx
	movq	-48(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC4(%rip), %xmm4
	setp	%sil
	movl	$1, %edx
	movq	-48(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC4(%rip), %xmm5
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L45
	movl	$LC8, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
L45:
	leave
	ret
ctest_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	fldt	-80(%rbp)
	fchs
	fstpt	-96(%rbp)
	movq	-96(%rbp), %rax
	movl	-88(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %ebx
	movq	%rcx, -48(%rbp)
	movl	%ebx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %ebx
	movq	-96(%rbp), %rax
	movl	-88(%rbp), %edx
	movq	%rcx, -112(%rbp)
	movl	%ebx, -104(%rbp)
	fldt	-112(%rbp)
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	flds	LC9(%rip)
	flds	LC9(%rip)
	fstp	%st(0)
	fstp	%st(0)
	fxch	%st(1)
	popq	%rbx
	popq	%rbp
	ret
LC13:
	.string	"test_long_double failed"
test_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	$-128, %rsp
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movabsq	$-9223372036854775808, %rax
	movl	$16384, %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	ctest_long_double
	addq	$32, %rsp
	fstpt	-128(%rbp)
	fstpt	-112(%rbp)
	fldt	-128(%rbp)
	fstpt	-64(%rbp)
	fldt	-112(%rbp)
	fstpt	-48(%rbp)
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-80(%rbp)
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	setp	%dl
	fldt	-80(%rbp)
	movl	$1, %eax
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovne	%eax, %edx
	fldt	-96(%rbp)
	fldt	LC12(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	setp	%cl
	fldt	-96(%rbp)
	movl	$1, %eax
	fldt	LC12(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	L49
	movl	$LC13, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
L49:
	leave
	ret
ctest_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	negl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
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
LC14:
	.string	"test_int failed"
test_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$1, -8(%rbp)
	movl	$2, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %edx
	movabsq	$-4294967296, %rcx
	andq	%rdi, %rcx
	orq	%rcx, %rdx
	movq	%rdx, %rdi
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movl	%edi, %eax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	ctest_int
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	movl	%ecx, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm2
	vmovq	%rcx, %xmm3
	vucomisd	%xmm3, %xmm2
	setp	%dil
	movl	$1, %esi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm4
	vmovq	%rcx, %xmm5
	vucomisd	%xmm5, %xmm4
	cmove	%edi, %esi
	movl	%esi, %ecx
	vmovq	%rax, %xmm6
	vucomisd	LC4(%rip), %xmm6
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm7
	vucomisd	LC4(%rip), %xmm7
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L53
	movl	$LC14, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
L53:
	leave
	ret
ctest_long_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
LC15:
	.string	"test_long_int failed"
test_long_int:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$1, -32(%rbp)
	movq	$2, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	ctest_long_int
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	movq	%rcx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm2
	vmovq	%rcx, %xmm3
	vucomisd	%xmm3, %xmm2
	setp	%dil
	movl	$1, %esi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm4
	vmovq	%rcx, %xmm5
	vucomisd	%xmm5, %xmm4
	cmove	%edi, %esi
	movl	%esi, %ecx
	vmovq	%rax, %xmm6
	vucomisd	LC4(%rip), %xmm6
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm7
	vucomisd	LC4(%rip), %xmm7
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L57
	movl	$LC15, %edi
	call	puts
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
L57:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
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
	je	L60
	call	abort
L60:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
LC1:
	.long	1065353216
LC2:
	.long	1073741824
LC4:
	.long	0
	.long	-1073741824
LC6:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
LC9:
	.long	2143289344
LC12:
	.long	0
	.long	2147483648
	.long	49152
	.long	0
