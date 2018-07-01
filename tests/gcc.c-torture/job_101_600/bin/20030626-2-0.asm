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
	.comm	buf,40,32
LC0:
	.string	"string"
LC1:
	.string	"other string"
LC2:
	.string	"%s"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	L10
	movl	$LC0, %eax
	jmp	L11
L10:
	movl	$LC1, %eax
L11:
	movq	%rax, %rdx
	movl	$LC2, %esi
	movl	$buf, %edi
	movl	$0, %eax
	call	sprintf
	movl	%eax, -8(%rbp)
	cmpl	$12, -8(%rbp)
	jne	L12
	cmpl	$1, -4(%rbp)
	je	L13
L12:
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
