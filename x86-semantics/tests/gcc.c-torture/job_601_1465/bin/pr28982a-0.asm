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
	.comm	ptrs,160,64
	.comm	results,80,64
	.comm	incs,80,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -404(%rbp)
	movl	incs(%rip), %eax
	movl	%eax, -320(%rbp)
	movl	incs+4(%rip), %eax
	movl	%eax, -324(%rbp)
	movl	incs+8(%rip), %eax
	movl	%eax, -328(%rbp)
	movl	incs+12(%rip), %eax
	movl	%eax, -332(%rbp)
	movl	incs+16(%rip), %eax
	movl	%eax, -336(%rbp)
	movl	incs+20(%rip), %eax
	movl	%eax, -340(%rbp)
	movl	incs+24(%rip), %eax
	movl	%eax, -344(%rbp)
	movl	incs+28(%rip), %eax
	movl	%eax, -348(%rbp)
	movl	incs+32(%rip), %eax
	movl	%eax, -352(%rbp)
	movl	incs+36(%rip), %eax
	movl	%eax, -356(%rbp)
	movl	incs+40(%rip), %eax
	movl	%eax, -360(%rbp)
	movl	incs+44(%rip), %eax
	movl	%eax, -364(%rbp)
	movl	incs+48(%rip), %eax
	movl	%eax, -368(%rbp)
	movl	incs+52(%rip), %eax
	movl	%eax, -372(%rbp)
	movl	incs+56(%rip), %eax
	movl	%eax, -376(%rbp)
	movl	incs+60(%rip), %eax
	movl	%eax, -380(%rbp)
	movl	incs+64(%rip), %eax
	movl	%eax, -384(%rbp)
	movl	incs+68(%rip), %eax
	movl	%eax, -388(%rbp)
	movl	incs+72(%rip), %eax
	movl	%eax, -392(%rbp)
	movl	incs+76(%rip), %eax
	movl	%eax, -396(%rbp)
	movq	ptrs(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	ptrs+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	ptrs+16(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -44(%rbp)
	movq	ptrs+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -60(%rbp)
	movq	ptrs+32(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -76(%rbp)
	movq	ptrs+40(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -92(%rbp)
	movq	ptrs+48(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -108(%rbp)
	movq	ptrs+56(%rip), %rax
	movq	%rax, -120(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -124(%rbp)
	movq	ptrs+64(%rip), %rax
	movq	%rax, -136(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -140(%rbp)
	movq	ptrs+72(%rip), %rax
	movq	%rax, -152(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -156(%rbp)
	movq	ptrs+80(%rip), %rax
	movq	%rax, -168(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -172(%rbp)
	movq	ptrs+88(%rip), %rax
	movq	%rax, -184(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -188(%rbp)
	movq	ptrs+96(%rip), %rax
	movq	%rax, -200(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -204(%rbp)
	movq	ptrs+104(%rip), %rax
	movq	%rax, -216(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -220(%rbp)
	movq	ptrs+112(%rip), %rax
	movq	%rax, -232(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -236(%rbp)
	movq	ptrs+120(%rip), %rax
	movq	%rax, -248(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -252(%rbp)
	movq	ptrs+128(%rip), %rax
	movq	%rax, -264(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -268(%rbp)
	movq	ptrs+136(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -284(%rbp)
	movq	ptrs+144(%rip), %rax
	movq	%rax, -296(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -300(%rbp)
	movq	ptrs+152(%rip), %rax
	movq	%rax, -312(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -316(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm2
	vaddss	%xmm2, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-320(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	-28(%rbp), %edx
	vmovd	%edx, %xmm4
	vmovd	%eax, %xmm5
	vaddss	%xmm5, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -28(%rbp)
	movl	-324(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	vmovd	%edx, %xmm7
	vmovd	%eax, %xmm0
	vaddss	%xmm0, %xmm7, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -44(%rbp)
	movl	-328(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-60(%rbp), %edx
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vaddss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -60(%rbp)
	movl	-332(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	-76(%rbp), %edx
	vmovd	%edx, %xmm5
	vmovd	%eax, %xmm6
	vaddss	%xmm6, %xmm5, %xmm4
	vmovd	%xmm4, %eax
	movl	%eax, -76(%rbp)
	movl	-336(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	-92(%rbp), %edx
	vmovd	%edx, %xmm0
	vmovd	%eax, %xmm1
	vaddss	%xmm1, %xmm0, %xmm7
	vmovd	%xmm7, %eax
	movl	%eax, -92(%rbp)
	movl	-340(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	-108(%rbp), %edx
	vmovd	%edx, %xmm3
	vmovd	%eax, %xmm4
	vaddss	%xmm4, %xmm3, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -108(%rbp)
	movl	-344(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	-124(%rbp), %edx
	vmovd	%edx, %xmm6
	vmovd	%eax, %xmm7
	vaddss	%xmm7, %xmm6, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, -124(%rbp)
	movl	-348(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	-140(%rbp), %edx
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm2
	vaddss	%xmm2, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movl	-352(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	movl	-156(%rbp), %edx
	vmovd	%edx, %xmm4
	vmovd	%eax, %xmm5
	vaddss	%xmm5, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -156(%rbp)
	movl	-356(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movl	(%rax), %eax
	movl	-172(%rbp), %edx
	vmovd	%edx, %xmm7
	vmovd	%eax, %xmm0
	vaddss	%xmm0, %xmm7, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -172(%rbp)
	movl	-360(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -168(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	-188(%rbp), %edx
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vaddss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -188(%rbp)
	movl	-364(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -184(%rbp)
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	movl	-204(%rbp), %edx
	vmovd	%edx, %xmm5
	vmovd	%eax, %xmm6
	vaddss	%xmm6, %xmm5, %xmm4
	vmovd	%xmm4, %eax
	movl	%eax, -204(%rbp)
	movl	-368(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -200(%rbp)
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	-220(%rbp), %edx
	vmovd	%edx, %xmm0
	vmovd	%eax, %xmm1
	vaddss	%xmm1, %xmm0, %xmm7
	vmovd	%xmm7, %eax
	movl	%eax, -220(%rbp)
	movl	-372(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -216(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	movl	-236(%rbp), %edx
	vmovd	%edx, %xmm3
	vmovd	%eax, %xmm4
	vaddss	%xmm4, %xmm3, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -236(%rbp)
	movl	-376(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -232(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	-252(%rbp), %edx
	vmovd	%edx, %xmm6
	vmovd	%eax, %xmm7
	vaddss	%xmm7, %xmm6, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, -252(%rbp)
	movl	-380(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -248(%rbp)
	movq	-264(%rbp), %rax
	movl	(%rax), %eax
	movl	-268(%rbp), %edx
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm2
	vaddss	%xmm2, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	movl	%eax, -268(%rbp)
	movl	-384(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -264(%rbp)
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	movl	-284(%rbp), %edx
	vmovd	%edx, %xmm4
	vmovd	%eax, %xmm5
	vaddss	%xmm5, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -284(%rbp)
	movl	-388(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -280(%rbp)
	movq	-296(%rbp), %rax
	movl	(%rax), %eax
	movl	-300(%rbp), %edx
	vmovd	%edx, %xmm7
	vmovd	%eax, %xmm0
	vaddss	%xmm0, %xmm7, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -300(%rbp)
	movl	-392(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -296(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %eax
	movl	-316(%rbp), %edx
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vaddss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -316(%rbp)
	movl	-396(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -312(%rbp)
L10:
	movl	-404(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -404(%rbp)
	testl	%eax, %eax
	jne	L11
	movl	-12(%rbp), %eax
	movl	%eax, results(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, results+4(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, results+8(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, results+12(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, results+16(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, results+20(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, results+24(%rip)
	movl	-124(%rbp), %eax
	movl	%eax, results+28(%rip)
	movl	-140(%rbp), %eax
	movl	%eax, results+32(%rip)
	movl	-156(%rbp), %eax
	movl	%eax, results+36(%rip)
	movl	-172(%rbp), %eax
	movl	%eax, results+40(%rip)
	movl	-188(%rbp), %eax
	movl	%eax, results+44(%rip)
	movl	-204(%rbp), %eax
	movl	%eax, results+48(%rip)
	movl	-220(%rbp), %eax
	movl	%eax, results+52(%rip)
	movl	-236(%rbp), %eax
	movl	%eax, results+56(%rip)
	movl	-252(%rbp), %eax
	movl	%eax, results+60(%rip)
	movl	-268(%rbp), %eax
	movl	%eax, results+64(%rip)
	movl	-284(%rbp), %eax
	movl	%eax, results+68(%rip)
	movl	-300(%rbp), %eax
	movl	%eax, results+72(%rip)
	movl	-316(%rbp), %eax
	movl	%eax, results+76(%rip)
	leave
	ret
	.comm	input,320,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	input(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, ptrs(,%rax,8)
	movl	-4(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movl	%edx, incs(,%rax,4)
	addl	$1, -4(%rbp)
L13:
	cmpl	$19, -4(%rbp)
	jle	L14
	movl	$0, -4(%rbp)
	jmp	L15
L16:
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vmovd	%xmm1, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, input(,%rdx,4)
	addl	$1, -4(%rbp)
L15:
	cmpl	$79, -4(%rbp)
	jle	L16
	movl	$4, %edi
	call	foo
	movl	$0, -4(%rbp)
	jmp	L17
L21:
	movl	-4(%rbp), %eax
	cltq
	movl	results(,%rax,4), %edx
	movl	-4(%rbp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovd	%edx, %xmm2
	vucomiss	%xmm0, %xmm2
	jp	L22
	vmovd	%edx, %xmm3
	vucomiss	%xmm0, %xmm3
	je	L23
L22:
	movl	$1, %eax
	jmp	L20
L23:
	addl	$1, -4(%rbp)
L17:
	cmpl	$19, -4(%rbp)
	jle	L21
	movl	$0, %eax
L20:
	leave
	ret
LC0:
	.long	0
