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
	.comm	save_ret1,48,32
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	dummy
	movq	8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	8(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	dummy
	movq	-8(%rbp), %rax
	leave
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test4a
	leave
	ret
test4a:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test5a
	leave
	ret
test5a:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	dummy
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test6a
	leave
	ret
test6a:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	call	dummy
	movq	-8(%rbp), %rax
	leave
	ret
func1:
	.quad	test1
	.quad	test2
	.quad	test3
	.quad	test4
	.quad	test5
	.quad	test6
call_func1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	func1(,%rax,8), %rax
	call %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, save_ret1(,%rdx,8)
	leave
	ret
	.local	ret_addr
	.comm	ret_addr,8,8
	.comm	save_ret2,48,32
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, ret_addr(%rip)
	nop
	popq	%rbp
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	call	dummy
	movq	8(%rbp), %rax
	movq	%rax, ret_addr(%rip)
	nop
	popq	%rbp
	ret
test9:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rbp), %rax
	movq	%rax, ret_addr(%rip)
	call	dummy
	nop
	popq	%rbp
	ret
test10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test10a
	leave
	ret
test10a:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, ret_addr(%rip)
	nop
	popq	%rbp
	ret
test11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test11a
	leave
	ret
test11a:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	dummy
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, ret_addr(%rip)
	nop
	leave
	ret
test12:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test12a
	leave
	ret
test12a:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, ret_addr(%rip)
	call	dummy
	nop
	leave
	ret
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	ret
func2:
	.quad	test7
	.quad	test8
	.quad	test9
	.quad	test10
	.quad	test11
	.quad	test12
call_func2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	func2(,%rax,8), %rax
	call %rax
	movq	ret_addr(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, save_ret2(,%rax,8)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L77
L78:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	call_func1
	addl	$1, -4(%rbp)
L77:
	cmpl	$5, -4(%rbp)
	jle	L78
	movq	save_ret1(%rip), %rdx
	movq	save_ret1+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L79
	movq	save_ret1+8(%rip), %rdx
	movq	save_ret1+16(%rip), %rax
	cmpq	%rax, %rdx
	je	L80
L79:
	call	abort
L80:
	movq	save_ret1+24(%rip), %rdx
	movq	save_ret1+32(%rip), %rax
	cmpq	%rax, %rdx
	jne	L81
	movq	save_ret1+32(%rip), %rdx
	movq	save_ret1+40(%rip), %rax
	cmpq	%rax, %rdx
	je	L82
L81:
	call	abort
L82:
	movq	save_ret1+24(%rip), %rax
	testq	%rax, %rax
	je	L83
	movq	save_ret1(%rip), %rdx
	movq	save_ret1+24(%rip), %rax
	cmpq	%rax, %rdx
	je	L83
	call	abort
L83:
	movl	$0, -4(%rbp)
	jmp	L84
L85:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	call_func2
	addl	$1, -4(%rbp)
L84:
	cmpl	$5, -4(%rbp)
	jle	L85
	movq	save_ret2(%rip), %rdx
	movq	save_ret2+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L86
	movq	save_ret2+8(%rip), %rdx
	movq	save_ret2+16(%rip), %rax
	cmpq	%rax, %rdx
	je	L87
L86:
	call	abort
L87:
	movq	save_ret2+24(%rip), %rdx
	movq	save_ret2+32(%rip), %rax
	cmpq	%rax, %rdx
	jne	L88
	movq	save_ret2+32(%rip), %rdx
	movq	save_ret2+40(%rip), %rax
	cmpq	%rax, %rdx
	je	L89
L88:
	call	abort
L89:
	movq	save_ret2+24(%rip), %rax
	testq	%rax, %rax
	je	L90
	movq	save_ret2(%rip), %rdx
	movq	save_ret2+24(%rip), %rax
	cmpq	%rax, %rdx
	je	L90
	call	abort
L90:
	movl	$0, %edi
	call	exit
