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
	.comm	gi,4,4
	.comm	cond,4,4
never_ever:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	abort
mark_cell:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	cond(%rip), %eax
	testl	%eax, %eax
	jne	L11
	jmp	L10
L11:
	cmpq	$0, -16(%rbp)
	je	L13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	jne	L13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$1, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L13:
	cmpq	$0, -16(%rbp)
	je	L14
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	L14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$2, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L14:
	cmpq	$0, -16(%rbp)
	je	L15
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	L15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$3, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L15:
	cmpq	$0, -16(%rbp)
	je	L16
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	jne	L16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$4, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L16:
	cmpq	$0, -16(%rbp)
	je	L17
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	jne	L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$5, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L17:
	cmpq	$0, -16(%rbp)
	je	L18
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L18
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L18
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	L18
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$6, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L18:
	cmpq	$0, -16(%rbp)
	je	L19
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$7, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L19:
	cmpq	$0, -16(%rbp)
	je	L20
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$8, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L20:
	cmpq	$0, -16(%rbp)
	je	L10
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$4, %rax
	jne	L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	gi(%rip), %edx
	addl	$9, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	never_ever
L10:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
getnull:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, cond(%rip)
	movl	$0, -4(%rbp)
	jmp	L25
L26:
	call	getnull
	movq	%rax, %rsi
	movl	$gi, %edi
	call	foo
	addl	$1, -4(%rbp)
L25:
	cmpl	$99, -4(%rbp)
	jle	L26
	movl	$0, %eax
	leave
	ret
bar_1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
bar_2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_cell
	leave
	ret
