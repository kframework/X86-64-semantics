Yf:
	.long	1073741824
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	1073741824
	.long	2147483648
	.long	2139095040
Zf:
	.long	1065353216
	.long	3212836864
	.long	3212836864
	.long	2147483648
	.long	2147483648
	.long	0
	.long	4286578688
	.long	2143289344
testf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	Yf(%rip), %eax
	vmovss	LC0(%rip), %xmm0
	vmovss	LC1(%rip), %xmm1
	vmovd	%eax, %xmm2
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -48(%rbp)
	movl	Yf+4(%rip), %eax
	vmovss	LC0(%rip), %xmm0
	vmovss	LC1(%rip), %xmm1
	vmovd	%eax, %xmm3
	vandps	%xmm1, %xmm3, %xmm3
	vorps	%xmm0, %xmm3, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -44(%rbp)
	movl	Yf+8(%rip), %eax
	vmovss	LC0(%rip), %xmm0
	vmovss	LC1(%rip), %xmm1
	vmovd	%eax, %xmm4
	vandps	%xmm1, %xmm4, %xmm4
	vorps	%xmm0, %xmm4, %xmm4
	vmovd	%xmm4, %eax
	movl	%eax, -40(%rbp)
	movl	Yf+12(%rip), %eax
	vmovss	LC1(%rip), %xmm0
	vmovd	%eax, %xmm5
	vandps	%xmm0, %xmm5, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, -36(%rbp)
	movl	Yf+16(%rip), %eax
	vmovss	LC1(%rip), %xmm0
	vmovd	%eax, %xmm6
	vandps	%xmm0, %xmm6, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -32(%rbp)
	movl	Yf+20(%rip), %eax
	vmovss	LC1(%rip), %xmm0
	vmovd	%eax, %xmm7
	vandps	%xmm0, %xmm7, %xmm7
	vmovd	%xmm7, %eax
	movl	%eax, -28(%rbp)
	movl	Yf+24(%rip), %eax
	vmovss	LC2(%rip), %xmm0
	vmovss	LC1(%rip), %xmm1
	vmovd	%eax, %xmm2
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -24(%rbp)
	movl	Yf+28(%rip), %eax
	vmovss	LC3(%rip), %xmm0
	vmovss	LC1(%rip), %xmm1
	vmovd	%eax, %xmm3
	vandps	%xmm1, %xmm3, %xmm3
	vorps	%xmm0, %xmm3, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -52(%rbp)
	jmp	L2
L4:
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	Zf(%rax), %rcx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L3
	call	abort
L3:
	addl	$1, -52(%rbp)
L2:
	cmpl	$7, -52(%rbp)
	jle	L4
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L5
	call	__stack_chk_fail
L5:
	leave
	ret
Y:
	.long	0
	.long	1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	1073741824
	.long	0
	.long	-2147483648
	.long	0
	.long	2146435072
Z:
	.long	0
	.long	1072693248
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-1048576
	.long	0
	.long	2146959360
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	Y(%rip), %rax
	vmovsd	LC4(%rip), %xmm0
	vmovsd	LC5(%rip), %xmm1
	vmovq	%rax, %xmm2
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -80(%rbp)
	movq	Y+8(%rip), %rax
	vmovsd	LC4(%rip), %xmm0
	vmovsd	LC5(%rip), %xmm1
	vmovq	%rax, %xmm3
	vandpd	%xmm1, %xmm3, %xmm3
	vorpd	%xmm0, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -72(%rbp)
	movq	Y+16(%rip), %rax
	vmovsd	LC4(%rip), %xmm0
	vmovsd	LC5(%rip), %xmm1
	vmovq	%rax, %xmm4
	vandpd	%xmm1, %xmm4, %xmm4
	vorpd	%xmm0, %xmm4, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -64(%rbp)
	movq	Y+24(%rip), %rax
	vmovsd	LC5(%rip), %xmm0
	vmovq	%rax, %xmm5
	vandpd	%xmm0, %xmm5, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -56(%rbp)
	movq	Y+32(%rip), %rax
	vmovsd	LC5(%rip), %xmm0
	vmovq	%rax, %xmm6
	vandpd	%xmm0, %xmm6, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -48(%rbp)
	movq	Y+40(%rip), %rax
	vmovsd	LC5(%rip), %xmm0
	vmovq	%rax, %xmm7
	vandpd	%xmm0, %xmm7, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -40(%rbp)
	movq	Y+48(%rip), %rax
	vmovsd	LC6(%rip), %xmm0
	vmovsd	LC5(%rip), %xmm1
	vmovq	%rax, %xmm2
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -32(%rbp)
	movq	Y+56(%rip), %rax
	vmovsd	LC7(%rip), %xmm0
	vmovsd	LC5(%rip), %xmm1
	vmovq	%rax, %xmm3
	vandpd	%xmm1, %xmm3, %xmm3
	vorpd	%xmm0, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -84(%rbp)
	jmp	L7
