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
glob_int:
	.long	4
	.comm	glob_vol_int_arr,400,64
glob_vol_ptr_int:
	.quad	glob_int_arr
glob_ptr_vol_int:
	.quad	glob_vol_int_arr
glob_vol_ptr_vol_int:
	.quad	glob_vol_int_arr
	.comm	glob_vol_int,4,4
	.local	stat_int_arr
	.comm	stat_int_arr,400,64
	.local	stat_vol_int_arr
	.comm	stat_vol_int_arr,400,64
stat_vol_ptr_int:
	.quad	stat_int_arr
stat_ptr_vol_int:
	.quad	stat_vol_int_arr
stat_vol_ptr_vol_int:
	.quad	stat_vol_int_arr
	.local	stat_vol_int
	.comm	stat_vol_int,4,4
	.comm	str,24,16
	.comm	vol_str,24,16
vol_ptr_str:
	.quad	str
ptr_vol_str:
	.quad	vol_str
vol_ptr_vol_str:
	.quad	vol_str
simple_vol_global:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	glob_vol_int_arr(%rip)
	movq	glob_vol_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	movq	glob_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	glob_vol_int(%rip)
	popq	%rbp
	ret
simple_vol_file:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	stat_vol_int_arr(%rip)
	movq	stat_vol_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	movq	stat_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	movq	stat_vol_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	stat_vol_int(%rip)
	popq	%rbp
	ret
expr_vol_global:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	vol_str(%rip)
	movq	ptr_vol_str(%rip), %rax
	prefetchnta	(%rax)
	movq	vol_ptr_str(%rip), %rax
	prefetchnta	(%rax)
	movq	vol_ptr_vol_str(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	vol_str+4(%rip)
	movq	ptr_vol_str(%rip), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	movq	vol_ptr_str(%rip), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	movq	vol_ptr_vol_str(%rip), %rax
	addq	$4, %rax
	prefetchnta	(%rax)
	prefetchnta	vol_str+8(%rip)
	movq	vol_ptr_str(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	ptr_vol_str(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	vol_ptr_vol_str(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	vol_str+16(%rip), %rax
	prefetchnta	(%rax)
	movq	vol_ptr_str(%rip), %rax
	movq	16(%rax), %rax
	prefetchnta	(%rax)
	movq	ptr_vol_str(%rip), %rax
	movq	16(%rax), %rax
	prefetchnta	(%rax)
	movq	vol_ptr_vol_str(%rip), %rax
	movq	16(%rax), %rax
	prefetchnta	(%rax)
	movq	vol_str+16(%rip), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	vol_ptr_str(%rip), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	ptr_vol_str(%rip), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	movq	vol_ptr_vol_str(%rip), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	prefetchnta	(%rax)
	prefetchnta	glob_vol_int_arr(%rip)
	movq	glob_vol_ptr_int(%rip), %rax
	prefetchnta	(%rax)
	movq	glob_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_vol_int(%rip), %rax
	prefetchnta	(%rax)
	prefetchnta	glob_vol_int_arr+8(%rip)
	movq	glob_vol_ptr_int(%rip), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	movq	glob_ptr_vol_int(%rip), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_vol_int(%rip), %rax
	addq	$12, %rax
	prefetchnta	(%rax)
	prefetchnta	glob_vol_int_arr+12(%rip)
	movl	glob_vol_int(%rip), %eax
	cltq
	salq	$2, %rax
	addq	$glob_vol_int_arr, %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_int(%rip), %rax
	addq	$20, %rax
	prefetchnta	(%rax)
	movq	glob_ptr_vol_int(%rip), %rax
	addq	$20, %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_vol_int(%rip), %rax
	addq	$20, %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_int(%rip), %rax
	movl	glob_vol_int(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movq	glob_ptr_vol_int(%rip), %rax
	movl	glob_vol_int(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	movq	glob_vol_ptr_vol_int(%rip), %rax
	movl	glob_vol_int(%rip), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	simple_vol_global
	movl	$0, %eax
	call	simple_vol_file
	movq	$str, str+16(%rip)
	movq	$str, vol_str+16(%rip)
	call	expr_vol_global
	movl	$0, %edi
	call	exit
