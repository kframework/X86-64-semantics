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
foo1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo1
	leave
	ret
l1:
	.quad	4294967292
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo2
	leave
	ret
l2:
	.quad	65532
foo3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo3
	leave
	ret
l3:
	.quad	252
foo4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo4
	leave
	ret
l4:
	.quad	-4
foo5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo5
	leave
	ret
l5:
	.quad	-4
foo6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
bar6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %edi
	call	foo6
	leave
	ret
l6:
	.quad	-4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-10, %edi
	call	bar1
	movl	%eax, %edx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	je	L34
	call	abort
L34:
	movl	$-10, %edi
	call	bar2
	movzwl	%ax, %edx
	movq	l2(%rip), %rax
	cmpq	%rax, %rdx
	je	L35
	call	abort
L35:
	movl	$-10, %edi
	call	bar3
	movzbl	%al, %edx
	movq	l3(%rip), %rax
	cmpq	%rax, %rdx
	je	L36
	call	abort
L36:
	movl	$-10, %edi
	call	bar4
	movslq	%eax, %rdx
	movq	l4(%rip), %rax
	cmpq	%rax, %rdx
	je	L37
	call	abort
L37:
	movl	$-10, %edi
	call	bar5
	movswq	%ax, %rdx
	movq	l5(%rip), %rax
	cmpq	%rax, %rdx
	je	L38
	call	abort
L38:
	movl	$-10, %edi
	call	bar6
	movsbq	%al, %rdx
	movq	l6(%rip), %rax
	cmpq	%rax, %rdx
	je	L39
	call	abort
L39:
	movl	$0, %eax
	popq	%rbp
	ret
