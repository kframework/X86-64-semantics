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
	.comm	s,12,2
	.comm	arr,100,64
ptr:
	.quad	arr
idx:
	.long	3
arg_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
arg_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
glob_ptr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
glob_idx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rdx
	movl	idx(%rip), %eax
	cltq
	addq	%rdx, %rax
	prefetchnta	(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	prefetchnta	s+2(%rip)
	prefetchnta	s+5(%rip)
	movl	$s+5, %edi
	call	arg_ptr
	movq	ptr(%rip), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	call	arg_ptr
	movq	ptr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	arg_idx
	movq	ptr(%rip), %rax
	addq	$1, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	arg_idx
	movl	$3, idx(%rip)
	call	glob_ptr
	call	glob_idx
	movq	ptr(%rip), %rax
	addq	$1, %rax
	movq	%rax, ptr(%rip)
	movl	$2, idx(%rip)
	call	glob_ptr
	call	glob_idx
	movl	$0, %edi
	call	exit
