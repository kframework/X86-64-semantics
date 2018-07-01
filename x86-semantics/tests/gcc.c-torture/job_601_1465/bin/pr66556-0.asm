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
b:
	.long	8355840
	.byte	6
	.byte	128
	.byte	2
	.zero	1
	.value	0
	.zero	2
g:
	.long	8
	.byte	0
	.byte	128
	.byte	2
	.zero	1
	.value	0
	.zero	2
	.comm	d,2,2
	.comm	l,2,2
	.comm	a,4,4
	.comm	c,4,4
h:
	.long	8
e:
	.byte	4
	.zero	236
f:
	.quad	d
i:
	.value	3
	.zero	8
	.comm	j,1,1
k:
	.quad	c
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	negl	%eax
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	movl	%eax, a(%rip)
	movzbl	e(%rip), %eax
	popq	%rbp
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	k(%rip), %rax
	movl	$4, (%rax)
	movq	f(%rip), %rax
	movzwl	(%rax), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$i+8, -8(%rbp)
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	L15
	movzbl	j(%rip), %eax
	testb	%al, %al
	je	L15
	movl	$1, %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movl	b+4(%rip), %edx
	shrl	$15, %edx
	andl	$7, %edx
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	fn1
	movl	%eax, -12(%rbp)
	movzwl	g+4(%rip), %eax
	andw	$32767, %ax
	movzwl	%ax, %eax
	cmpl	-12(%rbp), %eax
	setb	%al
	movzbl	%al, %eax
	movw	%ax, l(%rip)
	movq	-8(%rbp), %rax
	movw	$3, (%rax)
	movl	b(%rip), %eax
	shrl	$15, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	fn2
	movl	a(%rip), %eax
	movzbl	%al, %eax
	cmpl	$255, %eax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	leave
	ret
