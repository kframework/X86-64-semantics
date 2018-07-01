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
do_switch.2264:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$6, -4(%rbp)
	ja	L10
	movl	-4(%rbp), %eax
	movq	L12(,%rax,8), %rax
	jmp	*%rax
L12:
	.quad	L10
	.quad	L11
	.quad	L13
	.quad	L14
	.quad	L15
	.quad	L16
	.quad	L17
L11:
	movl	$L18, %eax
	jmp	L19
L13:
	movl	$L20, %eax
	jmp	L19
L14:
	movl	$L21, %eax
	jmp	L19
L15:
	movl	$L22, %eax
	jmp	L19
L16:
	movl	$L23, %eax
	jmp	L19
L17:
	movl	$L24, %eax
	jmp	L19
L10:
	movl	$L25, %eax
L19:
	popq	%rbp
	ret
try:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	do_switch.2264
	nop
	jmp	*%rax
L18:
	movl	$1, %eax
	jmp	L28
L20:
	movl	$2, %eax
	jmp	L28
L21:
	movl	$3, %eax
	jmp	L28
L22:
	movl	$4, %eax
	jmp	L28
L23:
	movl	$5, %eax
	jmp	L28
L24:
	movl	$6, %eax
	jmp	L28
L25:
	movl	$-1, %eax
L28:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	L30
L32:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	try
	cmpl	-4(%rbp), %eax
	je	L31
	call	abort
L31:
	addl	$1, -4(%rbp)
L30:
	cmpl	$6, -4(%rbp)
	jle	L32
	movl	$0, %edi
	call	exit
