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
	.comm	a,4,4
do_something:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, a(%rip)
	popq	%rbp
	ret
pack_unpack:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	L11
L18:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movsbl	-25(%rbp), %eax
	cmpl	$108, %eax
	je	L12
	cmpl	$115, %eax
	je	L13
	jmp	L11
L13:
	movl	$2, -4(%rbp)
	jmp	L14
L12:
	movl	$4, -4(%rbp)
	nop
L14:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	L16
	cmpl	$4, %eax
	je	L17
	jmp	L15
L16:
	movq	-56(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -32(%rbp)
	addq	$2, -56(%rbp)
	movzwl	-32(%rbp), %eax
	cwtl
	movl	%eax, %edi
	call	do_something
	jmp	L15
L17:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	addq	$4, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	do_something
	nop
L15:
	nop
L11:
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L18
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leave
	ret
LC0:
	.string	"sl"
LC1:
	.string	"\200\001\377\376\035\300"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	pack_unpack
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L21
	call	abort
L21:
	movl	$0, %eax
	leave
	ret
