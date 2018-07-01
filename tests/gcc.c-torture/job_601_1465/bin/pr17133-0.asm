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
	.bss
foo:
	.zero	4
bar:
	.zero	8
baz:
	.long	100
pure_alloc:
	pushq	%rbp
	movq	%rsp, %rbp
L12:
	movq	bar(%rip), %rdx
	movl	foo(%rip), %eax
	cltq
	addq	%rdx, %rax
	movl	%eax, %eax
	andl	$4294967294, %eax
	movq	%rax, -8(%rbp)
	movl	foo(%rip), %eax
	addl	$2, %eax
	movl	%eax, foo(%rip)
	movl	foo(%rip), %eax
	movl	%eax, %edx
	movl	baz(%rip), %eax
	cmpl	%eax, %edx
	jae	L10
	movq	-8(%rbp), %rax
	jmp	L13
L10:
	movl	$0, foo(%rip)
	jmp	L12
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	pure_alloc
	movl	foo(%rip), %eax
	testl	%eax, %eax
	jne	L15
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
