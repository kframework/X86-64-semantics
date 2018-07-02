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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
	.comm	Local1,8,8
	.comm	Local2,8,8
	.comm	Local3,8,8
	.comm	RDbf1,8,8
	.comm	RDbf2,8,8
	.comm	RDbf3,8,8
	.comm	IntVc1,8,8
	.comm	IntVc2,8,8
	.comm	IntCode3,8,8
	.comm	IntCode4,8,8
	.comm	IntCode5,8,8
	.comm	IntCode6,8,8
	.comm	Lom1,8,8
	.comm	Lom2,8,8
	.comm	Lom3,8,8
	.comm	Lom4,8,8
	.comm	Lom5,8,8
	.comm	Lom6,8,8
	.comm	Lom7,8,8
	.comm	Lom8,8,8
	.comm	Lom9,8,8
	.comm	Lom10,8,8
	.comm	RDbf11,8,8
	.comm	RDbf12,8,8
	.comm	Workspace,88,64
setStatPointers:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$5, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, Local1(%rip)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, Local2(%rip)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, Local3(%rip)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, RDbf1(%rip)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, RDbf2(%rip)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, RDbf3(%rip)
	movq	RDbf3(%rip), %rax
	movq	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$304, %rax
	movq	%rax, IntVc1(%rip)
	movq	-24(%rbp), %rax
	addq	$312, %rax
	movq	%rax, IntVc2(%rip)
	movq	-24(%rbp), %rax
	addq	$320, %rax
	movq	%rax, IntCode3(%rip)
	movq	-24(%rbp), %rax
	addq	$328, %rax
	movq	%rax, IntCode4(%rip)
	movq	-24(%rbp), %rax
	addq	$336, %rax
	movq	%rax, IntCode5(%rip)
	movq	-24(%rbp), %rax
	addq	$344, %rax
	movq	%rax, IntCode6(%rip)
	movq	$Workspace, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	leaq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	leaq	392(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	leaq	400(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	leaq	408(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
	leaq	416(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	leaq	424(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	leaq	432(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	addq	$208, %rax
	movq	%rax, Lom1(%rip)
	movq	-24(%rbp), %rax
	addq	$216, %rax
	movq	%rax, Lom2(%rip)
	movq	-24(%rbp), %rax
	addq	$224, %rax
	movq	%rax, Lom3(%rip)
	movq	-24(%rbp), %rax
	addq	$232, %rax
	movq	%rax, Lom4(%rip)
	movq	-24(%rbp), %rax
	addq	$240, %rax
	movq	%rax, Lom5(%rip)
	movq	-24(%rbp), %rax
	addq	$248, %rax
	movq	%rax, Lom6(%rip)
	movq	-24(%rbp), %rax
	addq	$256, %rax
	movq	%rax, Lom7(%rip)
	movq	-24(%rbp), %rax
	addq	$264, %rax
	movq	%rax, Lom8(%rip)
	movq	-24(%rbp), %rax
	addq	$272, %rax
	movq	%rax, Lom9(%rip)
	movq	-24(%rbp), %rax
	addq	$280, %rax
	movq	%rax, Lom10(%rip)
	movq	-24(%rbp), %rax
	addq	$288, %rax
	movq	%rax, RDbf11(%rip)
	movq	-24(%rbp), %rax
	addq	$296, %rax
	movq	%rax, RDbf12(%rip)
	popq	%rbp
	ret
	.comm	MyPte,776,64
initPte:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$MyPte, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setStatPointers
	leave
	ret
InitCache:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$0, %edi
	call	initPte
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$5, %edi
	call	InitCache
	movl	$0, %eax
	leave
	ret
