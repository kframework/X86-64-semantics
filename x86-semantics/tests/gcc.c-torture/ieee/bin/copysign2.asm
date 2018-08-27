	.file	"copysign2.c"
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
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L15
.L17:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L17
.L16:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.size	strcmp, .-strcmp
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
	jmp	.L20
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L22
.L21:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L20:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
.L22:
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
	nop
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
	nop
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
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L27:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L28
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
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L31:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L32
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
	nop
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
	jle	.L40
	cmpl	$122, -4(%rbp)
	jg	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	cmpl	$64, -4(%rbp)
	jle	.L42
	cmpl	$90, -4(%rbp)
	jg	.L42
	movl	$1, %eax
	jmp	.L41
.L42:
	cmpl	$47, -4(%rbp)
	jle	.L43
	cmpl	$57, -4(%rbp)
	jg	.L43
	movl	$1, %eax
	jmp	.L41
.L43:
	movl	$0, %eax
.L41:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.data
	.align 32
	.type	Yf, @object
	.size	Yf, 32
Yf:
	.long	1073741824
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	1073741824
	.long	2147483648
	.long	2139095040
	.section	.rodata
	.align 32
	.type	Zf, @object
	.size	Zf, 32
Zf:
	.long	1065353216
	.long	3212836864
	.long	3212836864
	.long	2147483648
	.long	2147483648
	.long	0
	.long	4286578688
	.long	2143289344
	.text
	.globl	testf
	.type	testf, @function
testf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vmovss	Yf(%rip), %xmm2
	vmovss	.LC0(%rip), %xmm0
	vmovss	.LC1(%rip), %xmm1
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm0, -48(%rbp)
	vmovss	Yf+4(%rip), %xmm2
	vmovss	.LC0(%rip), %xmm0
	vmovss	.LC1(%rip), %xmm1
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm0, -44(%rbp)
	vmovss	Yf+8(%rip), %xmm2
	vmovss	.LC0(%rip), %xmm0
	vmovss	.LC1(%rip), %xmm1
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm0, -40(%rbp)
	vmovss	Yf+12(%rip), %xmm1
	vmovss	.LC1(%rip), %xmm0
	vandps	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm0, -36(%rbp)
	vmovss	Yf+16(%rip), %xmm1
	vmovss	.LC1(%rip), %xmm0
	vandps	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm0, -32(%rbp)
	vmovss	Yf+20(%rip), %xmm1
	vmovss	.LC1(%rip), %xmm0
	vandps	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm0, -28(%rbp)
	vmovss	Yf+24(%rip), %xmm2
	vmovss	.LC2(%rip), %xmm0
	vmovss	.LC1(%rip), %xmm1
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm0, -24(%rbp)
	vmovss	Yf+28(%rip), %xmm2
	vmovss	.LC3(%rip), %xmm0
	vmovss	.LC1(%rip), %xmm1
	vandps	%xmm1, %xmm2, %xmm2
	vorps	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm0, -20(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L45
.L47:
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	Zf(%rax), %rcx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L46
	call	abort
.L46:
	addl	$1, -52(%rbp)
.L45:
	cmpl	$7, -52(%rbp)
	jle	.L47
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L48
	call	__stack_chk_fail
.L48:
	leave
	ret
	.size	testf, .-testf
	.data
	.align 32
	.type	Y, @object
	.size	Y, 64
Y:
	.long	0
	.long	1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	1073741824
	.long	0
	.long	-2147483648
	.long	0
	.long	2146435072
	.section	.rodata
	.align 32
	.type	Z, @object
	.size	Z, 64
Z:
	.long	0
	.long	1072693248
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-1048576
	.long	0
	.long	2146959360
	.text
	.globl	test
	.type	test, @function
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vmovsd	Y(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	vmovsd	Y+8(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	Y+16(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -64(%rbp)
	vmovsd	Y+24(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	Y+32(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	Y+40(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	Y+48(%rip), %xmm2
	vmovsd	.LC6(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	Y+56(%rip), %xmm2
	vmovsd	.LC7(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L50
.L52:
	movl	-84(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	Z(%rax), %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L51
	call	abort
.L51:
	addl	$1, -84(%rbp)
.L50:
	cmpl	$7, -84(%rbp)
	jle	.L52
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail
.L53:
	leave
	ret
	.size	test, .-test
	.data
	.align 32
	.type	Yl, @object
	.size	Yl, 64
Yl:
	.long	0
	.long	1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
	.long	0
	.long	1073741824
	.long	0
	.long	-2147483648
	.long	0
	.long	2146435072
	.section	.rodata
	.align 32
	.type	Zl, @object
	.size	Zl, 64
Zl:
	.long	0
	.long	1072693248
	.long	0
	.long	-1074790400
	.long	0
	.long	-1074790400
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-1048576
	.long	0
	.long	2146959360
	.text
	.globl	testl
	.type	testl, @function
testl:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vmovsd	Yl(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	vmovsd	Yl+8(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	Yl+16(%rip), %xmm2
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -64(%rbp)
	vmovsd	Yl+24(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	Yl+32(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	Yl+40(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm0
	vandpd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	Yl+48(%rip), %xmm2
	vmovsd	.LC6(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	Yl+56(%rip), %xmm2
	vmovsd	.LC7(%rip), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vandpd	%xmm1, %xmm2, %xmm2
	vorpd	%xmm0, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L55
.L57:
	movl	-84(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	Zl(%rax), %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L56
	call	abort
.L56:
	addl	$1, -84(%rbp)
.L55:
	cmpl	$7, -84(%rbp)
	jle	.L57
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L58
	call	__stack_chk_fail
.L58:
	leave
	ret
	.size	testl, .-testl
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	call	testf
	call	test
	call	testl
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC2:
	.long	2139095040
	.long	0
	.long	0
	.long	0
	.align 16
.LC3:
	.long	2143289344
	.long	0
	.long	0
	.long	0
	.align 16
.LC4:
	.long	0
	.long	1072693248
	.long	0
	.long	0
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC6:
	.long	0
	.long	2146435072
	.long	0
	.long	0
	.align 16
.LC7:
	.long	0
	.long	2146959360
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
