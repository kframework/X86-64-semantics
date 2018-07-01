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
	.comm	wm_TR,8,8
	.comm	wm_HB,8,8
	.comm	wm_SPB,8,8
	.comm	mem,800,64
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
L13:
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	L10
	nop
L11:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	L14
	jmp	L15
L10:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jae	L12
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	L12
	subq	$8, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
L12:
	subq	$8, -48(%rbp)
	jmp	L13
L15:
	call	abort
L14:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$mem, %eax
	movq	%rax, mem+792(%rip)
	movl	$mem+792, %r8d
	movl	$mem+792, %ecx
	movl	$mem+64, %edx
	movl	$mem+48, %esi
	movl	$mem+800, %edi
	movl	$0, %eax
	call	f
	movl	$0, %edi
	call	exit