L9:
	movl	-84(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	Z(%rax), %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L8
	call	abort
L8:
	addl	$1, -84(%rbp)
L7:
	cmpl	$7, -84(%rbp)
	jle	L9
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L10
	call	__stack_chk_fail
L10:
	leave
	ret
Yl:
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.long	0
	.long	2147483648
	.long	49152
	.long	0
	.long	0
	.long	2147483648
	.long	49152
	.long	0
	.long	0
	.long	2147483648
	.long	49152
	.long	0
	.long	0
	.long	2147483648
	.long	49152
	.long	0
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	2147483648
	.long	32767
	.long	0
Zl:
	.long	0
	.long	2147483648
	.long	16383
	.long	0
	.long	0
	.long	2147483648
	.long	49151
	.long	0
	.long	0
	.long	2147483648
	.long	49151
	.long	0
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2147483648
	.long	65535
	.long	0
	.long	0
	.long	3221225472
	.long	32767
	.long	0
testl:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	fldt	Yl(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	testl	%ecx, %ecx
	je	L12
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
L12:
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	fldt	Yl+16(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	testl	%ecx, %ecx
	je	L13
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
L13:
	movq	%rax, -128(%rbp)
	movl	%edx, -120(%rbp)
	fldt	Yl+32(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	testl	%ecx, %ecx
	je	L14
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
L14:
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	Yl+48(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movl	$0, %eax
	movl	$0, %edx
	testl	%ecx, %ecx
	je	L15
	movl	$0, %eax
	movl	$32768, %edx
L15:
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	Yl+64(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movl	$0, %eax
	movl	$0, %edx
	testl	%ecx, %ecx
	je	L16
	movl	$0, %eax
	movl	$32768, %edx
L16:
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	fldt	Yl+80(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movl	$0, %eax
	movl	$0, %edx
	testl	%ecx, %ecx
	je	L17
	movl	$0, %eax
	movl	$32768, %edx
L17:
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	fldt	Yl+96(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movabsq	$-9223372036854775808, %rax
	movl	$32767, %edx
	testl	%ecx, %ecx
	je	L18
	movabsq	$-9223372036854775808, %rax
	movl	$65535, %edx
L18:
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	fldt	Yl+112(%rip)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	movl	%eax, %ecx
	andl	$512, %ecx
	movabsq	$-4611686018427387904, %rax
	movl	$32767, %edx
	testl	%ecx, %ecx
	je	L19
	movabsq	$-4611686018427387904, %rax
	movl	$65535, %edx
L19:
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -148(%rbp)
	jmp	L20
L22:
	movl	-148(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	Zl(%rax), %rcx
	movl	-148(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L21
	call	abort
L21:
	addl	$1, -148(%rbp)
L20:
	cmpl	$7, -148(%rbp)
	jle	L22
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L23
	call	__stack_chk_fail
L23:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	testf
	call	test
	call	testl
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	1065353216
	.long	0
	.long	0
	.long	0
LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
LC2:
	.long	2139095040
	.long	0
	.long	0
	.long	0
LC3:
	.long	2143289344
	.long	0
	.long	0
	.long	0
LC4:
	.long	0
	.long	1072693248
	.long	0
	.long	0
LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
LC6:
	.long	0
	.long	2146435072
	.long	0
	.long	0
LC7:
	.long	0
	.long	2146959360
	.long	0
	.long	0
