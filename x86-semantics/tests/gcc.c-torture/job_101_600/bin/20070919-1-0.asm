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
	.string	"zyxwvut"
LC1:
	.string	"abcdefg"
LC2:
	.string	"ABCDEFG"
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L10
	call	abort
L10:
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L11
	call	abort
L11:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$8, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movl	$8, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	$8, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L9
	call	abort
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rsp, %rcx
	movq	%rcx, -120(%rbp)
	movl	-108(%rbp), %ebx
	movslq	%ebx, %rcx
	movq	%rcx, -144(%rbp)
	movq	$0, -136(%rbp)
	movslq	%ebx, %rcx
	subq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movslq	%ebx, %rcx
	movq	%rcx, %r14
	movl	$0, %r15d
	movslq	%ebx, %rcx
	movq	%rcx, %r12
	movl	$0, %r13d
	movslq	%ebx, %r12
	movq	-104(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movslq	%ebx, %rcx
	movq	%rcx, %rax
	movl	$0, %edx
	movslq	%ebx, %rax
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movslq	%ebx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%ebx, %rax
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	%rsp, %rax
	movq	%rax, %r13
	movslq	%ebx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movslq	%ebx, %rax
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movslq	%ebx, %rax
	leaq	(%rax,%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	%r13, %rsp
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bar
	movq	-120(%rbp), %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movabsq	$29104508263162465, %rax
	movq	%rax, -32(%rbp)
	movabsq	$20061986658402881, %rax
	movq	%rax, -24(%rbp)
	movabsq	$32780248969410938, %rax
	movq	%rax, -16(%rbp)
	movabsq	$23737727364651354, %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	foo
	movl	$0, %eax
	leave
	ret
