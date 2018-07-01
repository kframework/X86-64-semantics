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
	.comm	a_con,56,32
vc_cons:
	.quad	a_con
	.zero	496
	.comm	default_red,64,64
	.comm	default_grn,64,64
	.comm	default_blu,64,64
reset_palette:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L10
L11:
	movl	-20(%rbp), %eax
	cltq
	movq	vc_cons(,%rax,8), %rdx
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	default_red(,%rcx,4), %ecx
	cltq
	movb	%cl, 8(%rdx,%rax)
	movl	-20(%rbp), %eax
	cltq
	movq	vc_cons(,%rax,8), %rdx
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	default_grn(,%rcx,4), %ecx
	cltq
	movb	%cl, 8(%rdx,%rax)
	movl	-20(%rbp), %eax
	cltq
	movq	vc_cons(,%rax,8), %rdx
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	default_blu(,%rcx,4), %ecx
	cltq
	movb	%cl, 8(%rdx,%rax)
	addl	$1, -4(%rbp)
L10:
	cmpl	$15, -4(%rbp)
	jle	L11
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$48, -4(%rbp)
	je	L12
	call	abort
L12:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	reset_palette
	movl	$0, %edi
	call	exit
