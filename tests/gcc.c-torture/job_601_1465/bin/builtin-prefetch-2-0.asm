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
	.comm	glob_int_arr,400,64
glob_ptr_int:
	.quad	glob_int_arr
glob_int:
	.long	4
	.local	stat_int_arr
	.comm	stat_int_arr,400,64
stat_ptr_int:
	.quad	stat_int_arr
	.local	stat_int
	.comm	stat_int,4,4
	.comm	str,24,16
ptr_str:
	.quad	str
simple_global:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	glob_int_arr(%rip)
	movq	glob_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	glob_int(%rip)
	popq	%rbp
	ret
simple_file:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	stat_int_arr(%rip)
	movq	stat_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	stat_int(%rip)
	popq	%rbp
	ret
simple_static_local:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	gx.2333(%rip)
	movq	hx.2334(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	ix.2335(%rip)
	popq	%rbp
	ret
simple_local:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$312, %rsp
	leaq	-416(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-416(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	leaq	-420(%rbp), %rax
	prefetchnta	(%rax)
	leave
	ret
simple_arg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	prefetchnta	(%rax)
	leaq	-20(%rbp), %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
expr_global:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	str(%rip)
	movq	ptr_str(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	str+4(%rip)
	movq	ptr_str(%rip), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	prefetchnta	str+8(%rip)
	movq	ptr_str(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	str+16(%rip), %rax
	prefetchnta	(%rax)
	movq	ptr_str(%rip), %rax
	movq	16(%rax), %rax
	prefetchnta	(%rax)
	movq	str+16(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	ptr_str(%rip), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	prefetchnta	glob_int_arr(%rip)
	movq	glob_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	glob_int_arr+8(%rip)
	movq	glob_ptr_int(%rip), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	prefetchnta	glob_int_arr+12(%rip)
	movl	glob_int(%rip), %eax
	cltq
	salq	$2, %rax
	addq	$glob_int_arr, %rax
	prefetchnta	(%rax)
	movq	glob_ptr_int(%rip), %rax
	addq	$20, %rax
	prefetchnta	(%rax)
	movq	glob_ptr_int(%rip), %rax
	movl	glob_int(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
expr_local:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$4, -20(%rbp)
	leaq	-96(%rbp), %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	prefetchnta	(%rax)
	leaq	-96(%rbp), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	leaq	-96(%rbp), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	-80(%rbp), %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	prefetchnta	(%rax)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	leaq	-64(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	leaq	-64(%rbp), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-64(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	addq	$20, %rax
	prefetchnta	(%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	simple_global
	movl	$0, %eax
	call	simple_file
	movl	$0, %eax
	call	simple_static_local
	movl	$0, %eax
	call	simple_local
	movl	glob_int(%rip), %edx
	movq	glob_ptr_int(%rip), %rax
	movq	%rax, %rsi
	movl	$glob_int_arr, %edi
	call	simple_arg
	movq	$str, str+16(%rip)
	call	expr_global
	call	expr_local
	movl	$0, %edi
	call	exit
	.local	gx.2333
	.comm	gx.2333,400,64
hx.2334:
	.quad	gx.2333
	.local	ix.2335
	.comm	ix.2335,4,4
