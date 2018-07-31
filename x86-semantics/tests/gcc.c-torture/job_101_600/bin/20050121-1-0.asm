	.file	"20050121-1.c"
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
	.globl	foo_float
	.type	foo_float, @function
foo_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, -28(%rbp)
	movl	%eax, -24(%rbp)
	movq	-28(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	foo_float, .-foo_float
	.globl	bar_float
	.type	bar_float, @function
bar_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_float
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
	.size	bar_float, .-bar_float
	.globl	baz_float
	.type	baz_float, @function
baz_float:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_float
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
	.size	baz_float, .-baz_float
	.globl	foo_double
	.type	foo_double, @function
foo_double:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sd	%eax, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sd	%eax, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	foo_double, .-foo_double
	.globl	bar_double
	.type	bar_double, @function
bar_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_double
	vmovq	%xmm0, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leave
	ret
	.size	bar_double, .-bar_double
	.globl	baz_double
	.type	baz_double, @function
baz_double:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_double
	vmovq	%xmm1, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leave
	ret
	.size	baz_double, .-baz_double
	.globl	foo_ldouble_t
	.type	foo_ldouble_t, @function
foo_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sd	%eax, %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sd	%eax, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	foo_ldouble_t, .-foo_ldouble_t
	.globl	bar_ldouble_t
	.type	bar_ldouble_t, @function
bar_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_ldouble_t
	vmovq	%xmm0, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leave
	ret
	.size	bar_ldouble_t, .-bar_ldouble_t
	.globl	baz_ldouble_t
	.type	baz_ldouble_t, @function
baz_ldouble_t:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_ldouble_t
	vmovq	%xmm1, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leave
	ret
	.size	baz_ldouble_t, .-baz_ldouble_t
	.globl	foo_char
	.type	foo_char, @function
foo_char:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movb	%al, -4(%rbp)
	movzbl	-3(%rbp), %eax
	movzbl	-4(%rbp), %edx
	movb	%dl, -2(%rbp)
	movb	%al, -1(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movb	%al, -3(%rbp)
	movzbl	-3(%rbp), %eax
	movzbl	-4(%rbp), %edx
	movb	%dl, -2(%rbp)
	movb	%al, -1(%rbp)
	movzbl	-4(%rbp), %edx
	movzbl	-3(%rbp), %eax
	movl	%eax, %ecx
	movzbl	%dl, %edx
	movb	$0, %al
	orl	%edx, %eax
	movb	%cl, %ah
	popq	%rbp
	ret
	.size	foo_char, .-foo_char
	.globl	bar_char
	.type	bar_char, @function
bar_char:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_char
	movl	%eax, %edx
	movzbl	%ah, %eax
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	leave
	ret
	.size	bar_char, .-bar_char
	.globl	baz_char
	.type	baz_char, @function
baz_char:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_char
	movzbl	%ah, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	leave
	ret
	.size	baz_char, .-baz_char
	.globl	foo_short
	.type	foo_short, @function
foo_short:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -8(%rbp)
	movzwl	-6(%rbp), %eax
	movzwl	-8(%rbp), %edx
	movw	%dx, -4(%rbp)
	movw	%ax, -2(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movw	%ax, -6(%rbp)
	movzwl	-6(%rbp), %eax
	movzwl	-8(%rbp), %edx
	movw	%dx, -4(%rbp)
	movw	%ax, -2(%rbp)
	movzwl	-8(%rbp), %edx
	movzwl	-6(%rbp), %eax
	movl	%eax, %ecx
	movzwl	%dx, %edx
	movw	$0, %ax
	orl	%edx, %eax
	movzwl	%cx, %edx
	sall	$16, %edx
	movzwl	%ax, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
	.size	foo_short, .-foo_short
	.globl	bar_short
	.type	bar_short, @function
bar_short:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_short
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	leave
	ret
	.size	bar_short, .-bar_short
	.globl	baz_short
	.type	baz_short, @function
baz_short:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_short
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	leave
	ret
	.size	baz_short, .-baz_short
	.globl	foo_int
	.type	foo_int, @function
foo_int:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %ecx
	movq	%rax, %rsi
	movabsq	$-4294967296, %rax
	andq	%rsi, %rax
	orq	%rcx, %rax
	movl	%edx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	popq	%rbp
	ret
	.size	foo_int, .-foo_int
	.globl	bar_int
	.type	bar_int, @function
bar_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_int
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
	.size	bar_int, .-bar_int
	.globl	baz_int
	.type	baz_int, @function
baz_int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$5, %edi
	call	foo_int
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
	.size	baz_int, .-baz_int
	.globl	foo_long
	.type	foo_long, @function
foo_long:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
	.size	foo_long, .-foo_long
	.globl	bar_long
	.type	bar_long, @function
bar_long:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_long
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	bar_long, .-bar_long
	.globl	baz_long
	.type	baz_long, @function
baz_long:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_long
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	baz_long, .-baz_long
	.globl	foo_llong
	.type	foo_llong, @function
foo_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	popq	%rbp
	ret
	.size	foo_llong, .-foo_llong
	.globl	bar_llong
	.type	bar_llong, @function
bar_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_llong
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	bar_llong, .-bar_llong
	.globl	baz_llong
	.type	baz_llong, @function
baz_llong:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, -16(%rbp)
	movl	$5, %edi
	call	foo_llong
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	baz_llong, .-baz_llong
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_float
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	.LC1(%rip), %xmm0
	jp	.L96
	vmovd	%eax, %xmm1
	vucomiss	.LC1(%rip), %xmm1
	je	.L102
.L96:
	call	abort
.L102:
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_float
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	.LC2(%rip), %xmm2
	jp	.L97
	vmovd	%eax, %xmm3
	vucomiss	.LC2(%rip), %xmm3
	je	.L103
.L97:
	call	abort
.L103:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_double
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC4(%rip), %xmm4
	jp	.L98
	vmovq	%rax, %xmm5
	vucomisd	.LC4(%rip), %xmm5
	je	.L104
.L98:
	call	abort
.L104:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_double
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	.LC5(%rip), %xmm6
	jp	.L99
	vmovq	%rax, %xmm7
	vucomisd	.LC5(%rip), %xmm7
	je	.L105
.L99:
	call	abort
.L105:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_ldouble_t
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	.LC4(%rip), %xmm0
	jp	.L100
	vmovq	%rax, %xmm1
	vucomisd	.LC4(%rip), %xmm1
	je	.L106
.L100:
	call	abort
.L106:
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_ldouble_t
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	.LC5(%rip), %xmm2
	jp	.L101
	vmovq	%rax, %xmm3
	vucomisd	.LC5(%rip), %xmm3
	je	.L107
.L101:
	call	abort
.L107:
	movb	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_char
	movzbl	-16(%rbp), %eax
	cmpb	$6, %al
	je	.L84
	call	abort
.L84:
	movb	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_char
	movzbl	-16(%rbp), %eax
	cmpb	$4, %al
	je	.L85
	call	abort
.L85:
	movw	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_short
	movzwl	-16(%rbp), %eax
	cmpw	$6, %ax
	je	.L86
	call	abort
.L86:
	movw	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_short
	movzwl	-16(%rbp), %eax
	cmpw	$4, %ax
	je	.L87
	call	abort
.L87:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_int
	movl	-16(%rbp), %eax
	cmpl	$6, %eax
	je	.L88
	call	abort
.L88:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_int
	movl	-16(%rbp), %eax
	cmpl	$4, %eax
	je	.L89
	call	abort
.L89:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_long
	movq	-16(%rbp), %rax
	cmpq	$6, %rax
	je	.L90
	call	abort
.L90:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_long
	movq	-16(%rbp), %rax
	cmpq	$4, %rax
	je	.L91
	call	abort
.L91:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar_llong
	movq	-16(%rbp), %rax
	cmpq	$6, %rax
	je	.L92
	call	abort
.L92:
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz_llong
	movq	-16(%rbp), %rax
	cmpq	$4, %rax
	je	.L93
	call	abort
.L93:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L95
	call	__stack_chk_fail
.L95:
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1086324736
	.align 4
.LC2:
	.long	1082130432
	.align 8
.LC4:
	.long	0
	.long	1075314688
	.align 8
.LC5:
	.long	0
	.long	1074790400
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
