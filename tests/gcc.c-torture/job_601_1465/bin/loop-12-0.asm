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
	.comm	p,8,8
is_end_of_statement:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	p(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	L10
	movq	p(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	L10
	movq	p(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	L11
L10:
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L15
L16:
	movq	p(%rip), %rax
	addq	$1, %rax
	movq	%rax, p(%rip)
L15:
	call	is_end_of_statement
	testl	%eax, %eax
	je	L16
	popq	%rbp
	ret
LC0:
	.string	"abc\n"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$LC0, p(%rip)
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
