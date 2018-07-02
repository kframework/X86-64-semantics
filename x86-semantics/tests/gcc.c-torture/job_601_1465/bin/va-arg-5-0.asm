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
	je	L40
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L40:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L41
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L42
L41:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L42:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L57
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L61
L57:
	call	abort
L61:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L45
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L46
L45:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L46:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	jp	L58
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L62
L58:
	call	abort
L62:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L49
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L50
L49:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L50:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC2(%rip), %xmm4
	jp	L59
	vmovq	%rax, %xmm5
	vucomisd	LC2(%rip), %xmm5
	je	L63
L59:
	call	abort
L63:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L53
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L54
L53:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L54:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC3(%rip), %xmm6
	jp	L60
	vmovq	%rax, %xmm7
	vucomisd	LC3(%rip), %xmm7
	je	L64
L60:
	call	abort
L64:
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
	je	L66
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L66:
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
	jp	L83
	fldt	LC4(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L79
	jmp	L75
L83:
	fstp	%st(0)
L75:
	call	abort
L79:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	jp	L84
	fldt	LC5(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L80
	jmp	L76
L84:
	fstp	%st(0)
L76:
	call	abort
L80:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	jp	L85
	fldt	LC6(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L81
	jmp	L77
L85:
	fstp	%st(0)
L77:
	call	abort
L81:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L86
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L82
	jmp	L78
L86:
	fstp	%st(0)
L78:
	call	abort
L82:
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
