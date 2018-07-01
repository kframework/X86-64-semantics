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
	.comm	bytes,5,1
add_unwind_adjustsp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$516, %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L12:
	movq	-16(%rbp), %rax
	andl	$127, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, bytes(%rax)
	shrq	$7, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L11
	movl	-4(%rbp), %eax
	cltq
	movzbl	bytes(%rax), %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, bytes(%rax)
L11:
	addl	$1, -4(%rbp)
L10:
	cmpq	$0, -16(%rbp)
	jne	L12
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4132, %edi
	call	add_unwind_adjustsp
	movzbl	bytes(%rip), %eax
	cmpb	$-120, %al
	jne	L14
	movzbl	bytes+1(%rip), %eax
	cmpb	$7, %al
	je	L15
L14:
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
