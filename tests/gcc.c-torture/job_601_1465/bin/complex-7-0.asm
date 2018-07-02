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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
f1:
	.long	1066192077
	.long	1074580685
f2:
	.long	1079194419
	.long	1082969293
f3:
	.long	1085276160
	.long	1087583027
f4:
	.long	1089889894
	.long	1091357901
f5:
	.long	1092511334
	.long	1092721050
d1:
	.long	2576980378
	.long	1072798105
	.long	2576980378
	.long	1073846681
d2:
	.long	1717986918
	.long	1074423398
	.long	2576980378
	.long	1074895257
d3:
	.long	0
	.long	1075183616
	.long	1717986918
	.long	1075471974
d4:
	.long	3435973837
	.long	1075760332
	.long	2576980378
	.long	1075943833
d5:
	.long	3435973837
	.long	1076088012
	.long	858993459
	.long	1076114227
ld1:
	.long	3435973837
	.long	2362232012
	.long	16383
	.long	0
	.long	3435973837
	.long	2362232012
	.long	16384
	.long	0
ld2:
	.long	858993459
	.long	3543348019
	.long	16384
	.long	0
	.long	3435973837
	.long	2362232012
	.long	16385
	.long	0
ld3:
	.long	0
	.long	2952790016
	.long	16385
	.long	0
	.long	858993459
	.long	3543348019
	.long	16385
	.long	0
ld4:
	.long	1717986918
	.long	4133906022
	.long	16385
	.long	0
	.long	3435973837
	.long	2362232012
	.long	16386
	.long	0
ld5:
	.long	1717986918
	.long	2657511014
	.long	16386
	.long	0
	.long	2576980378
	.long	2711198105
	.long	16386
	.long	0
