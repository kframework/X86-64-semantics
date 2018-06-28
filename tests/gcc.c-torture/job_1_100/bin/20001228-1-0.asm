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
foo1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, -16(%rbp)
	movzbl	-16(%rbp), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, -16(%rbp)
	movzbl	-16(%rbp), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	call	foo1
	movl	%eax, %ebx
	call	foo2
	cmpl	%eax, %ebx
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
