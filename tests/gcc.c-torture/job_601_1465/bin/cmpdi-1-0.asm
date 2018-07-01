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
feq:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	L10
	movl	$13, %eax
	jmp	L11
L10:
	movl	$140, %eax
L11:
	popq	%rbp
	ret
fne:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	L13
	movl	$13, %eax
	jmp	L14
L13:
	movl	$140, %eax
L14:
	popq	%rbp
	ret
flt:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	L16
	movl	$13, %eax
	jmp	L17
L16:
	movl	$140, %eax
L17:
	popq	%rbp
	ret
fge:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	L19
	movl	$13, %eax
	jmp	L20
L19:
	movl	$140, %eax
L20:
	popq	%rbp
	ret
fgt:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	L22
	movl	$13, %eax
	jmp	L23
L22:
	movl	$140, %eax
L23:
	popq	%rbp
	ret
fle:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	L25
	movl	$13, %eax
	jmp	L26
L25:
	movl	$140, %eax
L26:
	popq	%rbp
	ret
fltu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	L28
	movl	$13, %eax
	jmp	L29
L28:
	movl	$140, %eax
L29:
	popq	%rbp
	ret
fgeu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	L31
	movl	$13, %eax
	jmp	L32
L31:
	movl	$140, %eax
L32:
	popq	%rbp
	ret
fgtu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	L34
	movl	$13, %eax
	jmp	L35
L34:
	movl	$140, %eax
L35:
	popq	%rbp
	ret
fleu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	L37
	movl	$13, %eax
	jmp	L38
L37:
	movl	$140, %eax
L38:
	popq	%rbp
	ret
args:
	.quad	0
	.quad	1
	.quad	-1
	.quad	9223372036854775807
	.quad	-9223372036854775808
	.quad	-9223372036854775807
	.quad	1891269347843992664
	.quad	-7816825554603336956
correct_results:
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$correct_results, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L53:
	movl	-4(%rbp), %eax
	cltq
	movq	args(,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	L41
L52:
	movl	-8(%rbp), %eax
	cltq
	movq	args(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	feq
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L42
	call	abort
L42:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fne
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L43
	call	abort
L43:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	flt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L44
	call	abort
L44:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fge
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L45
	call	abort
L45:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fgt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L46
	call	abort
L46:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fle
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L47
	call	abort
L47:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fltu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L48
	call	abort
L48:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fgeu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L49
	call	abort
L49:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fgtu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L50
	call	abort
L50:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fleu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L51
	call	abort
L51:
	addl	$1, -8(%rbp)
L41:
	cmpl	$7, -8(%rbp)
	jle	L52
	addl	$1, -4(%rbp)
L40:
	cmpl	$7, -4(%rbp)
	jle	L53
	movl	$0, %edi
	call	exit
