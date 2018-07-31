	.file	"stdarg-2.c"
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
	.comm	foo_arg,4,4
	.comm	bar_arg,4,4
	.comm	x,8,8
	.comm	d,8,8
	.comm	gap,24,16
	.globl	foo
	.type	foo, @function
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	je	.L41
	cmpl	$11, %eax
	je	.L42
	cmpl	$5, %eax
	jne	.L59
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L44
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
	jmp	.L45
.L44:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L45:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jnb	.L46
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
	jmp	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L47:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L48
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
	jmp	.L49
.L48:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L49:
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	foo_arg(%rip), %eax
	addl	%edx, %eax
	movl	%eax, foo_arg(%rip)
	jmp	.L39
.L41:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L51
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
	jmp	.L52
.L51:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L52:
	movq	(%rax), %rax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jnb	.L53
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
	jmp	.L54
.L53:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L54:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, foo_arg(%rip)
	jmp	.L39
.L42:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L55
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
	jmp	.L56
.L55:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L56:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jnb	.L57
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
	jmp	.L58
.L57:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L58:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, foo_arg(%rip)
	jmp	.L39
.L59:
	call	abort
.L39:
	leave
	ret
	.size	foo, .-foo
	.globl	bar
	.type	bar, @function
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16386, -4(%rbp)
	jne	.L61
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jnb	.L62
	movq	gap+16(%rip), %rax
	movl	gap(%rip), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	.L63
.L62:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
.L63:
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L64
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jnb	.L65
	movq	gap+16(%rip), %rax
	movl	gap+4(%rip), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	gap+4(%rip), %edx
	addl	$16, %edx
	movl	%edx, gap+4(%rip)
	jmp	.L66
.L65:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
.L66:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC0(%rip), %xmm0
	jp	.L64
	vmovq	%rax, %xmm1
	vucomisd	.LC0(%rip), %xmm1
	je	.L61
.L64:
	call	abort
.L61:
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	leave
	ret
	.size	bar, .-bar
	.globl	f1
	.type	f1, @function
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
	je	.L69
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L69:
	movl	%edi, -180(%rbp)
	movl	$8, gap(%rip)
	movl	$48, gap+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, gap+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, gap+16(%rip)
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jnb	.L70
	movq	gap+16(%rip), %rax
	movl	gap(%rip), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	.L71
.L70:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
.L71:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
	.size	f1, .-f1
	.globl	f2
	.type	f2, @function
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
	je	.L73
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L73:
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
	.size	f2, .-f2
	.globl	f3
	.type	f3, @function
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$448, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L75
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L75:
	movl	%edi, -436(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -336(%rbp)
	movl	$48, -332(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	-336(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L76
	movq	-320(%rbp), %rax
	movl	-336(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-336(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -336(%rbp)
	jmp	.L77
.L76:
	movq	-328(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -328(%rbp)
.L77:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L78
	call	__stack_chk_fail
.L78:
	leave
	ret
	.size	f3, .-f3
	.globl	f4
	.type	f4, @function
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$448, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L80
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L80:
	movl	%edi, -436(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -336(%rbp)
	movl	$48, -332(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	-436(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L81
	call	__stack_chk_fail
.L81:
	leave
	ret
	.size	f4, .-f4
	.globl	f5
	.type	f5, @function
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$448, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L83
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L83:
	movl	%edi, -436(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -336(%rbp)
	movl	$48, -332(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-432(%rbp), %rax
	leaq	96(%rax), %rdx
	movl	-436(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L84
	call	__stack_chk_fail
.L84:
	leave
	ret
	.size	f5, .-f5
	.globl	f6
	.type	f6, @function
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L86
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L86:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L87
	movq	-248(%rbp), %rax
	movl	-264(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	.L88
.L87:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
.L88:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L89
	call	__stack_chk_fail
.L89:
	leave
	ret
	.size	f6, .-f6
	.globl	f7
	.type	f7, @function
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L91
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L91:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L92
	call	__stack_chk_fail
.L92:
	leave
	ret
	.size	f7, .-f7
	.globl	f8
	.type	f8, @function
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L94
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L94:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-276(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L95
	call	__stack_chk_fail
.L95:
	leave
	ret
	.size	f8, .-f8
	.globl	f10
	.type	f10, @function
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L97
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L97:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L98
	movq	-200(%rbp), %rax
	movl	-216(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L99
.L98:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
.L99:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L100
	call	__stack_chk_fail
.L100:
	leave
	ret
	.size	f10, .-f10
	.globl	f11
	.type	f11, @function
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L102
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L102:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L103
	call	__stack_chk_fail
.L103:
	leave
	ret
	.size	f11, .-f11
	.globl	f12
	.type	f12, @function
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L105
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L105:
	movl	%edi, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-272(%rbp), %rax
	leaq	56(%rax), %rdx
	movl	-276(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L106
	call	__stack_chk_fail
.L106:
	leave
	ret
	.size	f12, .-f12
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$79, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f1
	movq	x(%rip), %rax
	cmpq	$79, %rax
	je	.L108
	call	abort
.L108:
	movabsq	$-4599301119452119040, %rax
	vmovq	%rax, %xmm0
	movl	$13, %esi
	movl	$16386, %edi
	movl	$1, %eax
	call	f2
	movl	bar_arg(%rip), %eax
	cmpl	$16386, %eax
	je	.L109
	call	abort
.L109:
	movl	$2031, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f3
	movq	x(%rip), %rax
	cmpq	$2031, %rax
	je	.L110
	call	abort
.L110:
	movl	$18, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	f4
	movl	bar_arg(%rip), %eax
	cmpl	$4, %eax
	je	.L111
	call	abort
.L111:
	movabsq	$4626041242239631360, %rax
	movl	$18, %edx
	vmovq	%rax, %xmm0
	movl	$1, %esi
	movl	$5, %edi
	movl	$1, %eax
	call	f5
	movl	foo_arg(%rip), %eax
	cmpl	$38, %eax
	je	.L112
	call	abort
.L112:
	movl	$18, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	f6
	movq	x(%rip), %rax
	cmpq	$18, %rax
	je	.L113
	call	abort
.L113:
	movl	$7, %edi
	movl	$0, %eax
	call	f7
	movl	bar_arg(%rip), %eax
	cmpl	$7, %eax
	je	.L114
	call	abort
.L114:
	movabsq	$4623507967449235456, %rax
	vmovq	%rax, %xmm0
	movl	$2031, %esi
	movl	$8, %edi
	movl	$1, %eax
	call	f8
	movl	foo_arg(%rip), %eax
	cmpl	$2044, %eax
	je	.L115
	call	abort
.L115:
	movl	$180, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	f10
	movq	x(%rip), %rax
	cmpq	$180, %rax
	je	.L116
	call	abort
.L116:
	movl	$10, %edi
	movl	$0, %eax
	call	f11
	movl	bar_arg(%rip), %eax
	cmpl	$10, %eax
	je	.L117
	call	abort
.L117:
	movabsq	$4622945017495814144, %rax
	vmovq	%rax, %xmm0
	movl	$2030, %esi
	movl	$11, %edi
	movl	$1, %eax
	call	f12
	movl	foo_arg(%rip), %eax
	cmpl	$2042, %eax
	je	.L118
	call	abort
.L118:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1070858240
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
