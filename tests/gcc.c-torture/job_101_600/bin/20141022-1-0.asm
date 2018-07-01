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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$-5, %eax
	movl	%eax, -4(%rbp)
	cmpl	$6, -20(%rbp)
	jne	L10
	movl	$0, %eax
	jmp	L11
L10:
	movl	$15, %eax
L11:
	movl	%eax, -8(%rbp)
	cmpl	$1, -4(%rbp)
	je	L12
	movl	-8(%rbp), %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
LC0:
	.string	"assert."
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	f
	cmpl	$15, %eax
	je	L16
	movl	$LC0, %edi
	call	puts
	call	abort
L16:
	movl	$1, %edi
	call	f
	testl	%eax, %eax
	je	L17
	movl	$LC0, %edi
	call	puts
	call	abort
L17:
	movl	$6, %edi
	call	f
	testl	%eax, %eax
	je	L18
	movl	$LC0, %edi
	call	puts
	call	abort
L18:
	movl	$5, %edi
	call	f
	testl	%eax, %eax
	je	L19
	movl	$LC0, %edi
	call	puts
	call	abort
L19:
	movl	$15, %edi
	call	f
	cmpl	$15, %eax
	je	L20
	movl	$LC0, %edi
	call	puts
	call	abort
L20:
	movl	$0, %eax
	popq	%rbp
	ret
