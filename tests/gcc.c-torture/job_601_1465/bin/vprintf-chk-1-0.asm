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
	.comm	should_optimize,4,4
__vprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, should_optimize(%rip)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	leave
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
	je	L12
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L12:
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
	ja	L13
	movl	-228(%rbp), %eax
	movq	L15(,%rax,8), %rax
	jmp	*%rax
L15:
	.quad	L14
	.quad	L16
	.quad	L17
	.quad	L18
	.quad	L19
	.quad	L20
	.quad	L21
	.quad	L22
	.quad	L23
	.quad	L24
	.quad	L25
L14:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L26
	call	abort.3236
L26:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$5, %eax
	je	L27
	call	abort.3236
L27:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L28
	call	abort.3236
	jmp	L11
L28:
	jmp	L11
L16:
	movl	$1, should_optimize(%rip)
	movl	$LC0, %edi
	call	puts
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L30
	call	abort.3236
L30:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC1, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$6, %eax
	je	L31
	call	abort.3236
L31:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L32
	call	abort.3236
	jmp	L11
L32:
	jmp	L11
L17:
	movl	$1, should_optimize(%rip)
	movl	$97, %edi
	call	putchar
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L33
	call	abort.3236
L33:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC2, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L34
	call	abort.3236
L34:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L35
	call	abort.3236
	jmp	L11
L35:
	jmp	L11
L18:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L36
	call	abort.3236
L36:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC3, %esi
	movl	$1, %edi
	call	__vprintf_chk
	testl	%eax, %eax
	je	L37
	call	abort.3236
L37:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L38
	call	abort.3236
	jmp	L11
L38:
	jmp	L11
L19:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L39
	call	abort.3236
L39:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$5, %eax
	je	L40
	call	abort.3236
L40:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L41
	call	abort.3236
	jmp	L11
L41:
	jmp	L11
L20:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L42
	call	abort.3236
L42:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$6, %eax
	je	L43
	call	abort.3236
L43:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L44
	call	abort.3236
	jmp	L11
L44:
	jmp	L11
L21:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L45
	call	abort.3236
L45:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L46
	call	abort.3236
L46:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L47
	call	abort.3236
	jmp	L11
L47:
	jmp	L11
L22:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L48
	call	abort.3236
L48:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	testl	%eax, %eax
	je	L49
	call	abort.3236
L49:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L50
	call	abort.3236
	jmp	L11
L50:
	jmp	L11
L23:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC5, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L51
	call	abort.3236
L51:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC5, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L52
	call	abort.3236
L52:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L53
	call	abort.3236
	jmp	L11
L53:
	jmp	L11
L24:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC6, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L54
	call	abort.3236
L54:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC6, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$7, %eax
	je	L55
	call	abort.3236
L55:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L56
	call	abort.3236
	jmp	L11
L56:
	jmp	L11
L25:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC7, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L57
	call	abort.3236
L57:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC7, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$2, %eax
	je	L58
	call	abort.3236
L58:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L59
	call	abort.3236
	jmp	L11
L59:
	jmp	L11
L13:
	call	abort.3236
L11:
	leave
	ret
abort.3236:
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
