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
i:
	.long	150
	.long	100
j:
	.long	10
	.long	13
	.comm	k,8,8
	.comm	res,8,8
verify:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	L10
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	L9
L10:
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r12
	pushq	%rbx
	subq	$131504, %rsp
	movq	i(%rip), %rdx
	movq	j(%rip), %rax
	movq	%rdx, -131160(%rbp)
	movl	-131160(%rbp), %esi
	movq	%rax, -131168(%rbp)
	movl	-131168(%rbp), %ecx
	addl	%esi, %ecx
	movq	%rdx, -131176(%rbp)
	movl	-131172(%rbp), %edx
	movq	%rax, -131184(%rbp)
	movl	-131180(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$113, %ecx
	movl	$160, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rdx
	movq	j(%rip), %rax
	movq	%rdx, -131192(%rbp)
	movl	-131192(%rbp), %esi
	movq	%rax, -131200(%rbp)
	movl	-131200(%rbp), %ecx
	imull	%esi, %ecx
	movq	%rdx, -131208(%rbp)
	movl	-131204(%rbp), %edx
	movq	%rax, -131216(%rbp)
	movl	-131212(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$1300, %ecx
	movl	$1500, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rsi
	movq	j(%rip), %rcx
	movq	%rsi, -131224(%rbp)
	movl	-131224(%rbp), %eax
	movq	%rcx, -131232(%rbp)
	movl	-131232(%rbp), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %edi
	movq	%rsi, -131240(%rbp)
	movl	-131236(%rbp), %eax
	movq	%rcx, -131248(%rbp)
	movl	-131244(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%edi, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$7, %ecx
	movl	$15, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rdx
	movq	j(%rip), %rax
	andq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$4, %ecx
	movl	$2, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rdx
	movq	j(%rip), %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$109, %ecx
	movl	$158, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rdx
	movq	j(%rip), %rax
	xorq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$105, %ecx
	movl	$156, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rax
	movq	%rax, -131256(%rbp)
	movl	-131256(%rbp), %edx
	negl	%edx
	movq	%rax, -131264(%rbp)
	movl	-131260(%rbp), %eax
	negl	%eax
	vmovd	%edx, %xmm7
	vpinsrd	$1, %eax, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$-100, %ecx
	movl	$-150, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movq	i(%rip), %rax
	notq	%rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$-101, %ecx
	movl	$-151, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -131272(%rbp)
	movl	-131272(%rbp), %ecx
	movl	-48(%rbp), %edx
	addl	%edx, %ecx
	movq	%rax, -131280(%rbp)
	movl	-131276(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -131288(%rbp)
	movl	-131288(%rbp), %ecx
	movl	-56(%rbp), %edx
	addl	%edx, %ecx
	movq	%rax, -131296(%rbp)
	movl	-131292(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -131304(%rbp)
	movl	-131304(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	%edx, %ecx
	movq	%rax, -131312(%rbp)
	movl	-131308(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm7
	vpinsrd	$1, %eax, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -131320(%rbp)
	movl	-131320(%rbp), %ecx
	movl	-72(%rbp), %edx
	addl	%edx, %ecx
	movq	%rax, -131328(%rbp)
	movl	-131324(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -131336(%rbp)
	movl	-131336(%rbp), %ecx
	movl	-80(%rbp), %edx
	addl	%edx, %ecx
	movq	%rax, -131344(%rbp)
	movl	-131340(%rbp), %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	vmovd	%ecx, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, k(%rip)
	movq	k(%rip), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$1430, %ecx
	movl	$1675, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -131352(%rbp)
	movl	-131352(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	%edx, %ecx
	movq	%rax, -131360(%rbp)
	movl	-131356(%rbp), %edx
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm7
	vpinsrd	$1, %eax, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -131368(%rbp)
	movl	-131368(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	%edx, %ecx
	movq	%rax, -131376(%rbp)
	movl	-131372(%rbp), %edx
	movl	-52(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -131384(%rbp)
	movl	-131384(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	%edx, %ecx
	movq	%rax, -131392(%rbp)
	movl	-131388(%rbp), %edx
	movl	-60(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -131400(%rbp)
	movl	-131400(%rbp), %ecx
	movl	-72(%rbp), %edx
	imull	%edx, %ecx
	movq	%rax, -131408(%rbp)
	movl	-131404(%rbp), %edx
	movl	-68(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -131416(%rbp)
	movl	-131416(%rbp), %ecx
	movl	-80(%rbp), %edx
	imull	%edx, %ecx
	movq	%rax, -131424(%rbp)
	movl	-131420(%rbp), %edx
	movl	-76(%rbp), %eax
	imull	%edx, %eax
	vmovd	%ecx, %xmm7
	vpinsrd	$1, %eax, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, k(%rip)
	movq	k(%rip), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$-1579586240, %ecx
	movl	$1456467968, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movl	-24(%rbp), %eax
	movl	-32(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movl	-28(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, %rcx
	movq	%rcx, -131432(%rbp)
	movl	-131432(%rbp), %eax
	movl	-40(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131440(%rbp)
	movl	-131436(%rbp), %eax
	movl	-36(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, %rcx
	movq	%rcx, -131448(%rbp)
	movl	-131448(%rbp), %eax
	movl	-48(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131456(%rbp)
	movl	-131452(%rbp), %eax
	movl	-44(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, %rcx
	movq	%rcx, -131464(%rbp)
	movl	-131464(%rbp), %eax
	movl	-56(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131472(%rbp)
	movl	-131468(%rbp), %eax
	movl	-52(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm7
	vpinsrd	$1, %eax, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, %rcx
	movq	%rcx, -131480(%rbp)
	movl	-131480(%rbp), %eax
	movl	-64(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131488(%rbp)
	movl	-131484(%rbp), %eax
	movl	-60(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, %rcx
	movq	%rcx, -131496(%rbp)
	movl	-131496(%rbp), %eax
	movl	-72(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131504(%rbp)
	movl	-131500(%rbp), %eax
	movl	-68(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, %rcx
	movq	%rcx, -131512(%rbp)
	movl	-131512(%rbp), %eax
	movl	-80(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	%rcx, -131520(%rbp)
	movl	-131516(%rbp), %eax
	movl	-76(%rbp), %ebx
	cltd
	idivl	%ebx
	vmovd	%esi, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, k(%rip)
	movq	k(%rip), %rax
	movq	%rax, res(%rip)
	movl	res+4(%rip), %r12d
	movl	res(%rip), %ebx
	subq	$131072, %rsp
	movq	%rsp, %rax
	leaq	-131152(%rbp), %rcx
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, %ecx
	movl	$0, %edx
	movl	%r12d, %esi
	movl	%ebx, %edi
	call	verify
	addq	$131072, %rsp
	movl	$0, %edi
	call	exit
