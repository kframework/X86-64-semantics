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
	je	L14
	call	abort
L14:
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
	jne	L16
	movl	exit_calls(%rip), %eax
	testl	%eax, %eax
	je	L17
L16:
	call	abort
L17:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo2, %rax
	je	L18
	call	abort
L18:
	movl	$0, %eax
	call	foo
	movl	entry_calls(%rip), %eax
	cmpl	$2, %eax
	jne	L19
	movl	exit_calls(%rip), %eax
	cmpl	$1, %eax
	je	L20
L19:
	call	abort
L20:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L21
	call	abort
L21:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo, %rax
	je	L22
	call	abort
L22:
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
	jne	L24
	movl	exit_calls(%rip), %eax
	cmpl	$2, %eax
	je	L25
L24:
	call	abort
L25:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L26
	call	abort
L26:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo2, %rax
	je	L27
	call	abort
L27:
	movl	$0, %eax
	call	foo
	movl	entry_calls(%rip), %eax
	cmpl	$3, %eax
	jne	L28
	movl	exit_calls(%rip), %eax
	cmpl	$3, %eax
	je	L29
L28:
	call	abort
L29:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L30
	call	abort
L30:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo, %rax
	je	L23
	call	abort
L23:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	entry_calls(%rip), %eax
	testl	%eax, %eax
	jne	L33
	movl	exit_calls(%rip), %eax
	testl	%eax, %eax
	je	L34
L33:
	call	abort
L34:
	movl	$0, %eax
	call	foo2
	movl	entry_calls(%rip), %eax
	cmpl	$2, %eax
	jne	L35
	movl	exit_calls(%rip), %eax
	cmpl	$2, %eax
	je	L36
L35:
	call	abort
L36:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L37
	call	abort
L37:
	movq	last_fn_exited(%rip), %rax
	cmpq	$foo2, %rax
	je	L38
	call	abort
L38:
	call	nfoo
	movl	entry_calls(%rip), %eax
	cmpl	$3, %eax
	jne	L39
	movl	exit_calls(%rip), %eax
	cmpl	$3, %eax
	je	L40
L39:
	call	abort
L40:
	movq	last_fn_entered(%rip), %rax
	cmpq	$foo, %rax
	je	L41
	call	abort
L41:
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
