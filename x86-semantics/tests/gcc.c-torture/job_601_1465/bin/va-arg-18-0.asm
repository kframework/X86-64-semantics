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
	subq	$272, %rsp
	vmovsd	%xmm0, -216(%rbp)
	vmovsd	%xmm1, -224(%rbp)
	vmovsd	%xmm2, -232(%rbp)
	vmovsd	%xmm3, -240(%rbp)
	vmovsd	%xmm4, -248(%rbp)
	vmovsd	%xmm5, -256(%rbp)
	vmovsd	%xmm6, -264(%rbp)
	vmovsd	%xmm7, -272(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	movl	$0, -200(%rbp)
	movl	$176, -196(%rbp)
	leaq	24(%rbp), %rax
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
	movl	(%rax), %eax
	cmpl	$11, %eax
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
	cmpl	$12, %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	subq	$8, %rsp
	movabsq	$4620693217682128896, %rbx
	movabsq	$4619567317775286272, %r11
	movabsq	$4618441417868443648, %r10
	movabsq	$4617315517961601024, %r9
	movabsq	$4616189618054758400, %r8
	movabsq	$4613937818241073152, %rcx
	movabsq	$4611686018427387904, %rax
	movabsq	$4621256167635550208, %rdx
	pushq	%rdx
	movl	$12, %edx
	movl	$11, %esi
	movl	$10, %edi
	vmovq	%rbx, %xmm7
	vmovq	%r11, %xmm6
	vmovq	%r10, %xmm5
	vmovq	%r9, %xmm4
	vmovq	%r8, %xmm3
	vmovq	%rcx, %xmm2
	vmovq	%rax, %xmm1
	vmovsd	LC8(%rip), %xmm0
	movl	$8, %eax
	call	f
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
LC8:
	.long	0
	.long	1072693248
