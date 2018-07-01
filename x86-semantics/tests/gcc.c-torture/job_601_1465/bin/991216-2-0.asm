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
test:
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
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$2, -180(%rbp)
	jmp	L11
L15:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L12
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L13
L12:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L13:
	movl	(%rax), %eax
	cmpl	-180(%rbp), %eax
	je	L14
	call	abort
L14:
	addl	$1, -180(%rbp)
L11:
	movl	-180(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jle	L15
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L16
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L17
L16:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L17:
	movq	(%rax), %rdx
	movabsq	$81985529216486895, %rax
	cmpq	%rax, %rdx
	je	L18
	call	abort
L18:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L19
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L20
L19:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L20:
	movl	(%rax), %eax
	cmpl	$85, %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$85, %edx
	movabsq	$81985529216486895, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	test
	movl	$85, %ecx
	movabsq	$81985529216486895, %rdx
	movl	$2, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test
	movl	$85, %r8d
	movabsq	$81985529216486895, %rcx
	movl	$3, %edx
	movl	$2, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test
	movl	$85, %r9d
	movabsq	$81985529216486895, %r8
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	test
	subq	$8, %rsp
	pushq	$85
	movabsq	$81985529216486895, %r9
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	test
	addq	$16, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	test
	addq	$16, %rsp
	subq	$8, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	test
	addq	$32, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	pushq	$8
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	test
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
