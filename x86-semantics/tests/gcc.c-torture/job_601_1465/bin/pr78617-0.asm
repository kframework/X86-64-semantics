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
	.bss
a:
	.zero	4
d:
	.long	1
f:
	.long	1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L10
	movl	a(%rip), %eax
	movl	$1, %edx
	sarx	%eax, %edx, %eax
	testl	%eax, %eax
	je	L11
L10:
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	L15
	movl	-4(%rbp), %eax
	sarl	%eax
	jmp	L16
L15:
	movl	-4(%rbp), %eax
L16:
	popq	%rbp
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	d(%rip), %eax
	xorl	-4(%rbp), %eax
	popq	%rbp
	ret
fn4:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	d(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movl	$0, %eax
	call	fn1
	subl	$1000, %eax
	movl	%eax, f(%rip)
	movl	f(%rip), %eax
	testl	%eax, %eax
	jne	L21
	cmpl	$0, -16(%rbp)
	je	L22
L21:
	movl	$1, %eax
	jmp	L23
L22:
	movl	$0, %eax
L23:
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	fn2
	cmpl	%eax, %ebx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	fn3
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$0, %edi
	call	fn4
	cmpl	$1, %eax
	je	L26
	call	abort
L26:
	movl	$0, %eax
	popq	%rbp
	ret
