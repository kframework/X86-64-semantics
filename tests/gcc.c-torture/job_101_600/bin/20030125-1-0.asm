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
t:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vcvtss2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	call	sin
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vcvtsd2ss	%xmm3, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	leave
	ret
q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vcvtss2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	call	floor
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vcvtsd2ss	%xmm3, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	leave
	ret
q1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vcvtss2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	call	floor
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
	.weak	floor
floor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovsd	%xmm0, -8(%rbp)
	call	abort
	.weak	floorf
floorf:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
	.weak	sin
sin:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.weak	sinf
sinf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovss	%xmm0, -4(%rbp)
	call	abort
