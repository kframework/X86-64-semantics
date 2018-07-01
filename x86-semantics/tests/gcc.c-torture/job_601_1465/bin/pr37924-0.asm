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
	.comm	a,1,1
	.comm	b,1,1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, -4(%rbp)
	movzbl	a(%rip), %eax
	movsbl	%al, %eax
	xorl	-4(%rbp), %eax
	shrl	$9, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, -4(%rbp)
	movzbl	b(%rip), %eax
	movzbl	%al, %eax
	xorl	-4(%rbp), %eax
	shrl	$9, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, a(%rip)
	call	test1
	cmpl	$8388607, %eax
	je	L14
	call	abort
L14:
	movb	$64, a(%rip)
	call	test1
	cmpl	$8388607, %eax
	je	L15
	call	abort
L15:
	movb	$-128, a(%rip)
	call	test1
	movzbl	a(%rip), %edx
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	jne	L16
	call	abort
L16:
	movb	$-1, a(%rip)
	call	test1
	movzbl	a(%rip), %edx
	shrb	$7, %dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	jne	L17
	call	abort
L17:
	movb	$0, b(%rip)
	call	test2
	cmpl	$8388607, %eax
	je	L18
	call	abort
L18:
	movb	$64, b(%rip)
	call	test2
	cmpl	$8388607, %eax
	je	L19
	call	abort
L19:
	movb	$-128, b(%rip)
	call	test2
	cmpl	$8388607, %eax
	je	L20
	call	abort
L20:
	movb	$-1, b(%rip)
	call	test2
	cmpl	$8388607, %eax
	je	L21
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
