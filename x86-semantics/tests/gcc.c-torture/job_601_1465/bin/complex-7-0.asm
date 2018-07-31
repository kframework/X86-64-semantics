	.file	"complex-7.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L35
	cmpl	$122, -4(%rbp)
	jg	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	cmpl	$64, -4(%rbp)
	jle	.L37
	cmpl	$90, -4(%rbp)
	jg	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	cmpl	$47, -4(%rbp)
	jle	.L38
	cmpl	$57, -4(%rbp)
	jg	.L38
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	$0, %eax
.L36:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.globl	f1
	.data
	.align 4
	.type	f1, @object
	.size	f1, 8
f1:
	.long	1066192077
	.long	1074580685
	.globl	f2
	.align 4
	.type	f2, @object
	.size	f2, 8
f2:
	.long	1079194419
	.long	1082969293
	.globl	f3
	.align 4
	.type	f3, @object
	.size	f3, 8
f3:
	.long	1085276160
	.long	1087583027
	.globl	f4
	.align 4
	.type	f4, @object
	.size	f4, 8
f4:
	.long	1089889894
	.long	1091357901
	.globl	f5
	.align 4
	.type	f5, @object
	.size	f5, 8
f5:
	.long	1092511334
	.long	1092721050
	.globl	d1
	.align 8
	.type	d1, @object
	.size	d1, 16
d1:
	.long	2576980378
	.long	1072798105
	.long	2576980378
	.long	1073846681
	.globl	d2
	.align 8
	.type	d2, @object
	.size	d2, 16
d2:
	.long	1717986918
	.long	1074423398
	.long	2576980378
	.long	1074895257
	.globl	d3
	.align 8
	.type	d3, @object
	.size	d3, 16
d3:
	.long	0
	.long	1075183616
	.long	1717986918
	.long	1075471974
	.globl	d4
	.align 8
	.type	d4, @object
	.size	d4, 16
d4:
	.long	3435973837
	.long	1075760332
	.long	2576980378
	.long	1075943833
	.globl	d5
	.align 8
	.type	d5, @object
	.size	d5, 16
d5:
	.long	3435973837
	.long	1076088012
	.long	858993459
	.long	1076114227
	.globl	ld1
	.align 8
	.type	ld1, @object
	.size	ld1, 16
ld1:
	.long	2576980378
	.long	1072798105
	.long	2576980378
	.long	1073846681
	.globl	ld2
	.align 8
	.type	ld2, @object
	.size	ld2, 16
ld2:
	.long	1717986918
	.long	1074423398
	.long	2576980378
	.long	1074895257
	.globl	ld3
	.align 8
	.type	ld3, @object
	.size	ld3, 16
ld3:
	.long	0
	.long	1075183616
	.long	1717986918
	.long	1075471974
	.globl	ld4
	.align 8
	.type	ld4, @object
	.size	ld4, 16
ld4:
	.long	3435973837
	.long	1075760332
	.long	2576980378
	.long	1075943833
	.globl	ld5
	.align 8
	.type	ld5, @object
	.size	ld5, 16
