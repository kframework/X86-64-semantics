	.file	"va-arg-pack-1.c"
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
	.globl	v1
	.data
	.align 4
	.type	v1, @object
	.size	v1, 4
v1:
	.long	8
	.globl	v2
	.align 8
	.type	v2, @object
	.size	v2, 8
v2:
	.quad	3
	.globl	v3
	.align 8
	.type	v3, @object
	.size	v3, 8
v3:
	.quad	v2
	.globl	v4
	.align 16
	.type	v4, @object
	.size	v4, 16
v4:
	.string	"foo"
	.zero	12
	.globl	v5
	.align 8
	.type	v5, @object
	.size	v5, 8
v5:
	.long	0
	.long	1078198272
	.comm	seen,20,16
	.comm	cnt,4,4
	.text
	.globl	foo1
	.type	foo1, @function
foo1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L40
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L40:
	movl	%esi, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -260(%rbp)
	js	.L41
	cmpl	$19, -260(%rbp)
	jg	.L41
	movl	-260(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	.L42
.L41:
	call	abort
.L42:
	movl	cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt(%rip)
	movl	cnt(%rip), %eax
	movl	%eax, %edx
	movl	-260(%rbp), %eax
	cltq
	movb	%dl, seen(%rax)
	cmpl	$6, -264(%rbp)
	je	.L43
	call	abort
.L43:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L44
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L45
.L44:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L45:
	movl	(%rax), %eax
	movl	%eax, -252(%rbp)
	cmpl	$5, -252(%rbp)
	je	.L46
	call	abort
.L46:
	movl	-260(%rbp), %eax
	cmpl	$1, %eax
	je	.L48
	cmpl	$2, %eax
	je	.L81
	testl	%eax, %eax
	jne	.L79
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L51
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L52
.L51:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L52:
	movl	(%rax), %eax
	movl	%eax, -252(%rbp)
	cmpl	$9, -252(%rbp)
	jne	.L53
	movl	v1(%rip), %eax
	cmpl	$9, %eax
	je	.L54
.L53:
	call	abort
.L54:
	movl	-208(%rbp), %eax
	cmpl	$40, %eax
	jnb	.L55
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -208(%rbp)
	jmp	.L56
.L55:
	movq	-200(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L56:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L57
	call	abort
.L57:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L58
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L59
.L58:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L59:
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	cmpq	$v4, -248(%rbp)
	je	.L60
	call	abort
.L60:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L61
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L62
.L61:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L62:
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	cmpq	$3, -240(%rbp)
	jne	.L63
	movq	v2(%rip), %rax
	cmpq	$4, %rax
	je	.L64
.L63:
	call	abort
.L64:
	jmp	.L65
.L48:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L66
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L67
.L66:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L67:
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC0(%rip), %xmm0
	jp	.L68
	movq	-232(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	.LC0(%rip), %xmm1
	jne	.L68
	movq	v5(%rip), %rax
	vmovq	%rax, %xmm2
	vucomisd	-232(%rbp), %xmm2
	jp	.L68
	vmovq	%rax, %xmm3
	vucomisd	-232(%rbp), %xmm3
	je	.L80
.L68:
	call	abort
.L80:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L71
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L72
.L71:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L72:
	movl	(%rax), %eax
	movl	%eax, -252(%rbp)
	cmpl	$8, -252(%rbp)
	je	.L73
	call	abort
.L73:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L74
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L75
.L74:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L75:
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	cmpq	$v2, -248(%rbp)
	je	.L76
	call	abort
.L76:
	jmp	.L65
.L79:
	call	abort
.L81:
	nop
.L65:
	movl	-260(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L78
	call	__stack_chk_fail
.L78:
	leave
	ret
	.size	foo1, .-foo1
	.globl	foo2
	.type	foo2, @function
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
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
	movl	%esi, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -276(%rbp)
	js	.L84
	cmpl	$19, -276(%rbp)
	jg	.L84
	movl	-276(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	.L85
.L84:
	call	abort
.L85:
	movl	cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt(%rip)
	movl	cnt(%rip), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	cltq
	movb	%dl, seen(%rax)
	cmpl	$10, -280(%rbp)
	je	.L86
	call	abort
.L86:
	movl	-276(%rbp), %eax
	cmpl	$11, %eax
	je	.L113
	cmpl	$12, %eax
	je	.L89
	cmpl	$2, %eax
	je	.L114
	jmp	.L111
.L89:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L92
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L93
.L92:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L93:
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC0(%rip), %xmm0
	jp	.L94
	movq	-264(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	.LC0(%rip), %xmm1
	jne	.L94
	movq	v5(%rip), %rax
	vmovq	%rax, %xmm2
	vucomisd	.LC1(%rip), %xmm2
	jp	.L94
	vmovq	%rax, %xmm3
	vucomisd	.LC1(%rip), %xmm3
	je	.L112
.L94:
	call	abort
.L112:
	movl	-208(%rbp), %eax
	cmpl	$40, %eax
	jnb	.L97
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -208(%rbp)
	jmp	.L98
.L97:
	movq	-200(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L98:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	leaq	-240(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L99
	call	abort
.L99:
	movl	-208(%rbp), %eax
	cmpl	$40, %eax
	jnb	.L100
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -208(%rbp)
	jmp	.L101
.L100:
	movq	-200(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L101:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L102
	call	abort
.L102:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L103
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L104
.L103:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L104:
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	cmpq	$v2, -256(%rbp)
	je	.L105
	call	abort
.L105:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L106
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L107
.L106:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L107:
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	cmpq	$16, -248(%rbp)
	je	.L108
	call	abort
.L108:
	jmp	.L91
.L111:
	call	abort
.L113:
	nop
	jmp	.L91
.L114:
	nop
.L91:
	movl	-276(%rbp), %eax
	addl	$8, %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L110
	call	__stack_chk_fail
.L110:
	leave
	ret
	.size	foo2, .-foo2
	.globl	foo3
	.type	foo3, @function
foo3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, %eax
	popq	%rbp
	ret
	.size	foo3, .-foo3
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	v2(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, v2(%rip)
	movl	v1(%rip), %eax
	addl	$1, %eax
	movl	%eax, v1(%rip)
	movl	v1(%rip), %r12d
	movl	$0, -52(%rbp)
	cmpl	$9, -52(%rbp)
	jg	.L118
	call	foo3
	movl	%eax, %esi
	movq	v4(%rip), %rax
	movq	v4+8(%rip), %rdx
	movl	-52(%rbp), %edi
	pushq	%rbx
	pushq	$v4
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movl	$5, %edx
	movl	$0, %eax
	call	foo1
	addq	$16, %rsp
	jmp	.L119
.L118:
	call	foo3
	leal	4(%rax), %esi
	movq	v4(%rip), %rdx
	movq	v4+8(%rip), %rdi
	movl	-52(%rbp), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$v4, %r9d
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	%r12d, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
	addq	$16, %rsp
.L119:
	testl	%eax, %eax
	je	.L120
	call	abort
.L120:
	movq	v3(%rip), %rbx
	movq	v5(%rip), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, v5(%rip)
	movq	v5(%rip), %r12
	movl	$1, -48(%rbp)
	cmpl	$9, -48(%rbp)
	jg	.L121
	call	foo3
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	movq	%rbx, %r8
	movl	$8, %ecx
	vmovq	%r12, %xmm0
	movl	$5, %edx
	movl	%eax, %edi
	movl	$1, %eax
	call	foo1
	jmp	.L122
.L121:
	call	foo3
	leal	4(%rax), %esi
	movl	-48(%rbp), %eax
	movq	%rbx, %rcx
	movl	$8, %edx
	vmovq	%r12, %xmm0
	movl	%eax, %edi
	movl	$1, %eax
	call	foo2
.L122:
	cmpl	$1, %eax
	je	.L123
	call	abort
.L123:
	movl	$2, -44(%rbp)
	cmpl	$9, -44(%rbp)
	jg	.L124
	call	foo3
	movl	%eax, %ecx
	movl	-44(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	.L125
.L124:
	call	foo3
	leal	4(%rax), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
.L125:
	cmpl	$2, %eax
	je	.L126
	call	abort
.L126:
	movl	v1(%rip), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	cmpl	$9, -40(%rbp)
	jg	.L127
	call	foo3
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	.L128
.L127:
	call	foo3
	leal	4(%rax), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
.L128:
	cmpl	$19, %eax
	je	.L129
	call	abort
.L129:
	movq	v3(%rip), %r13
	movq	v5(%rip), %r12
	movabsq	$4607182418800017408, %rax
	vmovq	%r12, %xmm5
	vmovq	%rax, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, v5(%rip)
	movl	v1(%rip), %eax
	addl	$3, %eax
	movl	%eax, -36(%rbp)
	cmpl	$9, -36(%rbp)
	jg	.L130
	call	foo3
	movl	%eax, %edi
	movq	v4(%rip), %rdx
	movq	v4+8(%rip), %rsi
	movl	-36(%rbp), %eax
	subq	$8, %rsp
	pushq	$16
	pushq	v4+8(%rip)
	pushq	v4(%rip)
	movq	%r13, %r9
	movq	%rdx, %rcx
	movq	%rsi, %r8
	vmovq	%r12, %xmm0
	movl	$5, %edx
	movl	%edi, %esi
	movl	%eax, %edi
	movl	$1, %eax
	call	foo1
	addq	$32, %rsp
	jmp	.L131
.L130:
	call	foo3
	leal	4(%rax), %esi
	movq	v4(%rip), %rcx
	movq	v4+8(%rip), %rbx
	movq	v4(%rip), %rax
	movq	v4+8(%rip), %rdx
	movl	-36(%rbp), %edi
	pushq	$16
	pushq	%r13
	movq	%rcx, %r8
	movq	%rbx, %r9
	movq	%rdx, %rcx
	movq	%rax, %rdx
	vmovq	%r12, %xmm0
	movl	$1, %eax
	call	foo2
	addq	$16, %rsp
.L131:
	cmpl	$20, %eax
	je	.L132
	call	abort
.L132:
	movl	$0, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1078231040
	.align 8
.LC1:
	.long	0
	.long	1078198272
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
