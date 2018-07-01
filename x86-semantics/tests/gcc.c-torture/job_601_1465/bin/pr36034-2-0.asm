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
x:
	.long	0
	.long	1076101120
	.long	0
	.long	1076232192
	.long	0
	.long	1076363264
	.long	0
	.long	1076494336
	.long	0
	.long	1076625408
	.long	0
	.long	1076756480
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	1077215232
	.long	0
	.long	1077280768
	.long	0
	.long	1077346304
	.long	0
	.long	1077411840
	.long	0
	.long	1077477376
	.long	0
	.long	1077542912
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	1077936128
	.long	0
	.long	1077968896
	.long	0
	.long	1078001664
	.long	0
	.long	1078034432
	.long	0
	.long	1078067200
	.long	0
	.long	1078099968
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	1078296576
	.long	0
	.long	1078329344
	.long	0
	.long	1078362112
	.long	0
	.long	1078394880
	.long	0
	.long	1078427648
	.long	0
	.long	1078460416
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	1078657024
	.long	0
	.long	1078689792
	.long	0
	.long	1078722560
	.long	0
	.long	1078755328
	.long	0
	.long	1078788096
	.long	0
	.long	1078820864
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.comm	tmp,240,64
test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$1, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	2(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$2, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	3(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$3, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	4(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$4, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	5(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$5, %eax
	cltq
	movq	x(,%rax,8), %rax
	movslq	%ecx, %rdx
	movq	%rax, tmp(,%rdx,8)
	addl	$1, -4(%rbp)
L10:
	cmpl	$4, -4(%rbp)
	jle	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	test
	movl	$0, -4(%rbp)
	jmp	L13
L18:
	movl	$0, -8(%rbp)
	jmp	L14
L17:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	tmp(,%rax,8), %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L15
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L15
	call	abort
L15:
	addl	$1, -8(%rbp)
L14:
	cmpl	$5, -8(%rbp)
	jle	L17
	addl	$1, -4(%rbp)
L13:
	cmpl	$4, -4(%rbp)
	jle	L18
	movl	$0, %eax
	leave
	ret
