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
in_aton:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$168496141, %eax
	popq	%rbp
	ret
root_nfs_parse_addr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	L12
L20:
	jmp	L13
L15:
	addq	$1, -24(%rbp)
L13:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	L14
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	L15
L14:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L16
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$3, %rax
	jg	L16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	L17
	cmpl	$3, -12(%rbp)
	jne	L18
L17:
	addl	$1, -12(%rbp)
L18:
	cmpl	$3, -12(%rbp)
	jg	L19
	addq	$1, -24(%rbp)
L19:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
L12:
	cmpl	$3, -12(%rbp)
	jle	L20
L16:
	cmpl	$4, -12(%rbp)
	jne	L21
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	L22
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L21
L22:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	L23
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L23:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	in_aton
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	jmp	L24
L21:
	movq	$-1, -8(%rbp)
L24:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$addr.2442, %edi
	call	root_nfs_parse_addr
	movq	%rax, -8(%rbp)
	cmpq	$168496141, -8(%rbp)
	je	L27
	call	abort
L27:
	movl	$0, %eax
	leave
	ret
addr.2442:
	.string	"10.11.12.13:/hello"
