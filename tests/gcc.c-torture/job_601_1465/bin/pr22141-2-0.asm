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
	.comm	u,4,16
c1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	L10
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	$2, %al
	jne	L10
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	cmpb	$3, %al
	jne	L10
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %eax
	cmpb	$4, %al
	je	L11
L10:
	call	abort
L11:
	movq	-8(%rbp), %rax
	movl	$-1431655766, (%rax)
	leave
	ret
c2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	c1
	leave
	ret
c3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	c2
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$1, u(%rip)
	movb	$2, u+1(%rip)
	movb	$3, u+2(%rip)
	movb	$4, u+3(%rip)
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$1, u(%rip)
	movb	$2, u+1(%rip)
	movb	$3, u+2(%rip)
	movb	$4, u+3(%rip)
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$4, u+3(%rip)
	movb	$2, u+1(%rip)
	movb	$1, u(%rip)
	movb	$3, u+2(%rip)
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$1, -16(%rbp)
	movb	$2, -15(%rbp)
	movb	$3, -14(%rbp)
	movb	$4, -13(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	c2
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	movq	-8(%rbp), %rax
	movb	$3, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$4, 3(%rax)
	movq	-8(%rbp), %rax
	movb	$2, 1(%rax)
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$1, -8(%rbp)
	movb	$2, -7(%rbp)
	movb	$3, -6(%rbp)
	movb	$4, -5(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	c3
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movb	$3, 10(%rax)
	movq	-8(%rbp), %rax
	movb	$4, 11(%rax)
	movq	-8(%rbp), %rax
	movb	$2, 9(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	f1
	movl	$u, %edi
	call	c2
	call	f2
	movl	$u, %edi
	call	c1
	call	f3
	movl	$u, %edi
	call	c2
	call	f4
	movl	$u, %edi
	call	f5
	movl	$u, %edi
	call	c2
	call	f6
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f7
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	c3
	movl	$0, %eax
	leave
	ret
