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
	.comm	foo_arg,4,4
	.comm	bar_arg,4,4
	.comm	x,8,8
	.comm	d,8,8
	.comm	gap,24,16
	.comm	pap,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jne	L15
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L12
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L13
L12:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L13:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	jmp	L16
L15:
	call	abort
L16:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16390, -4(%rbp)
	jne	L18
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jae	L19
	movq	gap+16(%rip), %rdx
	movl	gap+4(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap+4(%rip), %edx
	addl	$16, %edx
	movl	%edx, gap+4(%rip)
	jmp	L20
L19:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L20:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L21
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jne	L21
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L22
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L23
L22:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L23:
	movq	(%rax), %rax
	cmpq	$129, %rax
	je	L24
L21:
	call	abort
L18:
	cmpl	$16392, -4(%rbp)
	jne	L24
	movq	pap(%rip), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jae	L25
	movq	16(%rax), %rcx
	movl	(%rax), %edx
	movl	%edx, %edx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	L26
L25:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L26:
	movq	(%rdx), %rax
	cmpq	$14, %rax
	jne	L27
	movq	pap(%rip), %rax
	movq	8(%rax), %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	leaq	16(%rdx), %rcx
	movq	%rcx, 8(%rax)
	fldt	(%rdx)
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	jp	L30
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L27
	movq	pap(%rip), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jae	L28
	movq	16(%rax), %rcx
	movl	(%rax), %edx
	movl	%edx, %edx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	L29
L28:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L29:
	movl	(%rdx), %eax
	cmpl	$17, %eax
	je	L24
	jmp	L27
L30:
	fstp	%st(0)
L27:
	call	abort
L24:
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	leave
	ret
f0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L32
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L32:
	movl	%edi, -180(%rbp)
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L34
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L34:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leave
	ret
f2:
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
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L37
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L38
L37:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L38:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
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
	movq	%rax, d(%rip)
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L44
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L44:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
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
	vmovq	%rax, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movq	%rax, x(%rip)
	leaq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L48
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L48:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, gap(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
	movq	16(%rax), %rax
	movq	%rax, gap+16(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L50
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L50:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L51
	movl	-200(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -200(%rbp)
	jmp	L52
L51:
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
L52:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L53
	movl	-200(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -200(%rbp)
	jmp	L54
L53:
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
L54:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L55
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L56
L55:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L56:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L58
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L58:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L60
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L60:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L61
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L62
L61:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L62:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	movl	$0, %eax
	call	f0
	movl	$2, %edi
	movl	$0, %eax
	call	f1
	movabsq	$4629418941960159232, %rax
	movq	%rax, d(%rip)
	movl	$28, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f2
	movl	bar_arg(%rip), %eax
	cmpl	$28, %eax
	jne	L64
	movq	x(%rip), %rax
	cmpq	$28, %rax
	je	L65
L64:
	call	abort
L65:
	movabsq	$4638813169307877376, %rax
	vmovq	%rax, %xmm0
	movl	$4, %edi
	movl	$1, %eax
	call	f3
	movq	d(%rip), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC4(%rip), %xmm1
	jp	L77
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	je	L78
L77:
	call	abort
L78:
	movabsq	$4625196817309499392, %rax
	movl	$128, %esi
	vmovq	%rax, %xmm0
	movl	$5, %edi
	movl	$1, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$16, %rax
	jne	L68
	movl	foo_arg(%rip), %eax
	cmpl	$128, %eax
	je	L69
L68:
	call	abort
L69:
	movabsq	$4625478292286210048, %rax
	movl	$129, %esi
	vmovq	%rax, %xmm0
	movl	$16390, %edi
	movl	$1, %eax
	call	f5
	movl	bar_arg(%rip), %eax
	cmpl	$16390, %eax
	je	L70
	call	abort
L70:
	movq	$-31, %rcx
	movl	$14, %edx
	movl	$12, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	f6
	movl	bar_arg(%rip), %eax
	cmpl	$-31, %eax
	je	L71
	call	abort
L71:
	movabsq	$4628011567076605952, %rcx
	movabsq	$-9007199254740992000, %rax
	movl	$16390, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$17, %edx
	movl	$14, %esi
	movl	$16392, %edi
	movl	$1, %eax
	call	f7
	addq	$16, %rsp
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	je	L72
	call	abort
L72:
	movabsq	$4628293042053316608, %rcx
	movabsq	$-9007199254740992000, %rax
	movl	$16390, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$17, %edx
	movl	$14, %esi
	movl	$16392, %edi
	movl	$1, %eax
	call	f8
	addq	$16, %rsp
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	jne	L73
	movq	d(%rip), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC7(%rip), %xmm3
	jp	L73
	vmovq	%rax, %xmm4
	vucomisd	LC7(%rip), %xmm4
	je	L79
L73:
	call	abort
L79:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
	.long	1076953088
LC1:
	.long	0
	.long	2197815296
	.long	16390
	.long	0
LC4:
	.long	0
	.long	1080057856
LC7:
	.long	0
	.long	1077608448
