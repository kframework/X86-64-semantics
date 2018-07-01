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
	.comm	global,24,16
vat:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movq	%rdi, -216(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, global(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, global+8(%rip)
	movq	16(%rax), %rax
	movq	%rax, global+16(%rip)
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L11
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L12
L11:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L12:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L13
	call	abort
L13:
	movl	global(%rip), %eax
	cmpl	$48, %eax
	jae	L14
	movq	global+16(%rip), %rdx
	movl	global(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	global(%rip), %edx
	addl	$8, %edx
	movl	%edx, global(%rip)
	jmp	L15
L14:
	movq	global+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, global+8(%rip)
L15:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-216(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-216(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-216(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L18
L17:
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-216(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L18:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L19
	call	abort
L19:
	movq	-216(%rbp), %rax
	movl	$8, (%rax)
	movq	-216(%rbp), %rax
	movl	$48, 4(%rax)
	movq	-216(%rbp), %rax
	leaq	16(%rbp), %rsi
	movq	%rsi, 8(%rax)
	movq	-216(%rbp), %rax
	leaq	-176(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movl	$8, global(%rip)
	movl	$48, global+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, global+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, global+16(%rip)
	leaq	-200(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L20
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L21
L20:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L21:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L22
	call	abort
L22:
	leaq	-200(%rbp), %rax
	movq	global(%rip), %rdx
	movq	%rdx, (%rax)
	movq	global+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	global+16(%rip), %rdx
	movq	%rdx, 16(%rax)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L23
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L24
L23:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L24:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L25
	call	abort
L25:
	movl	global(%rip), %eax
	cmpl	$48, %eax
	jae	L26
	movq	global+16(%rip), %rdx
	movl	global(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	global(%rip), %edx
	addl	$8, %edx
	movl	%edx, global(%rip)
	jmp	L27
L26:
	movq	global+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, global+8(%rip)
L27:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L28
	call	abort
L28:
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L29
	movq	-216(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-216(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-216(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L30
L29:
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-216(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L30:
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	vat
	movl	$0, %edi
	call	exit
