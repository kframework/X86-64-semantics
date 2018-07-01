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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movl	%ecx, -224(%rbp)
	movl	%r8d, -228(%rbp)
	movl	%r9d, -232(%rbp)
	testb	%al, %al
	je	L14
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L14:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L11
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L12
L11:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L12:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$1234, -180(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movl	%ecx, -224(%rbp)
	movl	%r8d, -228(%rbp)
	movl	%r9d, -232(%rbp)
	testb	%al, %al
	je	L20
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L20:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	144(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L17
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L18
L17:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L18:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$1234, -180(%rbp)
	je	L15
	call	abort
L15:
	leave
	ret
test3:
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
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L27
	vmovaps	%xmm7, -16(%rbp)
L27:
	movl	$0, -208(%rbp)
	movl	$160, -204(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L23
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L24
L23:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L24:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L28
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L29
L28:
	call	abort
L29:
	leave
	ret
test4:
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
	movl	$0, -208(%rbp)
	movl	$176, -204(%rbp)
	leaq	112(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L32
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L33
L32:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L33:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L36
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L37
L36:
	call	abort
L37:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	pushq	$1234
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	test1
	addq	$48, %rsp
	subq	$8, %rsp
	pushq	$1234
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	test2
	addq	$144, %rsp
	movabsq	$4653142004841054208, %rcx
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm7
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$8, %eax
	call	test3
	addq	$16, %rsp
	subq	$8, %rsp
	movabsq	$4653142004841054208, %rax
	pushq	%rax
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	movl	$0, %eax
	pushq	%rax
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	subq	$8, %rsp
	movl	$0, %eax
	pushq	%rax
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$8, %eax
	call	test4
	addq	$112, %rsp
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
	.long	1083394048
