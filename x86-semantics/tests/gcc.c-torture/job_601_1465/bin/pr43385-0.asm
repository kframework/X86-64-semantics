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
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	testq	%rax, %rax
	je	L9
	cmpl	$0, -8(%rbp)
	je	L9
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L9:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	testq	%rax, %rax
	je	L12
	cmpl	$0, -8(%rbp)
	je	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$1, %eax
	je	L15
	call	abort
L15:
	movl	-4(%rbp), %eax
	leal	2(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$2, %eax
	je	L17
	call	abort
L17:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$2, %eax
	je	L18
	call	abort
L18:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$2, %eax
	je	L19
	call	abort
L19:
	movl	-4(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	e(%rip), %eax
	cmpl	$2, %eax
	je	L20
	call	abort
L20:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	cmpl	$1, %eax
	je	L21
	call	abort
L21:
	movl	-4(%rbp), %eax
	leal	2(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	bar
	testl	%eax, %eax
	je	L22
	call	abort
L22:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	cmpl	$1, %eax
	je	L23
	call	abort
L23:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	bar
	testl	%eax, %eax
	je	L24
	call	abort
L24:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	testl	%eax, %eax
	je	L25
	call	abort
L25:
	movl	-4(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	testl	%eax, %eax
	je	L26
	call	abort
L26:
	movl	$0, %eax
	leave
	ret
