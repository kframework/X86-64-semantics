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
	.comm	count,4,4
a1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	count(%rip), %eax
	addl	$1, %eax
	movl	%eax, count(%rip)
	popq	%rbp
	ret
b:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L11
	movl	$0, %eax
	call	a1
L11:
	salw	-4(%rbp)
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L12
	movl	$0, %eax
	call	a1
L12:
	salw	-4(%rbp)
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L10
	movl	$0, %eax
	call	a1
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, count(%rip)
	movl	$0, %edi
	call	b
	movl	count(%rip), %eax
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, count(%rip)
	movl	$32768, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movl	$0, count(%rip)
	movl	$16384, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$1, %eax
	je	L17
	call	abort
L17:
	movl	$0, count(%rip)
	movl	$8192, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$1, %eax
	je	L18
	call	abort
L18:
	movl	$0, count(%rip)
	movl	$49152, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$2, %eax
	je	L19
	call	abort
L19:
	movl	$0, count(%rip)
	movl	$40960, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$2, %eax
	je	L20
	call	abort
L20:
	movl	$0, count(%rip)
	movl	$24576, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$2, %eax
	je	L21
	call	abort
L21:
	movl	$0, count(%rip)
	movl	$57344, %edi
	call	b
	movl	count(%rip), %eax
	cmpl	$3, %eax
	je	L22
	call	abort
L22:
	movl	$0, %edi
	call	exit
