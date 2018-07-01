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
cx:
	.byte	7
sx:
	.value	14
ix:
	.long	21
lx:
	.quad	28
Lx:
	.quad	35
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movzbl	cx(%rip), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	addl	%edx, %eax
	shrw	$8, %ax
	shrb	$2, %al
	movb	%al, -1(%rbp)
	cmpb	$1, -1(%rbp)
	je	L10
	call	abort
L10:
	movzbl	cx(%rip), %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	addl	%edx, %eax
	shrw	$8, %ax
	shrb	$2, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movb	%al, -1(%rbp)
	cmpb	$1, -1(%rbp)
	je	L11
	call	abort
L11:
	movzwl	sx(%rip), %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	shrw	$2, %ax
	movw	%ax, -4(%rbp)
	cmpw	$2, -4(%rbp)
	je	L12
	call	abort
L12:
	movzwl	sx(%rip), %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	shrw	$2, %ax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movw	%ax, -4(%rbp)
	cmpw	$2, -4(%rbp)
	je	L13
	call	abort
L13:
	movl	ix(%rip), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, -8(%rbp)
	cmpl	$3, -8(%rbp)
	je	L14
	call	abort
L14:
	movl	ix(%rip), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%rbp)
	cmpl	$3, -8(%rbp)
	je	L15
	call	abort
L15:
	movq	lx(%rip), %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -16(%rbp)
	cmpq	$4, -16(%rbp)
	je	L16
	call	abort
L16:
	movq	lx(%rip), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$4, -16(%rbp)
	je	L17
	call	abort
L17:
	movq	Lx(%rip), %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$5, -24(%rbp)
	je	L18
	call	abort
L18:
	movq	Lx(%rip), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
	cmpq	$5, -24(%rbp)
	je	L19
	call	abort
L19:
	movl	$0, %edi
	call	exit
