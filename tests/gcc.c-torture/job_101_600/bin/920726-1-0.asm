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
LC0:
	.string	"%d"
first:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
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
	movq	%rsi, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$16, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -180(%rbp)
	jmp	L11
L16:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$105, %al
	jne	L12
	movl	-224(%rbp), %eax
	cmpl	$48, %eax
	jae	L13
	movq	-208(%rbp), %rdx
	movl	-224(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	L14
L13:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
L14:
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -192(%rbp)
	jmp	L15
L12:
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movl	-180(%rbp), %edx
	movslq	%edx, %rcx
	movq	-240(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L15:
	addl	$1, -180(%rbp)
L11:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L16
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movl	-200(%rbp), %eax
	leave
	ret
second:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L19
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L19:
	movq	%rsi, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$16, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -180(%rbp)
	jmp	L20
L25:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$105, %al
	jne	L21
	movl	-224(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-208(%rbp), %rdx
	movl	-224(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	L23
L22:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
L23:
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -192(%rbp)
	jmp	L24
L21:
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movl	-180(%rbp), %edx
	movslq	%edx, %rcx
	movq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L24:
	addl	$1, -180(%rbp)
L20:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L25
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movl	-240(%rbp), %eax
	leave
	ret
LC1:
	.string	"i i "
LC2:
	.string	"5 20 "
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	leaq	-112(%rbp), %rax
	movl	$20, %ecx
	movl	$5, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	first
	leaq	-224(%rbp), %rax
	movl	$20, %ecx
	movl	$5, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	second
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strcmp
	testl	%eax, %eax
	jne	L28
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strcmp
	testl	%eax, %eax
	je	L29
L28:
	call	abort
L29:
	movl	$0, %edi
	call	exit
