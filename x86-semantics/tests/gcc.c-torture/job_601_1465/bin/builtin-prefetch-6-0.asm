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
	.comm	bad_addr,520,64
	.comm	arr_used,4,4
init_addrs:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$64, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	movl	$1, %edx
	shlx	%rax, %rdx, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, bad_addr(,%rax,8)
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L11
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, arr_used(%rip)
	popq	%rbp
	ret
prefetch_for_read:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	cltq
	movq	bad_addr(,%rax,8), %rax
	prefetchnta	(%rax)
	addl	$1, -4(%rbp)
L13:
	cmpl	$64, -4(%rbp)
	jle	L14
	popq	%rbp
	ret
prefetch_for_write:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L16
L17:
	movl	-4(%rbp), %eax
	cltq
	movq	bad_addr(,%rax,8), %rax
	prefetchnta	(%rax)
	addl	$1, -4(%rbp)
L16:
	cmpl	$64, -4(%rbp)
	jle	L17
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	init_addrs
	call	prefetch_for_read
	call	prefetch_for_write
	movl	$0, %edi
	call	exit
