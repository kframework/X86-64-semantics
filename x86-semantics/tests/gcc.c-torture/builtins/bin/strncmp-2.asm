	.file	"strncmp-2.c"
	.text
	.globl	strncmp
strncmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L2
L6:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	cmpb	$0, -18(%rbp)
	je	L3
	movzbl	-18(%rbp), %eax
	cmpb	-17(%rbp), %al
	je	L4
L3:
	movzbl	-18(%rbp), %edx
	movzbl	-17(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L5
L4:
	subq	$1, -56(%rbp)
L2:
	cmpq	$0, -56(%rbp)
	jne	L6
	movzbl	-18(%rbp), %edx
	movzbl	-17(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
L5:
	popq	%rbp
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.section	.rodata
LC0:
	.string	"hello world"
LC1:
	.string	"ello"
LC2:
	.string	"zllo"
LC3:
	.string	"allo"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$LC0, -16(%rbp)
	movl	$6, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L11
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L12
L11:
	call	abort
L12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	strncmp
	testl	%eax, %eax
	jne	L13
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L14
L13:
	call	abort
L14:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L15
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L16
L15:
	call	abort
L16:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	strncmp
	testl	%eax, %eax
	jne	L17
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L18
L17:
	call	abort
L18:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L19
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L20
L19:
	call	abort
L20:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L21
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L22
L21:
	call	abort
L22:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L23
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L24
L23:
	call	abort
L24:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L25
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L26
L25:
	call	abort
L26:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L27
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L28
L27:
	call	abort
L28:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L29
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L30
L29:
	call	abort
L30:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L31
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L32
L31:
	call	abort
L32:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L33
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L34
L33:
	call	abort
L34:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L35
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L36
L35:
	call	abort
L36:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L37
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L38
L37:
	call	abort
L38:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L39
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L40
L39:
	call	abort
L40:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L41
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L42
L41:
	call	abort
L42:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L43
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L44
L43:
	call	abort
L44:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L45
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L46
L45:
	call	abort
L46:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L47
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L48
L47:
	call	abort
L48:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L49
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L50
L49:
	call	abort
L50:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L51
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L52
L51:
	call	abort
L52:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L53
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L54
L53:
	call	abort
L54:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L55
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L56
L55:
	call	abort
L56:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L57
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	je	L58
L57:
	call	abort
L58:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L59
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L59
	cmpl	$3, -24(%rbp)
	je	L60
L59:
	call	abort
L60:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L61
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L61
	cmpl	$3, -24(%rbp)
	je	L62
L61:
	call	abort
L62:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L63
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L63
	cmpl	$4, -24(%rbp)
	je	L64
L63:
	call	abort
L64:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L65
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L65
	cmpl	$4, -24(%rbp)
	je	L66
L65:
	call	abort
L66:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L67
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L67
	cmpl	$5, -24(%rbp)
	je	L68
L67:
	call	abort
L68:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L69
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L69
	cmpl	$5, -24(%rbp)
	je	L70
L69:
	call	abort
L70:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L71
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L71
	cmpl	$6, -24(%rbp)
	je	L72
L71:
	call	abort
L72:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	andl	$3, %eax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L73
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L73
	cmpl	$6, -24(%rbp)
	je	L74
L73:
	call	abort
L74:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L75
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L75
	cmpl	$3, -24(%rbp)
	je	L76
L75:
	call	abort
L76:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L77
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L77
	cmpl	$3, -24(%rbp)
	je	L78
L77:
	call	abort
L78:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L79
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L79
	cmpl	$4, -24(%rbp)
	je	L80
L79:
	call	abort
L80:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L81
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L81
	cmpl	$4, -24(%rbp)
	je	L82
L81:
	call	abort
L82:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L83
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L83
	cmpl	$5, -24(%rbp)
	je	L84
L83:
	call	abort
L84:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L85
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L85
	cmpl	$5, -24(%rbp)
	je	L86
L85:
	call	abort
L86:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jns	L87
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L87
	cmpl	$6, -24(%rbp)
	je	L88
L87:
	call	abort
L88:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strncmp
	testl	%eax, %eax
	jle	L89
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L89
	cmpl	$6, -24(%rbp)
	je	L90
L89:
	call	abort
L90:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L91
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L91
	cmpl	$3, -24(%rbp)
	je	L92
L91:
	call	abort
L92:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L93
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L93
	cmpl	$3, -24(%rbp)
	je	L94
L93:
	call	abort
L94:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L95
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L95
	cmpl	$4, -24(%rbp)
	je	L96
L95:
	call	abort
L96:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L97
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L97
	cmpl	$4, -24(%rbp)
	je	L98
L97:
	call	abort
L98:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L99
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L99
	cmpl	$5, -24(%rbp)
	je	L100
L99:
	call	abort
L100:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L101
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L101
	cmpl	$5, -24(%rbp)
	je	L102
L101:
	call	abort
L102:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jle	L103
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L103
	cmpl	$6, -24(%rbp)
	je	L104
L103:
	call	abort
L104:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strncmp
	testl	%eax, %eax
	jns	L105
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	L105
	cmpl	$6, -24(%rbp)
	je	L107
L105:
	call	abort
L107:
	nop
	leave
	ret
