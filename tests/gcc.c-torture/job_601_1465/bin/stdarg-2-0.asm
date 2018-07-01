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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	je	L11
	cmpl	$11, %eax
	je	L12
	cmpl	$5, %eax
	jne	L27
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L14
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
	jmp	L15
L14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L15:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L16
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L17
L16:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L17:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vcvttsd2si	%xmm3, %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L18
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
	jmp	L19
L18:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L19:
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	foo_arg(%rip), %eax
	addl	%edx, %eax
	movl	%eax, foo_arg(%rip)
	jmp	L9
L11:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L21
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
	jmp	L22
L21:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L22:
	movq	(%rax), %rax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L23
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L24
L23:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L24:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vcvttsd2si	%xmm6, %eax
	movl	%eax, foo_arg(%rip)
	jmp	L9
L12:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L25
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
	jmp	L26
L25:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L26:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	fldt	(%rax)
	movl	foo_arg(%rip), %eax
	movl	%eax, -20(%rbp)
	fildl	-20(%rbp)
	faddp	%st, %st(1)
	fisttpl	-8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, foo_arg(%rip)
	jmp	L9
L27:
	call	abort
L9:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16386, -4(%rbp)
	jne	L29
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L30
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L31
L30:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L31:
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	L32
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jae	L33
	movq	gap+16(%rip), %rdx
	movl	gap+4(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap+4(%rip), %edx
	addl	$16, %edx
	movl	%edx, gap+4(%rip)
	jmp	L34
L33:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L34:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC1(%rip), %xmm0
	jp	L32
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	je	L29
L32:
	call	abort
L29:
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L37
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L37:
	movl	%edi, -180(%rbp)
	movl	$8, gap(%rip)
	movl	$48, gap+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, gap+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, gap+16(%rip)
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L38
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L39
L38:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L39:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L41
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L41:
	movl	%edi, -180(%rbp)
	movl	$8, gap(%rip)
	movl	$48, gap+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, gap+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, gap+16(%rip)
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$312, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L43
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L43:
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-320(%rbp), %eax
	cmpl	$48, %eax
	jae	L44
	movq	-304(%rbp), %rdx
	movl	-320(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-320(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -320(%rbp)
	jmp	L45
L44:
	movq	-312(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -312(%rbp)
L45:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L47
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L47:
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-420(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L49
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L49:
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-416(%rbp), %rax
	leaq	96(%rax), %rdx
	movl	-420(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L51
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L51:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-248(%rbp), %eax
	cmpl	$48, %eax
	jae	L52
	movq	-232(%rbp), %rdx
	movl	-248(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-248(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -248(%rbp)
	jmp	L53
L52:
	movq	-240(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -240(%rbp)
L53:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L55
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L55:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L57
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L57:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-260(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L59
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L59:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L60
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L61
L60:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L61:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L63
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L63:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L65
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L65:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-256(%rbp), %rax
	leaq	56(%rax), %rdx
	movl	-260(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$79, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f1
	movq	x(%rip), %rax
	cmpq	$79, %rax
	je	L67
	call	abort
L67:
	movabsq	$-4599301119452119040, %rax
	vmovq	%rax, %xmm0
	movl	$13, %esi
	movl	$16386, %edi
	movl	$1, %eax
	call	f2
	movl	bar_arg(%rip), %eax
	cmpl	$16386, %eax
	je	L68
	call	abort
L68:
	movl	$2031, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f3
	movq	x(%rip), %rax
	cmpq	$2031, %rax
	je	L69
	call	abort
L69:
	movl	$18, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	f4
	movl	bar_arg(%rip), %eax
	cmpl	$4, %eax
	je	L70
	call	abort
L70:
	movabsq	$4626041242239631360, %rax
	movl	$18, %edx
	vmovq	%rax, %xmm0
	movl	$1, %esi
	movl	$5, %edi
	movl	$1, %eax
	call	f5
	movl	foo_arg(%rip), %eax
	cmpl	$38, %eax
	je	L71
	call	abort
L71:
	movl	$18, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	f6
	movq	x(%rip), %rax
	cmpq	$18, %rax
	je	L72
	call	abort
L72:
	movl	$7, %edi
	movl	$0, %eax
	call	f7
	movl	bar_arg(%rip), %eax
	cmpl	$7, %eax
	je	L73
	call	abort
L73:
	movabsq	$4623507967449235456, %rax
	vmovq	%rax, %xmm0
	movl	$2031, %esi
	movl	$8, %edi
	movl	$1, %eax
	call	f8
	movl	foo_arg(%rip), %eax
	cmpl	$2044, %eax
	je	L74
	call	abort
L74:
	movl	$180, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	f10
	movq	x(%rip), %rax
	cmpq	$180, %rax
	je	L75
	call	abort
L75:
	movl	$10, %edi
	movl	$0, %eax
	call	f11
	movl	bar_arg(%rip), %eax
	cmpl	$10, %eax
	je	L76
	call	abort
L76:
	movabsq	$-4611686018427387904, %rax
	movl	$16386, %edx
	pushq	%rdx
	pushq	%rax
	movl	$2030, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	f12
	addq	$16, %rsp
	movl	foo_arg(%rip), %eax
	cmpl	$2042, %eax
	je	L77
	call	abort
L77:
	movl	$0, %eax
	leave
	ret
LC1:
	.long	0
	.long	-1070858240