check_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
	movl	%edi, -52(%rbp)
	vmovq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%edx, -72(%rbp)
	movl	%eax, -68(%rbp)
	vmovq	%xmm1, %rax
	movq	%rax, -80(%rbp)
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	%edx, -88(%rbp)
	movl	%eax, -84(%rbp)
	vmovq	%xmm2, %rax
	movq	%rax, -96(%rbp)
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %eax
	movl	%edx, -104(%rbp)
	movl	%eax, -100(%rbp)
	vmovq	%xmm3, %rax
	movq	%rax, -112(%rbp)
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %eax
	movl	%edx, -120(%rbp)
	movl	%eax, -116(%rbp)
	vmovq	%xmm4, %rax
	movq	%rax, -128(%rbp)
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %eax
	movl	%edx, -136(%rbp)
	movl	%eax, -132(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	f1(%rip), %edx
	movl	f1+4(%rip), %eax
	vmovd	%edx, %xmm5
	vucomiss	-4(%rbp), %xmm5
	setp	%sil
	movl	$1, %ecx
	vmovd	%edx, %xmm6
	vucomiss	-4(%rbp), %xmm6
	cmove	%esi, %ecx
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	setp	%sil
	movl	$1, %edx
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L40
	movl	f2(%rip), %edx
	movl	f2+4(%rip), %eax
	vmovd	%edx, %xmm1
	vucomiss	-12(%rbp), %xmm1
	setp	%sil
	movl	$1, %ecx
	vmovd	%edx, %xmm2
	vucomiss	-12(%rbp), %xmm2
	cmove	%esi, %ecx
	vmovd	%eax, %xmm3
	vucomiss	-16(%rbp), %xmm3
	setp	%sil
	movl	$1, %edx
	vmovd	%eax, %xmm4
	vucomiss	-16(%rbp), %xmm4
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L40
	movl	f3(%rip), %edx
	movl	f3+4(%rip), %eax
	vmovd	%edx, %xmm5
	vucomiss	-20(%rbp), %xmm5
	setp	%sil
	movl	$1, %ecx
	vmovd	%edx, %xmm6
	vucomiss	-20(%rbp), %xmm6
	cmove	%esi, %ecx
	vmovd	%eax, %xmm7
	vucomiss	-24(%rbp), %xmm7
	setp	%sil
	movl	$1, %edx
	vmovd	%eax, %xmm0
	vucomiss	-24(%rbp), %xmm0
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L40
	movl	f4(%rip), %edx
	movl	f4+4(%rip), %eax
	vmovd	%edx, %xmm1
	vucomiss	-28(%rbp), %xmm1
	setp	%sil
	movl	$1, %ecx
	vmovd	%edx, %xmm2
	vucomiss	-28(%rbp), %xmm2
	cmove	%esi, %ecx
	vmovd	%eax, %xmm3
	vucomiss	-32(%rbp), %xmm3
	setp	%sil
	movl	$1, %edx
	vmovd	%eax, %xmm4
	vucomiss	-32(%rbp), %xmm4
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L40
	movl	f5(%rip), %edx
	movl	f5+4(%rip), %eax
	vmovd	%edx, %xmm5
	vucomiss	-36(%rbp), %xmm5
	setp	%sil
	movl	$1, %ecx
	vmovd	%edx, %xmm6
	vucomiss	-36(%rbp), %xmm6
	cmove	%esi, %ecx
	vmovd	%eax, %xmm7
	vucomiss	-40(%rbp), %xmm7
	setp	%sil
	movl	$1, %edx
	vmovd	%eax, %xmm0
	vucomiss	-40(%rbp), %xmm0
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L39
L40:
	call	abort
L39:
	leave
	ret
check_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movl	%edi, -84(%rbp)
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -104(%rbp)
	movq	%rax, -96(%rbp)
	vmovq	%xmm2, %rdx
	vmovq	%xmm3, %rax
	movq	%rdx, -120(%rbp)
	movq	%rax, -112(%rbp)
	vmovq	%xmm4, %rdx
	vmovq	%xmm5, %rax
	movq	%rdx, -136(%rbp)
	movq	%rax, -128(%rbp)
	vmovq	%xmm6, %rdx
	vmovq	%xmm7, %rax
	movq	%rdx, -152(%rbp)
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	d1(%rip), %rdx
	movq	d1+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-8(%rbp), %xmm0
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm1
	vucomisd	-8(%rbp), %xmm1
	cmove	%esi, %ecx
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm3
	vucomisd	-16(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L43
	movq	d2(%rip), %rdx
	movq	d2+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-24(%rbp), %xmm4
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm5
	vucomisd	-24(%rbp), %xmm5
	cmove	%esi, %ecx
	vmovq	%rax, %xmm6
	vucomisd	-32(%rbp), %xmm6
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm7
	vucomisd	-32(%rbp), %xmm7
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L43
	movq	d3(%rip), %rdx
	movq	d3+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-40(%rbp), %xmm0
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm1
	vucomisd	-40(%rbp), %xmm1
	cmove	%esi, %ecx
	vmovq	%rax, %xmm2
	vucomisd	-48(%rbp), %xmm2
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm3
	vucomisd	-48(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L43
	movq	d4(%rip), %rdx
	movq	d4+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-56(%rbp), %xmm4
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm5
	vucomisd	-56(%rbp), %xmm5
	cmove	%esi, %ecx
	vmovq	%rax, %xmm6
	vucomisd	-64(%rbp), %xmm6
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm7
	vucomisd	-64(%rbp), %xmm7
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	je	L43
	movq	d5(%rip), %rdx
	movq	d5+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-72(%rbp), %xmm0
	setp	%sil
	movl	$1, %ecx
	vmovq	%rdx, %xmm1
	vucomisd	-72(%rbp), %xmm1
	cmove	%esi, %ecx
	vmovq	%rax, %xmm2
	vucomisd	-80(%rbp), %xmm2
	setp	%sil
	movl	$1, %edx
	vmovq	%rax, %xmm3
	vucomisd	-80(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L42
L43:
	call	abort
L42:
	leave
	ret
check_long_double:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$200, %rsp
	movl	%edi, -180(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	48(%rbp), %rax
	movl	56(%rbp), %edx
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	64(%rbp), %rax
	movl	72(%rbp), %edx
	movq	%rax, -80(%rbp)
	movl	%edx, -72(%rbp)
	movq	80(%rbp), %rax
	movl	88(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	movq	96(%rbp), %rax
	movl	104(%rbp), %edx
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	movq	112(%rbp), %rax
	movl	120(%rbp), %edx
	movq	%rax, -128(%rbp)
	movl	%edx, -120(%rbp)
	movq	128(%rbp), %rax
	movl	136(%rbp), %edx
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	movq	144(%rbp), %rax
	movl	152(%rbp), %edx
	movq	%rax, -160(%rbp)
	movl	%edx, -152(%rbp)
	movq	160(%rbp), %rax
	movl	168(%rbp), %edx
	movq	%rax, -176(%rbp)
	movl	%edx, -168(%rbp)
	movq	ld1(%rip), %rcx
	movl	ld1+8(%rip), %ebx
	movq	ld1+16(%rip), %rax
	movl	ld1+24(%rip), %edx
	movq	%rcx, -208(%rbp)
	movl	%ebx, -200(%rbp)
	fldt	-208(%rbp)
	movq	%rax, -208(%rbp)
	movl	%edx, -200(%rbp)
	fldt	-208(%rbp)
	fldt	-32(%rbp)
	fucomip	%st(2), %st
	setp	%dl
	fldt	-32(%rbp)
	movl	$1, %eax
	fucomip	%st(2), %st
	fstp	%st(1)
	cmovne	%eax, %edx
	fldt	-48(%rbp)
	fucomip	%st(1), %st
	setp	%cl
	fldt	-48(%rbp)
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	L46
	movq	ld2(%rip), %rcx
	movl	ld2+8(%rip), %ebx
	movq	ld2+16(%rip), %rax
	movl	ld2+24(%rip), %edx
	movq	%rcx, -208(%rbp)
	movl	%ebx, -200(%rbp)
	fldt	-208(%rbp)
	movq	%rax, -208(%rbp)
	movl	%edx, -200(%rbp)
	fldt	-208(%rbp)
	fldt	-64(%rbp)
	fucomip	%st(2), %st
	setp	%dl
	fldt	-64(%rbp)
	movl	$1, %eax
	fucomip	%st(2), %st
	fstp	%st(1)
	cmovne	%eax, %edx
	fldt	-80(%rbp)
	fucomip	%st(1), %st
	setp	%cl
	fldt	-80(%rbp)
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	L46
	movq	ld3(%rip), %rcx
	movl	ld3+8(%rip), %ebx
	movq	ld3+16(%rip), %rax
	movl	ld3+24(%rip), %edx
	movq	%rcx, -208(%rbp)
	movl	%ebx, -200(%rbp)
	fldt	-208(%rbp)
	movq	%rax, -208(%rbp)
	movl	%edx, -200(%rbp)
	fldt	-208(%rbp)
	fldt	-96(%rbp)
	fucomip	%st(2), %st
	setp	%dl
	fldt	-96(%rbp)
	movl	$1, %eax
	fucomip	%st(2), %st
	fstp	%st(1)
	cmovne	%eax, %edx
	fldt	-112(%rbp)
	fucomip	%st(1), %st
	setp	%cl
	fldt	-112(%rbp)
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	L46
	movq	ld4(%rip), %rcx
	movl	ld4+8(%rip), %ebx
	movq	ld4+16(%rip), %rax
	movl	ld4+24(%rip), %edx
	movq	%rcx, -208(%rbp)
	movl	%ebx, -200(%rbp)
	fldt	-208(%rbp)
	movq	%rax, -208(%rbp)
	movl	%edx, -200(%rbp)
	fldt	-208(%rbp)
	fldt	-128(%rbp)
	fucomip	%st(2), %st
	setp	%dl
	fldt	-128(%rbp)
	movl	$1, %eax
	fucomip	%st(2), %st
	fstp	%st(1)
	cmovne	%eax, %edx
	fldt	-144(%rbp)
	fucomip	%st(1), %st
	setp	%cl
	fldt	-144(%rbp)
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	L46
	movq	ld5(%rip), %rcx
	movl	ld5+8(%rip), %ebx
	movq	ld5+16(%rip), %rax
	movl	ld5+24(%rip), %edx
	movq	%rcx, -208(%rbp)
	movl	%ebx, -200(%rbp)
	fldt	-208(%rbp)
	movq	%rax, -208(%rbp)
	movl	%edx, -200(%rbp)
	fldt	-208(%rbp)
	fldt	-160(%rbp)
	fucomip	%st(2), %st
	setp	%dl
	fldt	-160(%rbp)
	movl	$1, %eax
	fucomip	%st(2), %st
	fstp	%st(1)
	cmovne	%eax, %edx
	fldt	-176(%rbp)
	fucomip	%st(1), %st
	setp	%cl
	fldt	-176(%rbp)
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	L45
L46:
	call	abort
L45:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	f5(%rip), %edx
	movl	f5+4(%rip), %eax
	movl	f4(%rip), %ebx
	movl	f4+4(%rip), %r11d
	movl	f3(%rip), %r10d
	movl	f3+4(%rip), %r9d
	movl	f2(%rip), %r8d
	movl	f2+4(%rip), %edi
	movl	f1(%rip), %esi
	movl	f1+4(%rip), %ecx
	movl	%edx, -56(%rbp)
	movl	%eax, -52(%rbp)
	movq	-56(%rbp), %r12
	movl	%ebx, %edx
	movl	%r11d, %eax
	movl	%edx, -64(%rbp)
	movl	%eax, -60(%rbp)
	movq	-64(%rbp), %r11
	movl	%r10d, %edx
	movl	%r9d, %eax
	movl	%edx, -72(%rbp)
	movl	%eax, -68(%rbp)
	movq	-72(%rbp), %r9
	movl	%r8d, %edx
	movl	%edi, %eax
	movl	%edx, -80(%rbp)
	movl	%eax, -76(%rbp)
	movq	-80(%rbp), %rdi
	movl	%esi, %edx
	movl	%ecx, %eax
	movl	%edx, -88(%rbp)
	movl	%eax, -84(%rbp)
	movq	-88(%rbp), %rax
	vmovq	%r12, %xmm4
	vmovq	%r11, %xmm3
	vmovq	%r9, %xmm2
	vmovq	%rdi, %xmm1
	vmovq	%rax, %xmm0
	movl	$0, %edi
	call	check_float
	movq	d5(%rip), %r11
	movq	d5+8(%rip), %rbx
	movq	d4(%rip), %r10
	movq	d4+8(%rip), %r9
	movq	d3(%rip), %r8
	movq	d3+8(%rip), %rdi
	movq	d2(%rip), %rsi
	movq	d2+8(%rip), %rcx
	movq	d1(%rip), %rdx
	movq	d1+8(%rip), %rax
	pushq	%rbx
	pushq	%r11
	vmovq	%r10, %xmm6
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm4
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm2
	vmovq	%rcx, %xmm3
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	movl	$0, %edi
	call	check_double
	addq	$16, %rsp
	movq	ld5(%rip), %r8
	movl	ld5+8(%rip), %r9d
	movq	ld5+16(%rip), %rcx
	movl	ld5+24(%rip), %ebx
	fldt	ld4(%rip)
	fldt	ld4+16(%rip)
	movq	ld3(%rip), %r14
	movl	ld3+8(%rip), %r15d
	fldt	ld3+16(%rip)
	fxch	%st(1)
	movq	ld2(%rip), %r10
	movl	ld2+8(%rip), %r11d
	movq	ld2+16(%rip), %r12
	movl	ld2+24(%rip), %r13d
	movq	ld1(%rip), %rsi
	movl	ld1+8(%rip), %edi
	movq	ld1+16(%rip), %rax
	movl	ld1+24(%rip), %edx
	pushq	%rbx
	pushq	%rcx
	pushq	%r9
	pushq	%r8
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	fxch	%st(1)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	pushq	%rax
	pushq	%rdi
	pushq	%rsi
	movl	$0, %edi
	call	check_long_double
	addq	$160, %rsp
	movl	$0, %edi
	call	exit
