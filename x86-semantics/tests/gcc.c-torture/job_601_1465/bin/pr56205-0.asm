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
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,128,64
LC0:
	.string	"%s %d %s"
LC1:
	.string	"foo"
LC2:
	.string	"bar"
f1:
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
	movq	%rdi, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %eax
	movl	$9, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	L41
	call	abort
L41:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L43
L42:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L43:
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$LC1, %eax
	movl	$4, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jne	L44
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L45
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L46
L45:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L46:
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	L44
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L47
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L48
L47:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L48:
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$LC2, %eax
	movl	$4, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	L39
L44:
	call	abort
L39:
	leave
	ret
LC3:
	.string	"baz"
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC3, %eax
	movl	$4, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jne	L51
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L52
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
	jmp	L53
L52:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L53:
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$LC1, %eax
	movl	$4, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jne	L51
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L54
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
	jmp	L55
L54:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L55:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jp	L51
	vmovq	%rax, %xmm1
	vucomisd	LC4(%rip), %xmm1
	jne	L51
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L56
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
	jmp	L57
L56:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L57:
	movl	(%rax), %eax
	cmpl	$26, %eax
	je	L50
L51:
	call	abort
L50:
	leave
	ret
LC5:
	.string	""
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	L60
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L60
	movl	$LC2, %edx
	jmp	L61
L60:
	movl	$LC5, %edx
L61:
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
	movl	a(%rip), %esi
	cmpl	$0, -4(%rbp)
	je	L62
	movl	$LC5, %eax
	jmp	L63
L62:
	movl	$LC1, %eax
L63:
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$LC0, %edi
	movl	$0, %eax
	call	f1
	cmpq	$0, -16(%rbp)
	je	L59
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L59
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	f2
L59:
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
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
	movq	%rsi, -224(%rbp)
	movl	$16, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -212(%rbp)
	jne	L67
	movzbl	c(%rip), %eax
	testb	%al, %al
	jne	L67
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L67:
	leaq	-200(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movl	-212(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	f3
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4622945017495814144, %rax
	movl	$26, %ecx
	vmovq	%rax, %xmm0
	movl	$LC1, %edx
	movl	$LC3, %esi
	movl	$0, %edi
	movl	$1, %eax
	call	f4
	movl	a(%rip), %eax
	cmpl	$1, %eax
	jne	L69
	movl	b(%rip), %eax
	cmpl	$1, %eax
	je	L70
L69:
	call	abort
L70:
	movl	$0, %eax
	popq	%rbp
	ret
LC4:
	.long	0
	.long	1076363264
