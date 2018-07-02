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
	.comm	should_optimize,4,4
__fprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
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
	movq	%rdx, -232(%rbp)
	movl	$1, should_optimize(%rip)
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
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
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$LC0, %edi
	call	fwrite
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L43
	call	abort
L43:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$5, %eax
	je	L44
	call	abort
L44:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L45
	call	abort
L45:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$LC1, %edi
	call	fwrite
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L46
	call	abort
L46:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$6, %eax
	je	L47
	call	abort
L47:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L48
	call	abort
L48:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$97, %edi
	call	fputc
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L49
	call	abort
L49:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$1, %eax
	je	L50
	call	abort
L50:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L51
	call	abort
L51:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L52
	call	abort
L52:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC3, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	testl	%eax, %eax
	je	L53
	call	abort
L53:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L54
	call	abort
L54:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$LC0, %edi
	call	fwrite
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L55
	call	abort
L55:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC0, %ecx
	movl	$LC4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$5, %eax
	je	L56
	call	abort
L56:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L57
	call	abort
L57:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$LC1, %edi
	call	fwrite
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L58
	call	abort
L58:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC1, %ecx
	movl	$LC4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$6, %eax
	je	L59
	call	abort
L59:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L60
	call	abort
L60:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$97, %edi
	call	fputc
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L61
	call	abort
L61:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC2, %ecx
	movl	$LC4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$1, %eax
	je	L62
	call	abort
L62:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L63
	call	abort
L63:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L64
	call	abort
L64:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC3, %ecx
	movl	$LC4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	testl	%eax, %eax
	je	L65
	call	abort
L65:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L66
	call	abort
L66:
	movl	$1, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$120, %edi
	call	fputc
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L67
	call	abort
L67:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$120, %ecx
	movl	$LC5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$1, %eax
	je	L68
	call	abort
L68:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L69
	call	abort
L69:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC1, %ecx
	movl	$LC6, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L70
	call	abort
L70:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$LC1, %ecx
	movl	$LC6, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$7, %eax
	je	L71
	call	abort
L71:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L72
	call	abort
L72:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$LC7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L73
	call	abort
L73:
	movl	$0, should_optimize(%rip)
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$LC7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__fprintf_chk
	cmpl	$2, %eax
	je	L74
	call	abort
L74:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L75
	call	abort
L75:
	movl	$0, %eax
	popq	%rbp
	ret
