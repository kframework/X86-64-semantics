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
to_kdev_t:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	sall	$22, %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	ret
do_mknod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$360710264, -16(%rbp)
	jne	L12
	movl	$0, %edi
	call	exit
L12:
	call	abort
getname:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$2, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	$3, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	sall	$3, %eax
	addl	$4, %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	leal	5(%rax), %r13d
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	5(%rax), %r12d
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	5(%rax), %r15d
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	5(%rax), %r14d
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	5(%rax), %ebx
	movl	%esi, %eax
	imull	%ecx, %eax
	movl	%eax, %edx
	movl	%edi, %eax
	movl	%r8d, %esi
	imull	%esi, %eax
	leal	(%rdx,%rax), %ecx
	movl	%r15d, %edx
	imull	%r14d, %edx
	movl	%r13d, %eax
	imull	%r12d, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	%ebx, %eax
	movl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
sys_mknod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getname
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	to_kdev_t
	movl	%eax, %edx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	do_mknod
	movl	-12(%rbp), %eax
	leave
	ret
LC0:
	.string	"test"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$305419896, %edx
	movl	$1, %esi
	movl	$LC0, %edi
	call	sys_mknod
	popq	%rbp
	ret
