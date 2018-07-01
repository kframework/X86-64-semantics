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
	.comm	a,8,8
b:
	.long	1
	.comm	c,4,4
	.comm	d,16,16
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, c(%rip)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -12(%rbp)
	je	L11
	call	abort
L11:
	movl	$0, %edi
	call	exit
LC0:
	.string	"test"
test:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	d(%rip), %rax
	movl	d+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$200, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	foo
	movq	d(%rip), %rax
	movl	d+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edx
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L13
	movl	$0, %eax
	jmp	L14
L13:
	movl	$65536, %eax
L14:
	movq	-24(%rbp), %rdi
	movl	$201, %r8d
	movl	$LC0, %ecx
	movl	%eax, %esi
	call	bar
	movq	%rax, (%rbx)
	movq	d(%rip), %rax
	movl	d+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	cmpq	$0, -32(%rbp)
	je	L12
	movq	d(%rip), %rax
	movl	d+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, 4(%rax)
L12:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
LC1:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, d+8(%rip)
	movq	$a, d(%rip)
	movl	$0, %esi
	movl	$LC1, %edi
	call	test
	popq	%rbp
	ret
