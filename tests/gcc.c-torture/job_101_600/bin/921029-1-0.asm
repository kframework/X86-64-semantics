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
	.comm	back,8,8
	.comm	hpart,8,8
	.comm	lpart,8,8
build:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, hpart(%rip)
	movq	hpart(%rip), %rax
	salq	$32, %rax
	movq	%rax, hpart(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, lpart(%rip)
	movq	lpart(%rip), %rax
	movl	%eax, %eax
	movq	%rax, lpart(%rip)
	movq	hpart(%rip), %rdx
	movq	lpart(%rip), %rax
	orq	%rdx, %rax
	movq	%rax, back(%rip)
	movq	back(%rip), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	movl	$0, %edi
	call	build
	cmpq	$1, %rax
	je	L12
	call	abort
L12:
	movl	$0, %esi
	movl	$0, %edi
	call	build
	testq	%rax, %rax
	je	L13
	call	abort
L13:
	movl	$4294967295, %esi
	movl	$0, %edi
	call	build
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	je	L14
	call	abort
L14:
	movl	$4294967294, %esi
	movl	$0, %edi
	call	build
	movl	$4294967294, %edx
	cmpq	%rdx, %rax
	je	L15
	call	abort
L15:
	movl	$1, %esi
	movl	$1, %edi
	call	build
	movabsq	$4294967297, %rdx
	cmpq	%rdx, %rax
	je	L16
	call	abort
L16:
	movl	$0, %esi
	movl	$1, %edi
	call	build
	movabsq	$4294967296, %rdx
	cmpq	%rdx, %rax
	je	L17
	call	abort
L17:
	movl	$4294967295, %esi
	movl	$1, %edi
	call	build
	movabsq	$8589934591, %rdx
	cmpq	%rdx, %rax
	je	L18
	call	abort
L18:
	movl	$4294967294, %esi
	movl	$1, %edi
	call	build
	movabsq	$8589934590, %rdx
	cmpq	%rdx, %rax
	je	L19
	call	abort
L19:
	movl	$1, %esi
	movl	$4294967295, %edi
	call	build
	movabsq	$-4294967295, %rdx
	cmpq	%rdx, %rax
	je	L20
	call	abort
L20:
	movl	$0, %esi
	movl	$4294967295, %edi
	call	build
	movabsq	$-4294967296, %rdx
	cmpq	%rdx, %rax
	je	L21
	call	abort
L21:
	movl	$4294967295, %esi
	movl	$4294967295, %edi
	call	build
	cmpq	$-1, %rax
	je	L22
	call	abort
L22:
	movl	$4294967294, %esi
	movl	$4294967295, %edi
	call	build
	cmpq	$-2, %rax
	je	L23
	call	abort
L23:
	movl	$0, %edi
	call	exit
