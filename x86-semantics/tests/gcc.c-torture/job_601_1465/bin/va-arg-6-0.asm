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
f:
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
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L41
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L42
L41:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L42:
	movl	(%rax), %eax
	cmpl	$10, %eax
	je	L43
	call	abort
L43:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L44
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L45
L44:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L45:
	movq	(%rax), %rdx
	movabsq	$10000000000, %rax
	cmpq	%rax, %rdx
	je	L46
	call	abort
L46:
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
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	L49
	call	abort
L49:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	jp	L72
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L70
	jmp	L68
L72:
	fstp	%st(0)
L68:
	call	abort
L70:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L52
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L53
L52:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L53:
	movl	(%rax), %eax
	cmpl	$12, %eax
	je	L54
	call	abort
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
	movl	(%rax), %eax
	cmpl	$13, %eax
	je	L57
	call	abort
L57:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L58
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L59
L58:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L59:
	movq	(%rax), %rdx
	movabsq	$20000000000, %rax
	cmpq	%rax, %rdx
	je	L60
	call	abort
L60:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L61
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L62
L61:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L62:
	movl	(%rax), %eax
	cmpl	$14, %eax
	je	L63
	call	abort
L63:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L64
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L65
L64:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L65:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC1(%rip), %xmm0
	jp	L69
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	je	L71
L69:
	call	abort
L71:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4613307314293241283, %rcx
	pushq	$14
	pushq	$-1474836480
	movl	$4, 4(%rsp)
	movabsq	$-3966049975847553597, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$13, %r9d
	movl	$12, %r8d
	movl	$11, %ecx
	movabsq	$10000000000, %rdx
	movl	$10, %esi
	movl	$4, %edi
	movl	$1, %eax
	call	f
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	1546188227
	.long	3371549327
	.long	16384
	.long	0
LC1:
	.long	1546188227
	.long	1074119311
