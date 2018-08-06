.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movabsq	$4607182418800017408, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	fldl	-40(%rbp)
	fstpt	-16(%rbp)
	movabsq	$4607182418800017408, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm3
	vmovsd	%xmm3, -40(%rbp)
	fldl	-40(%rbp)
	fldt	-16(%rbp)
	fucomip	%st(1), %st
	setnp	%al
	fldt	-16(%rbp)
	movl	$0, %edx
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovne	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jne	L2
	movl	$0, %eax
	jmp	L4
L2:
	call	abort
L4:
	leave
	ret