ld5:
	.long	3435973837
	.long	1076088012
	.long	858993459
	.long	1076114227
	.text
	.globl	check_float
	.type	check_float, @function
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
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	f1(%rip), %edx
	movl	f1+4(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	vucomiss	-40(%rbp), %xmm1
	setp	%al
	movl	$1, %edx
	vucomiss	-40(%rbp), %xmm1
	cmove	%eax, %edx
	vucomiss	-36(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	-36(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L40
	movl	f2(%rip), %edx
	movl	f2+4(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	vucomiss	-32(%rbp), %xmm1
	setp	%al
	movl	$1, %edx
	vucomiss	-32(%rbp), %xmm1
	cmove	%eax, %edx
	vucomiss	-28(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	-28(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L40
	movl	f3(%rip), %edx
	movl	f3+4(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	vucomiss	-24(%rbp), %xmm1
	setp	%al
	movl	$1, %edx
	vucomiss	-24(%rbp), %xmm1
	cmove	%eax, %edx
	vucomiss	-20(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	-20(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L40
	movl	f4(%rip), %edx
	movl	f4+4(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	vucomiss	-16(%rbp), %xmm1
	setp	%al
	movl	$1, %edx
	vucomiss	-16(%rbp), %xmm1
	cmove	%eax, %edx
	vucomiss	-12(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	-12(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L40
	movl	f5(%rip), %edx
	movl	f5+4(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm1
	setp	%al
	movl	$1, %edx
	vucomiss	-8(%rbp), %xmm1
	cmove	%eax, %edx
	vucomiss	-4(%rbp), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	-4(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L39
.L40:
	call	abort
.L39:
	leave
	ret
	.size	check_float, .-check_float
	.globl	check_double
	.type	check_double, @function
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
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	d1(%rip), %rdx
	movq	d1+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-80(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-80(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-72(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-72(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L43
	movq	d2(%rip), %rdx
	movq	d2+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-64(%rbp), %xmm4
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm5
	vucomisd	-64(%rbp), %xmm5
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm6
	vucomisd	-56(%rbp), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	-56(%rbp), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L43
	movq	d3(%rip), %rdx
	movq	d3+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-48(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-48(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-40(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-40(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L43
	movq	d4(%rip), %rdx
	movq	d4+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-32(%rbp), %xmm4
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm5
	vucomisd	-32(%rbp), %xmm5
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm6
	vucomisd	-24(%rbp), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	-24(%rbp), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L43
	movq	d5(%rip), %rdx
	movq	d5+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-16(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-16(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-8(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L42
.L43:
	call	abort
.L42:
	leave
	ret
	.size	check_double, .-check_double
	.globl	check_long_double
	.type	check_long_double, @function
check_long_double:
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
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	ld1(%rip), %rdx
	movq	ld1+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-80(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-80(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-72(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-72(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L46
	movq	ld2(%rip), %rdx
	movq	ld2+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-64(%rbp), %xmm4
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm5
	vucomisd	-64(%rbp), %xmm5
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm6
	vucomisd	-56(%rbp), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	-56(%rbp), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L46
	movq	ld3(%rip), %rdx
	movq	ld3+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-48(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-48(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-40(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-40(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L46
	movq	ld4(%rip), %rdx
	movq	ld4+8(%rip), %rax
	vmovq	%rdx, %xmm4
	vucomisd	-32(%rbp), %xmm4
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm5
	vucomisd	-32(%rbp), %xmm5
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm6
	vucomisd	-24(%rbp), %xmm6
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm7
	vucomisd	-24(%rbp), %xmm7
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	je	.L46
	movq	ld5(%rip), %rdx
	movq	ld5+8(%rip), %rax
	vmovq	%rdx, %xmm0
	vucomisd	-16(%rbp), %xmm0
	setp	%cl
	movl	$1, %esi
	vmovq	%rdx, %xmm1
	vucomisd	-16(%rbp), %xmm1
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm3
	vucomisd	-8(%rbp), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L45
.L46:
	call	abort
.L45:
	leave
	ret
	.size	check_long_double, .-check_long_double
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	f5(%rip), %ebx
	movl	f5+4(%rip), %edi
	movl	f4(%rip), %r11d
	movl	f4+4(%rip), %esi
	movl	f3(%rip), %r10d
	movl	f3+4(%rip), %ecx
	movl	f2(%rip), %r9d
	movl	f2+4(%rip), %edx
	movl	f1(%rip), %r8d
	movl	f1+4(%rip), %eax
	movl	%ebx, -16(%rbp)
	movl	%edi, -12(%rbp)
	movq	-16(%rbp), %rdi
	movl	%r11d, -24(%rbp)
	movl	%esi, -20(%rbp)
	movq	-24(%rbp), %rsi
	movl	%r10d, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-32(%rbp), %rcx
	movl	%r9d, -40(%rbp)
	movl	%edx, -36(%rbp)
	movq	-40(%rbp), %rdx
	movl	%r8d, -48(%rbp)
	movl	%eax, -44(%rbp)
	movq	-48(%rbp), %rax
	vmovq	%rdi, %xmm4
	vmovq	%rsi, %xmm3
	vmovq	%rcx, %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$0, %edi
	call	check_float
	movq	d5(%rip), %rax
	movq	d5+8(%rip), %rdx
	movq	d4(%rip), %rbx
	movq	d4+8(%rip), %r11
	movq	d3(%rip), %r10
	movq	d3+8(%rip), %r9
	movq	d2(%rip), %r8
	movq	d2+8(%rip), %rdi
	movq	d1(%rip), %rsi
	movq	d1+8(%rip), %rcx
	pushq	%rdx
	pushq	%rax
	vmovq	%rbx, %xmm6
	vmovq	%r11, %xmm7
	vmovq	%r10, %xmm4
	vmovq	%r9, %xmm5
	vmovq	%r8, %xmm2
	vmovq	%rdi, %xmm3
	vmovq	%rsi, %xmm0
	vmovq	%rcx, %xmm1
	movl	$0, %edi
	call	check_double
	addq	$16, %rsp
	movq	ld5(%rip), %rax
	movq	ld5+8(%rip), %rdx
	movq	ld4(%rip), %rbx
	movq	ld4+8(%rip), %r11
	movq	ld3(%rip), %r10
	movq	ld3+8(%rip), %r9
	movq	ld2(%rip), %r8
	movq	ld2+8(%rip), %rdi
	movq	ld1(%rip), %rsi
	movq	ld1+8(%rip), %rcx
	pushq	%rdx
	pushq	%rax
	vmovq	%rbx, %xmm6
	vmovq	%r11, %xmm7
	vmovq	%r10, %xmm4
	vmovq	%r9, %xmm5
	vmovq	%r8, %xmm2
	vmovq	%rdi, %xmm3
	vmovq	%rsi, %xmm0
	vmovq	%rcx, %xmm1
	movl	$0, %edi
	call	check_long_double
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
