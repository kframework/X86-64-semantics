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
	.comm	buf,65,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$2, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$64, %edx
	movl	%eax, %esi
	movl	$buf, %edi
	call	memset
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$2, buf+64(%rip)
	movl	$0, -4(%rbp)
	jmp	L11
L13:
	movl	-4(%rbp), %eax
	cltq
	movzbl	buf(%rax), %eax
	testb	%al, %al
	je	L12
	call	abort
L12:
	addl	$1, -4(%rbp)
L11:
	cmpl	$63, -4(%rbp)
	jle	L13
	movl	$0, %edi
	call	foo
	movl	$0, -4(%rbp)
	jmp	L14
L16:
	movl	-4(%rbp), %eax
	cltq
	movzbl	buf(%rax), %eax
	cmpb	$1, %al
	je	L15
	call	abort
L15:
	addl	$1, -4(%rbp)
L14:
	cmpl	$63, -4(%rbp)
	jle	L16
	movl	$2, %edi
	call	foo
	movl	$0, -4(%rbp)
	jmp	L17
L19:
	movl	-4(%rbp), %eax
	cltq
	movzbl	buf(%rax), %eax
	testb	%al, %al
	je	L18
	call	abort
L18:
	addl	$1, -4(%rbp)
L17:
	cmpl	$63, -4(%rbp)
	jle	L19
	movzbl	buf+64(%rip), %eax
	cmpb	$2, %al
	je	L20
	call	abort
L20:
	movl	$0, %eax
	leave
	ret
