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
buildargv:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
L18:
	jmp	L10
L11:
	addq	$1, -24(%rbp)
L10:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	L11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	jmp	L13
L12:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	movq	-24(%rbp), %rdx
	movq	%rdx, arglist.2988(,%rax,8)
	jmp	L14
L16:
	addq	$1, -24(%rbp)
L14:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	L15
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L16
L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L17
	jmp	L13
L17:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	jmp	L18
L13:
	movl	-4(%rbp), %eax
	cltq
	movq	$0, arglist.2988(,%rax,8)
	movl	$arglist.2988, %eax
	popq	%rbp
	ret
LC0:
	.string	"a"
LC1:
	.string	"b"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	leaq	-272(%rbp), %rax
	movl	$1646289184, (%rax)
	movb	$0, 4(%rax)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	buildargv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L21
	call	abort
L21:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L22
	call	abort
L22:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L23
	call	abort
L23:
	movl	$0, %edi
	call	exit
	.local	arglist.2988
	.comm	arglist.2988,2048,64
