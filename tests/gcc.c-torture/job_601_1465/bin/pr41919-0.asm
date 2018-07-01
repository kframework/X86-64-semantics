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
g_23:
	.zero	4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$g_23, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L10
	call	abort
L10:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L11
	call	abort
L11:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L12
	call	abort
L12:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L13
	call	abort
L13:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L14
	call	abort
L14:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L15
	call	abort
L15:
	movq	-16(%rbp), %rax
	cmpq	$g_23, %rax
	je	L16
	call	abort
L16:
	movzbl	-17(%rbp), %eax
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	cmpb	$0, -4(%rbp)
	jle	L19
	movzbl	-8(%rbp), %eax
	addl	%eax, %eax
	jmp	L20
L19:
	movzbl	-4(%rbp), %eax
L20:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	foo
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	testb	%al, %al
	je	L23
	movl	$-104, %eax
	jmp	L24
L23:
	movl	$-103, %eax
L24:
	movl	$1, %esi
	movl	%eax, %edi
	call	bar
	cmpb	$-104, %al
	je	L25
	call	abort
L25:
	movl	$0, %eax
	leave
	ret
