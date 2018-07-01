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
debug:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movl	%ecx, -224(%rbp)
	movl	%r8d, -228(%rbp)
	movl	%r9d, -232(%rbp)
	vmovsd	%xmm0, -240(%rbp)
	vmovsd	%xmm1, -248(%rbp)
	vmovsd	%xmm2, -256(%rbp)
	vmovsd	%xmm3, -264(%rbp)
	vmovsd	%xmm4, -272(%rbp)
	vmovsd	%xmm5, -280(%rbp)
	vmovsd	%xmm6, -288(%rbp)
	vmovsd	%xmm7, -296(%rbp)
	testb	%al, %al
	movl	$48, -200(%rbp)
	movl	$176, -196(%rbp)
	leaq	32(%rbp), %rax
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
	cmpl	$8, %eax
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
	cmpl	$9, %eax
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
	cmpl	$10, %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movabsq	$4620693217682128896, %r9
	movabsq	$4619567317775286272, %r8
	movabsq	$4618441417868443648, %rdi
	movabsq	$4617315517961601024, %rsi
	movabsq	$4616189618054758400, %rcx
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	pushq	$10
	pushq	$9
	pushq	$8
	movabsq	$4621256167635550208, %r10
	pushq	%r10
	pushq	$7
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm1
	vmovsd	LC8(%rip), %xmm0
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	movl	$8, %eax
	call	debug
	addq	$48, %rsp
	movl	$0, %edi
	call	exit
LC8:
	.long	0
	.long	1072693248
