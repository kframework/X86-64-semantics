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
f:
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
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
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
	cmpl	$10, %eax
	je	L13
	call	abort
L13:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L14
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L15
L14:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L15:
	movq	(%rax), %rdx
	movabsq	$10000000000, %rax
	cmpq	%rax, %rdx
	je	L16
	call	abort
L16:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L18
L17:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L18:
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	L19
	call	abort
L19:
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	fldt	(%rax)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	jp	L42
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L40
	jmp	L38
L42:
	fstp	%st(0)
L38:
	call	abort
L40:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L23
L22:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L23:
	movl	(%rax), %eax
	cmpl	$12, %eax
	je	L24
	call	abort
L24:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L25
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L26
L25:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L26:
	movl	(%rax), %eax
	cmpl	$13, %eax
	je	L27
	call	abort
L27:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L28
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L29
L28:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L29:
	movq	(%rax), %rdx
	movabsq	$20000000000, %rax
	cmpq	%rax, %rdx
	je	L30
	call	abort
L30:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L31
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L32
L31:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L32:
	movl	(%rax), %eax
	cmpl	$14, %eax
	je	L33
	call	abort
L33:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L34
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L35
L34:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L35:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC1(%rip), %xmm0
	jp	L39
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	je	L41
L39:
	call	abort
L41:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4613307314293241283, %rcx
	pushq	$14
	pushq	$-1474836480
	movl	$4, 4(%rsp)
	movabsq	$-3966049975847553597, %rax
	movl	$16384, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$13, %r9d
	movl	$12, %r8d
	movl	$11, %ecx
	movabsq	$10000000000, %rdx
	movl	$10, %esi
	movl	$4, %edi
	movl	$1, %eax
	call	f
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	1546188227
	.long	3371549327
	.long	16384
	.long	0
LC1:
	.long	1546188227
	.long	1074119311
