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
	.bss
fails:
	.zero	4
	.comm	a,60,32
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
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
	movl	%edi, -260(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	$2, -196(%rbp)
	jmp	L41
L51:
	movq	$0, -184(%rbp)
	addl	$1, -188(%rbp)
	addl	$2, -192(%rbp)
	movl	-260(%rbp), %eax
	sall	$4, %eax
	orl	-196(%rbp), %eax
	subl	$18, %eax
	cmpl	$1, %eax
	ja	L42
	movq	$a+24, -184(%rbp)
	movl	-244(%rbp), %eax
	cmpl	$160, %eax
	jae	L44
	movq	-232(%rbp), %rdx
	movl	-244(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rcx
	addq	$16, %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rcx)
	movl	-244(%rbp), %edx
	addl	$32, %edx
	movl	%edx, -244(%rbp)
	jmp	L45
L44:
	movq	-240(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -240(%rbp)
L45:
	movq	(%rax), %rdx
	movq	%rdx, -224(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -216(%rbp)
	jmp	L46
L42:
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
	nop
L46:
	cmpq	$0, -184(%rbp)
	je	L47
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	movl	-216(%rbp), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	jp	L52
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L47
L52:
	movl	fails(%rip), %eax
	addl	$1, %eax
	movl	%eax, fails(%rip)
L47:
	movl	fails(%rip), %eax
	testl	%eax, %eax
	je	L49
	jmp	L39
L49:
	addl	$1, -196(%rbp)
L41:
	cmpl	$3, -196(%rbp)
	jle	L51
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC0(%rip), %eax
	movl	%eax, a+32(%rip)
	movq	a+24(%rip), %rsi
	movl	a+32(%rip), %ecx
	movq	a+24(%rip), %rax
	movl	a+32(%rip), %edx
	vmovq	%rsi, %xmm2
	vmovq	%rcx, %xmm3
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$1, %edi
	movl	$4, %eax
	call	check
	movl	fails(%rip), %eax
	testl	%eax, %eax
	je	L54
	call	abort
L54:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	3342828032
