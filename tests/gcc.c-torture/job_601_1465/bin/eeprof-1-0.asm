strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strchr, %edi
	call	__cyg_profile_func_enter
	nop
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	cmpb	%al, %dl
	je	L9
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %r12d
	movl	$0, %ebx
	jmp	L4
L3:
	movq	-24(%rbp), %r12
	movl	$0, %ebx
	jmp	L4
L9:
	movl	$1, %ebx
L4:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strchr, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	jne	L10
	jmp	L1
L10:
	movq	%r12, %rax
L1:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	ret
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strlen, %edi
	call	__cyg_profile_func_enter
	movq	$0, -24(%rbp)
	jmp	L12
L13:
	addq	$1, -24(%rbp)
L12:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L13
	movq	-24(%rbp), %rbx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strlen, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strcpy, %edi
	call	__cyg_profile_func_enter
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
L16:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L16
	movq	-24(%rbp), %rbx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$strcpy, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memcmp, %edi
	call	__cyg_profile_func_enter
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	L19
L22:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L20
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	jmp	L21
L20:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
L19:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	L22
	movl	$0, %ebx
L21:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memcmp, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$exit, %edi
	call	__cyg_profile_func_enter
	movq $-1, %rax
	jmp %rax
	
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$exit, %edi
	call	__cyg_profile_func_exit
	leave
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$abort, %edi
	call	__cyg_profile_func_enter
	movq $-1, %rax
	jmp %rax
	
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$abort, %edi
	call	__cyg_profile_func_exit
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memset, %edi
	call	__cyg_profile_func_enter
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	L27
L28:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
L27:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	L28
	movq	-40(%rbp), %rbx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memset, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memcpy, %edi
	call	__cyg_profile_func_enter
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	L31
L32:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L31:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	L32
	movq	-40(%rbp), %rbx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$memcpy, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$malloc, %edi
	call	__cyg_profile_func_enter
	movl	$1000, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$malloc, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$calloc, %edi
	call	__cyg_profile_func_enter
	movl	$1000, %ebx
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$calloc, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$free, %edi
	call	__cyg_profile_func_enter
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$free, %edi
	call	__cyg_profile_func_exit
	leave
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$isprint, %edi
	call	__cyg_profile_func_enter
	cmpl	$96, -20(%rbp)
	jle	L40
	cmpl	$122, -20(%rbp)
	jg	L40
	movl	$1, %ebx
	jmp	L41
L40:
	cmpl	$64, -20(%rbp)
	jle	L42
	cmpl	$90, -20(%rbp)
	jg	L42
	movl	$1, %ebx
	jmp	L41
L42:
	cmpl	$47, -20(%rbp)
	jle	L43
	cmpl	$57, -20(%rbp)
	jg	L43
	movl	$1, %ebx
	jmp	L41
L43:
	movl	$0, %ebx
L41:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$isprint, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	entry_calls,4,4
	.comm	exit_calls,4,4
	.comm	last_fn_entered,8,8
	.comm	last_fn_exited,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$foo, %edi
	call	__cyg_profile_func_enter
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L46
	call	abort
L46:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$foo, %edi
	call	__cyg_profile_func_exit
	popq	%rbp
	ret
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$foo2, %edi
	call	__cyg_profile_func_enter
	movl	entry_calls(%rip), %eax
	cmpl	$1, %eax
	jne	L48
	movl	exit_calls(%rip), %eax
	testl	%eax, %eax
	je	L49
L48:
	call	abort
L49:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo2, %rax
	je	L50
	call	abort
L50:
	movl	$0, %eax
	call	foo
	movl	entry_calls(%rip), %eax
	cmpl	$2, %eax
	jne	L51
	movl	exit_calls(%rip), %eax
	cmpl	$1, %eax
	je	L52
L51:
	call	abort
L52:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L53
	call	abort
L53:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo, %rax
	je	L54
	call	abort
L54:
	movq	8(%rbp), %rax
	movq	%rax, %rsi
	movl	$foo2, %edi
	call	__cyg_profile_func_exit
	popq	%rbp
	ret
nfoo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	entry_calls(%rip), %eax
	cmpl	$2, %eax
	jne	L56
	movl	exit_calls(%rip), %eax
	cmpl	$2, %eax
	je	L57
L56:
	call	abort
L57:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L58
	call	abort
L58:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo2, %rax
	je	L59
	call	abort
L59:
	movl	$0, %eax
	call	foo
	movl	entry_calls(%rip), %eax
	cmpl	$3, %eax
	jne	L60
	movl	exit_calls(%rip), %eax
	cmpl	$3, %eax
	je	L61
L60:
	call	abort
L61:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L62
	call	abort
L62:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo, %rax
	je	L55
	call	abort
L55:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	entry_calls(%rip), %eax
	testl	%eax, %eax
	jne	L65
	movl	exit_calls(%rip), %eax
	testl	%eax, %eax
	je	L66
L65:
	call	abort
L66:
	movl	$0, %eax
	call	foo2
	movl	entry_calls(%rip), %eax
	cmpl	$2, %eax
	jne	L67
	movl	exit_calls(%rip), %eax
	cmpl	$2, %eax
	je	L68
L67:
	call	abort
L68:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L69
	call	abort
L69:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo2, %rax
	je	L70
	call	abort
L70:
	call	nfoo
	movl	entry_calls(%rip), %eax
	cmpl	$3, %eax
	jne	L71
	movl	exit_calls(%rip), %eax
	cmpl	$3, %eax
	je	L72
L71:
	call	abort
L72:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L73
	call	abort
L73:
	movl	$0, %eax
	popq	%rbp
	ret
__cyg_profile_func_enter:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	entry_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, entry_calls(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_fn_entered(%rip)
	popq	%rbp
	ret
__cyg_profile_func_exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	exit_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, exit_calls(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, last_fn_exited(%rip)
	popq	%rbp
	ret
