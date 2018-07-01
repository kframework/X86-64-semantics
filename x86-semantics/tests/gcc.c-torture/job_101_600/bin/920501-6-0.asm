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
str2llu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -8(%rbp)
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	L10
	jmp	L14
L10:
	subl	$48, -12(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	L12
L14:
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
sqrtllu:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L16:
	addq	$1, -16(%rbp)
	shrq	-8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L16
	movq	-16(%rbp), %rax
	shrq	%rax
	movl	$1, %edx
	shlx	%rax, %rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L17
	movq	-8(%rbp), %rax
	shrq	%rax
	addq	%rax, -8(%rbp)
L17:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	L17
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
plist:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L20
L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sqrtllu
	movq	%rax, -32(%rbp)
	movq	$3, -16(%rbp)
	jmp	L21
L24:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L22
	jmp	L23
L22:
	addq	$2, -16(%rbp)
L21:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L24
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
L23:
	addq	$2, -8(%rbp)
L20:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	L25
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	leave
	ret
LC0:
	.string	"1234111127"
LC1:
	.string	"1234111111"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$112, %rsp
	movl	%edi, -108(%rbp)
	movq	%rsi, -120(%rbp)
	movl	$LC0, %edi
	movl	$0, %eax
	call	str2llu
	movq	%rax, %rbx
	movl	$LC1, %edi
	movl	$0, %eax
	call	str2llu
	leaq	-104(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	plist
	movl	%eax, -12(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$1234111117, %rax
	jne	L28
	movq	-96(%rbp), %rax
	cmpq	$1234111121, %rax
	jne	L28
	movq	-88(%rbp), %rax
	cmpq	$1234111127, %rax
	jne	L28
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	L29
L28:
	call	abort
L29:
	movl	$0, %edi
	call	exit
