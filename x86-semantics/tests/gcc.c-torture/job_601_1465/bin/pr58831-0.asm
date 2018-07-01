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
	.comm	a,4,4
	.comm	b,8,8
	.comm	c,4,4
	.comm	d,4,4
	.comm	f,4,4
	.comm	i,8,8
	.comm	p,4,4
	.comm	q,4,4
	.comm	r,8,8
	.comm	o,2,2
	.comm	j,2,2
LC0:
	.string	"./src/pr58831.c"
LC1:
	.string	"r"
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$b, -8(%rbp)
	jmp	L10
L11:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	p(%rip), %eax
	addl	$1, %eax
	movl	%eax, p(%rip)
L10:
	movl	p(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movq	-32(%rbp), %rax
	movq	$d, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	r(%rip), %rax
	testq	%rax, %rax
	jne	L12
	movl	$__PRETTY_FUNCTION__.2286, %ecx
	movl	$16, %edx
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	__assert_fail
L12:
	movl	c(%rip), %eax
	leave
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, f(%rip)
	jmp	L15
L20:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movw	$0, o(%rip)
	jmp	L16
L19:
	jmp	L17
L18:
	leaq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
L17:
	movl	a(%rip), %eax
	cmpl	$1, %eax
	jg	L18
	movzwl	o(%rip), %eax
	subl	$1, %eax
	movw	%ax, o(%rip)
L16:
	movzwl	o(%rip), %eax
	testw	%ax, %ax
	jne	L19
	movl	f(%rip), %eax
	addl	$1, %eax
	movl	%eax, f(%rip)
L15:
	movl	f(%rip), %eax
	cmpl	$42, %eax
	jne	L20
	movl	$r, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	fn2
	movq	%rax, i(%rip)
	movq	i(%rip), %rdx
	movq	b(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fn1
	movl	$0, %eax
	popq	%rbp
	ret
__PRETTY_FUNCTION__.2286:
	.string	"fn1"
