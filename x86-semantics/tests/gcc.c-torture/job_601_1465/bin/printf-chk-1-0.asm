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
__printf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
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
	movq	%rsi, -224(%rbp)
	movl	$1, should_optimize(%rip)
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, should_optimize(%rip)
	movl	$LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L13
	call	abort
L13:
	movl	$0, should_optimize(%rip)
	movl	$LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$5, %eax
	je	L14
	call	abort
L14:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L15
	call	abort
L15:
	movl	$1, should_optimize(%rip)
	movl	$LC0, %edi
	call	puts
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L16
	call	abort
L16:
	movl	$0, should_optimize(%rip)
	movl	$LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$6, %eax
	je	L17
	call	abort
L17:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L18
	call	abort
L18:
	movl	$1, should_optimize(%rip)
	movl	$97, %edi
	call	putchar
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L19
	call	abort
L19:
	movl	$0, should_optimize(%rip)
	movl	$LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$1, %eax
	je	L20
	call	abort
L20:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L21
	call	abort
L21:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L22
	call	abort
L22:
	movl	$0, should_optimize(%rip)
	movl	$LC3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	testl	%eax, %eax
	je	L23
	call	abort
L23:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L24
	call	abort
L24:
	movl	$0, should_optimize(%rip)
	movl	$LC0, %edx
	movl	$LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L25
	call	abort
L25:
	movl	$0, should_optimize(%rip)
	movl	$LC0, %edx
	movl	$LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$5, %eax
	je	L26
	call	abort
L26:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L27
	call	abort
L27:
	movl	$1, should_optimize(%rip)
	movl	$LC0, %edi
	call	puts
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L28
	call	abort
L28:
	movl	$0, should_optimize(%rip)
	movl	$LC1, %edx
	movl	$LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$6, %eax
	je	L29
	call	abort
L29:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L30
	call	abort
L30:
	movl	$1, should_optimize(%rip)
	movl	$97, %edi
	call	putchar
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L31
	call	abort
L31:
	movl	$0, should_optimize(%rip)
	movl	$LC2, %edx
	movl	$LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$1, %eax
	je	L32
	call	abort
L32:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L33
	call	abort
L33:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L34
	call	abort
L34:
	movl	$0, should_optimize(%rip)
	movl	$LC3, %edx
	movl	$LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	testl	%eax, %eax
	je	L35
	call	abort
L35:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L36
	call	abort
L36:
	movl	$1, should_optimize(%rip)
	movl	$120, %edi
	call	putchar
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L37
	call	abort
L37:
	movl	$0, should_optimize(%rip)
	movl	$120, %edx
	movl	$LC5, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$1, %eax
	je	L38
	call	abort
L38:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L39
	call	abort
L39:
	movl	$1, should_optimize(%rip)
	movl	$LC1, %edi
	call	puts
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L40
	call	abort
L40:
	movl	$0, should_optimize(%rip)
	movl	$LC1, %edx
	movl	$LC6, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$7, %eax
	je	L41
	call	abort
L41:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L42
	call	abort
L42:
	movl	$0, should_optimize(%rip)
	movl	$0, %edx
	movl	$LC7, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L43
	call	abort
L43:
	movl	$0, should_optimize(%rip)
	movl	$0, %edx
	movl	$LC7, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	cmpl	$2, %eax
	je	L44
	call	abort
L44:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L45
	call	abort
L45:
	movl	$0, %eax
	popq	%rbp
	ret
