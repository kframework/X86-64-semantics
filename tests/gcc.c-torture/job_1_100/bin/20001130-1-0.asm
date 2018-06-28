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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	L12
	movl	-36(%rbp), %eax
	jmp	L15
L12:
	movl	-36(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -36(%rbp)
	call	bar
	movl	%eax, %edi
	call	foo
	movslq	%ebx, %rdx
	movl	%eax, -32(%rbp,%rdx,4)
	cmpl	$1, -36(%rbp)
	je	L14
	call	abort
L14:
	movl	$0, %eax
L15:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
