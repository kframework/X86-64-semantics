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
LC0:
	.string	"a"
LC1:
	.string	"bc"
LC2:
	.string	"de"
LC3:
	.string	"fgh"
a:
	.quad	LC0
	.quad	LC1
	.quad	LC2
	.quad	LC3
	.zero	96
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	L10
L14:
	movq	-8(%rbp), %rax
	movq	a(,%rax,8), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	a(,%rax,8), %rax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L11
	movl	$2, %eax
	jmp	L12
L11:
	movq	-8(%rbp), %rax
	movq	a(,%rax,8), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	L13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -16(%rbp)
L13:
	addq	$1, -8(%rbp)
L10:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	L14
	movl	$0, %eax
L12:
	leave
	ret
LC4:
	.string	"abcde"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %edx
	movl	$0, %esi
	movl	$LC4, %edi
	call	foo
	testl	%eax, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
