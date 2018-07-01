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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	addl	$1, -4(%rbp)
L10:
	cmpl	$1, -4(%rbp)
	jle	L11
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$1, -4(%rbp)
	jle	L14
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	popq	%rbp
	ret
LC0:
	.string	"IJKL"
	.string	"NOPQR"
LC1:
	.string	"IJKLMNOP"
	.string	"R"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$5786930140093827657, %rax
	movq	%rax, -16(%rbp)
	movw	$21073, -8(%rbp)
	movb	$0, -6(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	leaq	-16(%rbp), %rax
	movl	$11, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L16
	call	abort
L16:
	movb	$77, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	leaq	-16(%rbp), %rax
	movl	$11, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	leave
	ret
