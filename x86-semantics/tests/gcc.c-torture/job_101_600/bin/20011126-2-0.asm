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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
L17:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	jne	L10
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	L11
L12:
	addq	$1, -8(%rbp)
L11:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	L12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	L13
	movq	-8(%rbp), %rax
	jmp	L18
L13:
	jmp	L15
L16:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L15:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	L16
L10:
	jmp	L17
L18:
	popq	%rbp
	ret
LC0:
	.string	"aab"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	test
	movl	$0, %eax
	leave
	ret
