	.file	"va-arg-5.c"
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
	.globl	va_double
	.type	va_double, @function
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
	movl	%edi, -212(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L41
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L42
.L41:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L42:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC0(%rip), %xmm0
	jp	.L58
	vmovq	%rax, %xmm1
	vucomisd	.LC0(%rip), %xmm1
	je	.L62
.L58:
	call	abort
.L62:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L45
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L46
.L45:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L46:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	.LC1(%rip), %xmm2
	jp	.L59
	vmovq	%rax, %xmm3
	vucomisd	.LC1(%rip), %xmm3
	je	.L63
.L59:
	call	abort
.L63:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L49
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L50
.L49:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L50:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC2(%rip), %xmm4
	jp	.L60
	vmovq	%rax, %xmm5
	vucomisd	.LC2(%rip), %xmm5
	je	.L64
.L60:
	call	abort
.L64:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L53
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L54
.L53:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L54:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	.LC3(%rip), %xmm6
	jp	.L61
	vmovq	%rax, %xmm7
	vucomisd	.LC3(%rip), %xmm7
	je	.L65
.L61:
	call	abort
.L65:
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L57
	call	__stack_chk_fail
.L57:
	leave
	ret
	.size	va_double, .-va_double
	.globl	va_long_double
	.type	va_long_double, @function
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
	je	.L67
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L67:
	movl	%edi, -212(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L68
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L69
.L68:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L69:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC0(%rip), %xmm0
	jp	.L85
	vmovq	%rax, %xmm1
	vucomisd	.LC0(%rip), %xmm1
	je	.L89
.L85:
	call	abort
.L89:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L72
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L73
.L72:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L73:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	.LC1(%rip), %xmm2
	jp	.L86
	vmovq	%rax, %xmm3
	vucomisd	.LC1(%rip), %xmm3
	je	.L90
.L86:
	call	abort
.L90:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L76
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L77
.L76:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L77:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC2(%rip), %xmm4
	jp	.L87
	vmovq	%rax, %xmm5
	vucomisd	.LC2(%rip), %xmm5
	je	.L91
.L87:
	call	abort
.L91:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	.L80
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	.L81
.L80:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L81:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	.LC3(%rip), %xmm6
	jp	.L88
	vmovq	%rax, %xmm7
	vucomisd	.LC3(%rip), %xmm7
	je	.L92
.L88:
	call	abort
.L92:
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L84
	call	__stack_chk_fail
.L84:
	leave
	ret
	.size	va_long_double, .-va_long_double
	.globl	main
	.type	main, @function
main:
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
	call	va_long_double
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	4236968058
	.long	1074340346
	.align 8
.LC1:
	.long	1467848023
	.long	1074118404
	.align 8
.LC2:
	.long	2435913036
	.long	1073865591
	.align 8
.LC3:
	.long	3786773022
	.long	1073819147
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
