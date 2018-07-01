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
fail1:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
fail2:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
fail3:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
fail4:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	$11, %rax
	ja	L14
	movq	L16(,%rax,8), %rax
	jmp	*%rax
L16:
	.quad	L15
	.quad	L14
	.quad	L14
	.quad	L14
	.quad	L14
	.quad	L14
	.quad	L17
	.quad	L28
	.quad	L28
	.quad	L19
	.quad	L19
	.quad	L19
L15:
	call	fail1
	jmp	L20
L17:
	call	fail2
	jmp	L20
L19:
	call	fail3
	jmp	L20
L14:
	call	fail4
	jmp	L20
L28:
	nop
L20:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	cmpq	$11, %rax
	ja	L21
	movq	L23(,%rax,8), %rax
	jmp	*%rax
L23:
	.quad	L22
	.quad	L21
	.quad	L21
	.quad	L24
	.quad	L29
	.quad	L26
	.quad	L29
	.quad	L24
	.quad	L21
	.quad	L21
	.quad	L21
	.quad	L26
L22:
	call	fail1
	jmp	L13
L24:
	call	fail2
	jmp	L13
L26:
	call	abort
L21:
	call	fail4
	nop
	jmp	L13
L29:
	nop
L13:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	foo
	movl	$0, %edi
	call	exit
