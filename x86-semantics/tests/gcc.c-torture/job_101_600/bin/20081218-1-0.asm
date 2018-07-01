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
	.comm	a,520,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$520, %edx
	movl	$38, %esi
	movl	$a, %edi
	call	memset
	movl	a(%rip), %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$520, %edx
	movl	$54, %esi
	movl	$a, %edi
	call	memset
	movl	$909522486, a(%rip)
	movl	$909588022, a+4(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	foo
	cmpl	$640034342, %eax
	je	L13
	call	abort
L13:
	movl	$0, -4(%rbp)
	jmp	L14
L16:
	movl	-4(%rbp), %eax
	cltq
	addq	$a, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	L15
	call	abort
L15:
	addl	$1, -4(%rbp)
L14:
	movl	-4(%rbp), %eax
	cmpl	$519, %eax
	jbe	L16
	call	bar
	movl	a+4(%rip), %eax
	cmpl	$909588022, %eax
	je	L17
	call	abort
L17:
	movl	$909522486, a+4(%rip)
	movl	$0, -4(%rbp)
	jmp	L18
L20:
	movl	-4(%rbp), %eax
	cltq
	addq	$a, %rax
	movzbl	(%rax), %eax
	cmpb	$54, %al
	je	L19
	call	abort
L19:
	addl	$1, -4(%rbp)
L18:
	movl	-4(%rbp), %eax
	cmpl	$519, %eax
	jbe	L20
	movl	$0, %eax
	leave
	ret
