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
	.comm	a,2048,64
LC0:
	.string	"\001HELLO\001"
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L10
	call	abort
L10:
	movq	$0, -8(%rbp)
	jmp	L11
L13:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	7(%rax), %eax
	testb	%al, %al
	je	L12
	call	abort
L12:
	addq	$1, -8(%rbp)
L11:
	cmpq	$2040, -8(%rbp)
	jbe	L13
	leave
	ret
LC1:
	.string	"HELLO"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2048, %edx
	movl	$0, %esi
	movl	$a, %edi
	call	memset
	movb	$1, a(%rip)
	movl	$6, %edx
	movl	$LC1, %esi
	movl	$a+1, %edi
	call	memcpy
	movb	$1, a+6(%rip)
	movl	$a, %edi
	call	bar
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
