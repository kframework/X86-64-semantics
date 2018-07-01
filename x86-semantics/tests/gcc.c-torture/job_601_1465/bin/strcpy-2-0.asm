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
a:
	.string	"Hi!THE"
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1411475784, (%rax)
	movw	$17736, 4(%rax)
	movb	$0, 6(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -16(%rbp)
	movw	$0, -12(%rbp)
	movb	$0, -10(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f
	movl	$0, -4(%rbp)
	jmp	L11
L13:
	movl	-4(%rbp), %eax
	cltq
	movzbl	a(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	cmpb	%al, %dl
	je	L12
	call	abort
L12:
	addl	$1, -4(%rbp)
L11:
	movl	-4(%rbp), %eax
	cmpl	$6, %eax
	jbe	L13
	movl	$0, %eax
	leave
	ret
