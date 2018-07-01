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
	.comm	global,4,4
bad0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
bad1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
bad2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
bad3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
bad4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
bad5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bad2
	popq	%rbp
	ret
bad6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
bad7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
bad8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
bad9:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
bad10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
good0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
good1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
good2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
opt0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bad3
	popq	%rbp
	ret
opt1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bad6
	popq	%rbp
	ret
opt2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
bad_t0:
	.quad	bad0
	.quad	bad1
	.quad	bad5
	.quad	bad7
	.quad	bad8
	.quad	bad10
bad_t1:
	.quad	bad2
	.quad	bad3
	.quad	bad6
bad_t2:
	.quad	bad4
	.quad	bad9
good_t0:
	.quad	good0
	.quad	good1
	.quad	good2
opt_t0:
	.quad	opt0
	.quad	opt1
	.quad	opt2
LC0:
	.string	"hi"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L44
L46:
	movl	-4(%rbp), %eax
	cltq
	movq	bad_t0(,%rax,8), %rax
	call	*%rax
	testl	%eax, %eax
	je	L45
	call	abort
L45:
	addl	$1, -4(%rbp)
L44:
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jbe	L46
	movl	$0, -4(%rbp)
	jmp	L47
L49:
	movl	-4(%rbp), %eax
	cltq
	movq	bad_t1(,%rax,8), %rax
	movl	$1, %edi
	call	*%rax
	testl	%eax, %eax
	je	L48
	call	abort
L48:
	addl	$1, -4(%rbp)
L47:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	jbe	L49
	movl	$0, -4(%rbp)
	jmp	L50
L52:
	movl	-4(%rbp), %eax
	cltq
	movq	bad_t2(,%rax,8), %rax
	movl	$LC0, %edi
	call	*%rax
	testl	%eax, %eax
	je	L51
	call	abort
L51:
	addl	$1, -4(%rbp)
L50:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jbe	L52
	movl	$0, -4(%rbp)
	jmp	L53
L55:
	movl	-4(%rbp), %eax
	cltq
	movq	good_t0(,%rax,8), %rax
	call	*%rax
	testl	%eax, %eax
	jne	L54
	call	abort
L54:
	addl	$1, -4(%rbp)
L53:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	jbe	L55
	movl	$0, %edi
	call	exit
