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
	.comm	arr,400,64
ptr:
	.quad	arr+80
arrindex:
	.long	4
assign_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
assign_glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	ptr(%rip), %rax
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
assign_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
assign_glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rdx
	movl	arrindex(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	arrindex(%rip), %eax
	cmpl	%eax, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
preinc_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	addq	$4, -24(%rbp)
	movq	-24(%rbp), %rax
	prefetchnta	(%rax)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
preinc_glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	ptr(%rip), %rax
	addq	$4, %rax
	movq	%rax, ptr(%rip)
	movq	ptr(%rip), %rax
	prefetchnta	(%rax)
	movq	ptr(%rip), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postinc_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -24(%rbp)
	prefetchnta	(%rax)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postinc_glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	ptr(%rip), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, ptr(%rip)
	prefetchnta	(%rax)
	movq	ptr(%rip), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
predec_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -8(%rbp)
	subq	$4, -24(%rbp)
	movq	-24(%rbp), %rax
	prefetchnta	(%rax)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
predec_glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	subq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	ptr(%rip), %rax
	subq	$4, %rax
	movq	%rax, ptr(%rip)
	movq	ptr(%rip), %rax
	prefetchnta	(%rax)
	movq	ptr(%rip), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postdec_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, -24(%rbp)
	prefetchnta	(%rax)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postdec_glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	subq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	ptr(%rip), %rax
	leaq	-4(%rax), %rdx
	movq	%rdx, ptr(%rip)
	prefetchnta	(%rax)
	movq	ptr(%rip), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
preinc_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
preinc_glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	arrindex(%rip), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	ptr(%rip), %rax
	movl	arrindex(%rip), %edx
	addl	$1, %edx
	movl	%edx, arrindex(%rip)
	movl	arrindex(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	arrindex(%rip), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postinc_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postinc_glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	arrindex(%rip), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	ptr(%rip), %rcx
	movl	arrindex(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, arrindex(%rip)
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	prefetchnta	(%rax)
	movl	arrindex(%rip), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
predec_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	subl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
predec_glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	arrindex(%rip), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	ptr(%rip), %rax
	movl	arrindex(%rip), %edx
	subl	$1, %edx
	movl	%edx, arrindex(%rip)
	movl	arrindex(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	arrindex(%rip), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postdec_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
postdec_glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	arrindex(%rip), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	ptr(%rip), %rcx
	movl	arrindex(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, arrindex(%rip)
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	prefetchnta	(%rax)
	movl	arrindex(%rip), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.bss
getptrcnt:
	.zero	4
getptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	getptrcnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, getptrcnt(%rip)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	popq	%rbp
	ret
funccall_arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getptr
	prefetchnta	(%rax)
	movl	getptrcnt(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
	.bss
getintcnt:
	.zero	4
getint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	getintcnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, getintcnt(%rip)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	popq	%rbp
	ret
funccall_arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	getint
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movl	getintcnt(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	assign_arg_ptr
	testl	%eax, %eax
	jne	L58
	call	abort
L58:
	call	assign_glob_ptr
	testl	%eax, %eax
	jne	L59
	call	abort
L59:
	movq	ptr(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	assign_arg_idx
	testl	%eax, %eax
	jne	L60
	call	abort
L60:
	call	assign_glob_idx
	testl	%eax, %eax
	jne	L61
	call	abort
L61:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	preinc_arg_ptr
	testl	%eax, %eax
	jne	L62
	call	abort
L62:
	call	preinc_glob_ptr
	testl	%eax, %eax
	jne	L63
	call	abort
L63:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	postinc_arg_ptr
	testl	%eax, %eax
	jne	L64
	call	abort
L64:
	call	postinc_glob_ptr
	testl	%eax, %eax
	jne	L65
	call	abort
L65:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	predec_arg_ptr
	testl	%eax, %eax
	jne	L66
	call	abort
L66:
	call	predec_glob_ptr
	testl	%eax, %eax
	jne	L67
	call	abort
L67:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	postdec_arg_ptr
	testl	%eax, %eax
	jne	L68
	call	abort
L68:
	call	postdec_glob_ptr
	testl	%eax, %eax
	jne	L69
	call	abort
L69:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	preinc_arg_idx
	testl	%eax, %eax
	jne	L70
	call	abort
L70:
	call	preinc_glob_idx
	testl	%eax, %eax
	jne	L71
	call	abort
L71:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	postinc_arg_idx
	testl	%eax, %eax
	jne	L72
	call	abort
L72:
	call	postinc_glob_idx
	testl	%eax, %eax
	jne	L73
	call	abort
L73:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	predec_arg_idx
	testl	%eax, %eax
	jne	L74
	call	abort
L74:
	call	predec_glob_idx
	testl	%eax, %eax
	jne	L75
	call	abort
L75:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	postdec_arg_idx
	testl	%eax, %eax
	jne	L76
	call	abort
L76:
	call	postdec_glob_idx
	testl	%eax, %eax
	jne	L77
	call	abort
L77:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	funccall_arg_ptr
	testl	%eax, %eax
	jne	L78
	call	abort
L78:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	funccall_arg_idx
	testl	%eax, %eax
	jne	L79
	call	abort
L79:
	movl	$0, %edi
	call	exit
