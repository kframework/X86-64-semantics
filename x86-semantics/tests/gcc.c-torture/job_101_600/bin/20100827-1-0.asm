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
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
L13:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L10
	jmp	L15
L10:
	addl	$1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L12
	call	abort
L12:
	addq	$1, -24(%rbp)
	jmp	L13
L15:
	movl	-4(%rbp), %eax
	leave
	ret
LC0:
	.string	"a"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$LC0, %edi
	call	foo
	cmpl	$1, %eax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	popq	%rbp
	ret
