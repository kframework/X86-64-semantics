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
	prefetchnta	gx.2273(%rip)
	movq	hx.2274(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	ix.2275(%rip)
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
	.local	gx.2273
	.comm	gx.2273,400,64
hx.2274:
	.quad	gx.2273
	.local	ix.2275
	.comm	ix.2275,4,4
