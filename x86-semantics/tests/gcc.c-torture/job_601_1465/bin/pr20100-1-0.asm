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
	.local	g
	.comm	g,2,2
	.local	p
	.comm	p,2,2
	.comm	e,1,1
next_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	g(%rip), %eax
	movzwl	%ax, %eax
	movzbl	e(%rip), %edx
	movzbl	%dl, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	L10
	movzwl	g(%rip), %eax
	addl	$1, %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	popq	%rbp
	ret
curr_p:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	p(%rip), %eax
	popq	%rbp
	ret
inc_g:
	pushq	%rbp
	movq	%rsp, %rbp
	call	next_g
	movw	%ax, g(%rip)
	movzwl	g(%rip), %eax
	popq	%rbp
	ret
curr_g:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	g(%rip), %eax
	popq	%rbp
	ret
ring_empty:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	call	curr_p
	movl	%eax, %ebx
	call	curr_g
	cmpw	%ax, %bx
	jne	L20
	movl	$1, %eax
	jmp	L21
L20:
	movl	$0, %eax
L21:
	popq	%rbx
	popq	%rbp
	ret
frob:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	movzwl	-4(%rbp), %eax
	movw	%ax, g(%rip)
	movzwl	-8(%rbp), %eax
	movw	%ax, p(%rip)
	call	inc_g
	call	ring_empty
	leave
	ret
get_n:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$0, -2(%rbp)
	call	curr_g
	movw	%ax, -4(%rbp)
	jmp	L25
L27:
	call	inc_g
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
L25:
	call	ring_empty
	testb	%al, %al
	jne	L26
	cmpw	$4, -2(%rbp)
	jbe	L27
L26:
	movzwl	-2(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$3, e(%rip)
	movl	$2, %esi
	movl	$0, %edi
	call	frob
	testb	%al, %al
	jne	L30
	movzwl	g(%rip), %eax
	cmpw	$1, %ax
	jne	L30
	movzwl	p(%rip), %eax
	cmpw	$2, %ax
	jne	L30
	movzbl	e(%rip), %eax
	cmpb	$3, %al
	jne	L30
	call	get_n
	cmpw	$1, %ax
	jne	L30
	movzwl	g(%rip), %eax
	cmpw	$2, %ax
	jne	L30
	movzwl	p(%rip), %eax
	cmpw	$2, %ax
	je	L31
L30:
	call	abort
L31:
	movl	$0, %edi
	call	exit
