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
	.string	"hello"
LC1:
	.string	"hello\n"
LC2:
	.string	"a"
LC3:
	.string	""
LC4:
	.string	"%s"
LC5:
	.string	"%c"
LC6:
	.string	"%s\n"
LC7:
	.string	"%d\n"
inner:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
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
	movl	%edi, -228(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpl	$10, -228(%rbp)
	ja	L11
	movl	-228(%rbp), %eax
	movq	L13(,%rax,8), %rax
	jmp	*%rax
L13:
	.quad	L12
	.quad	L14
	.quad	L15
	.quad	L16
	.quad	L17
	.quad	L18
	.quad	L19
	.quad	L20
	.quad	L21
	.quad	L22
	.quad	L23
L12:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	vprintf
	cmpl	$5, %eax
	je	L24
	call	abort.3230
	jmp	L9
L24:
	jmp	L9
L14:
	movl	$LC0, %edi
	call	puts
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	vprintf
	cmpl	$6, %eax
	je	L26
	call	abort.3230
	jmp	L9
L26:
	jmp	L9
L15:
	movl	$97, %edi
	call	putchar
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L27
	call	abort.3230
	jmp	L9
L27:
	jmp	L9
L16:
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	vprintf
	testl	%eax, %eax
	je	L28
	call	abort.3230
	jmp	L9
L28:
	jmp	L9
L17:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$5, %eax
	je	L29
	call	abort.3230
	jmp	L9
L29:
	jmp	L9
L18:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$6, %eax
	je	L30
	call	abort.3230
	jmp	L9
L30:
	jmp	L9
L19:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L31
	call	abort.3230
	jmp	L9
L31:
	jmp	L9
L20:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	testl	%eax, %eax
	je	L32
	call	abort.3230
	jmp	L9
L32:
	jmp	L9
L21:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L33
	call	abort.3230
	jmp	L9
L33:
	jmp	L9
L22:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	vprintf
	cmpl	$7, %eax
	je	L34
	call	abort.3230
	jmp	L9
L34:
	jmp	L9
L23:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	call	vprintf
	cmpl	$2, %eax
	je	L35
	call	abort.3230
	jmp	L9
L35:
	jmp	L9
L11:
	call	abort.3230
L9:
	leave
	ret
abort.3230:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	inner
	movl	$1, %edi
	movl	$0, %eax
	call	inner
	movl	$2, %edi
	movl	$0, %eax
	call	inner
	movl	$3, %edi
	movl	$0, %eax
	call	inner
	movl	$LC0, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	inner
	movl	$LC2, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	inner
	movl	$LC3, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	inner
	movl	$120, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %eax
	popq	%rbp
	ret
