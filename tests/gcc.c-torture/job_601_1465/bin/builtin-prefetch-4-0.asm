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
	jne	L88
	call	abort
L88:
	call	assign_glob_ptr
	testl	%eax, %eax
	jne	L89
	call	abort
L89:
	movq	ptr(%rip), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	assign_arg_idx
	testl	%eax, %eax
	jne	L90
	call	abort
L90:
	call	assign_glob_idx
	testl	%eax, %eax
	jne	L91
	call	abort
L91:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	preinc_arg_ptr
	testl	%eax, %eax
	jne	L92
	call	abort
L92:
	call	preinc_glob_ptr
	testl	%eax, %eax
	jne	L93
	call	abort
L93:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	postinc_arg_ptr
	testl	%eax, %eax
	jne	L94
	call	abort
L94:
	call	postinc_glob_ptr
	testl	%eax, %eax
	jne	L95
	call	abort
L95:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	predec_arg_ptr
	testl	%eax, %eax
	jne	L96
	call	abort
L96:
	call	predec_glob_ptr
	testl	%eax, %eax
	jne	L97
	call	abort
L97:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	postdec_arg_ptr
	testl	%eax, %eax
	jne	L98
	call	abort
L98:
	call	postdec_glob_ptr
	testl	%eax, %eax
	jne	L99
	call	abort
L99:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	preinc_arg_idx
	testl	%eax, %eax
	jne	L100
	call	abort
L100:
	call	preinc_glob_idx
	testl	%eax, %eax
	jne	L101
	call	abort
L101:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	postinc_arg_idx
	testl	%eax, %eax
	jne	L102
	call	abort
L102:
	call	postinc_glob_idx
	testl	%eax, %eax
	jne	L103
	call	abort
L103:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	predec_arg_idx
	testl	%eax, %eax
	jne	L104
	call	abort
L104:
	call	predec_glob_idx
	testl	%eax, %eax
	jne	L105
	call	abort
L105:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	postdec_arg_idx
	testl	%eax, %eax
	jne	L106
	call	abort
L106:
	call	postdec_glob_idx
	testl	%eax, %eax
	jne	L107
	call	abort
L107:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	funccall_arg_ptr
	testl	%eax, %eax
	jne	L108
	call	abort
L108:
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	funccall_arg_idx
	testl	%eax, %eax
	jne	L109
	call	abort
L109:
	movl	$0, %edi
	call	exit
