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
LC0:
	.string	"a1111"
LC1:
	.string	"a1112"
LC2:
	.string	"a1113"
LC3:
	.string	"a1114"
LC4:
	.string	"a1115"
LC5:
	.string	"a1116"
LC6:
	.string	"a1117"
LC7:
	.string	"a1118"
get_addrs:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	$65536, %eax
	addl	%eax, %eax
	cltq
	leaq	LC0(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$4, %rdx
	movl	(%rdx), %edx
	subl	$131072, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC1, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movl	(%rdx), %edx
	subl	$196608, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC2, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rdx
	addq	$12, %rdx
	movl	(%rdx), %edx
	subl	$262144, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC3, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movl	(%rdx), %edx
	subl	$327680, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC4, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rdx
	addq	$20, %rdx
	movl	(%rdx), %edx
	subl	$393216, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC5, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rdx
	addq	$24, %rdx
	movl	(%rdx), %edx
	subl	$458752, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC6, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	-16(%rbp), %rdx
	addq	$28, %rdx
	movl	(%rdx), %edx
	subl	$524288, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$LC7, %rdx
	movq	%rdx, (%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	jmp	L11
L12:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -112(%rbp,%rax,4)
	addl	$1, -4(%rbp)
L11:
	cmpl	$7, -4(%rbp)
	jle	L12
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_addrs
	movl	$0, -4(%rbp)
	jmp	L13
L15:
	movl	-4(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L14
	call	abort
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$7, -4(%rbp)
	jle	L15
	movl	$0, %edi
	call	exit
