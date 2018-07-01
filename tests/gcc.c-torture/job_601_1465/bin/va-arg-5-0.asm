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
va_double:
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
	movl	%edi, -212(%rbp)
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
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L27
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L31
L27:
	call	abort
L31:
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
	jp	L28
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L32
L28:
	call	abort
L32:
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
	vmovq	%rax, %xmm4
	vucomisd	LC2(%rip), %xmm4
	jp	L29
	vmovq	%rax, %xmm5
	vucomisd	LC2(%rip), %xmm5
	je	L33
L29:
	call	abort
L33:
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
	vmovq	%rax, %xmm6
	vucomisd	LC3(%rip), %xmm6
	jp	L30
	vmovq	%rax, %xmm7
	vucomisd	LC3(%rip), %xmm7
	je	L34
L30:
	call	abort
L34:
	leave
	ret
va_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L36
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L36:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	jp	L53
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L49
	jmp	L45
L53:
	fstp	%st(0)
L45:
	call	abort
L49:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	jp	L54
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L50
	jmp	L46
L54:
	fstp	%st(0)
L46:
	call	abort
L50:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	jp	L55
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L51
	jmp	L47
L55:
	fstp	%st(0)
L47:
	call	abort
L51:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L56
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L52
	jmp	L48
L56:
	fstp	%st(0)
L48:
	call	abort
L52:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4612018121970389534, %rsi
	movabsq	$4612217596080624972, %rcx
	movabsq	$4613303418679563607, %rdx
	movabsq	$4614256655080292474, %rax
	vmovq	%rsi, %xmm3
	vmovq	%rcx, %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$4, %edi
	movl	$4, %eax
	call	va_double
	movabsq	$-8543223980787438301, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movabsq	$-8134701003025261043, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movabsq	$-5910936320398935898, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movabsq	$-3958708171706217196, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	movl	$4, %edi
	movl	$0, %eax
	call	va_long_double
	addq	$64, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	4236968058
	.long	1074340346
LC1:
	.long	1467848023
	.long	1074118404
LC2:
	.long	2435913036
	.long	1073865591
LC3:
	.long	3786773022
	.long	1073819147
LC4:
	.long	1476644116
	.long	3373258724
	.long	16384
	.long	0
LC5:
	.long	3970611366
	.long	2918720187
	.long	16384
	.long	0
LC6:
	.long	2292866573
	.long	2400959625
	.long	16384
	.long	0
LC7:
	.long	2895179043
	.long	2305842957
	.long	16384
	.long	0
