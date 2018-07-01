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
	.comm	arr,40,32
good_const:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetcht2	(%rax)
	movq	-8(%rbp), %rax
	prefetcht1	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetcht2	(%rax)
	movq	-8(%rbp), %rax
	prefetcht2	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	popq	%rbp
	ret
good_enum:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetcht2	(%rax)
	movq	-8(%rbp), %rax
	prefetcht1	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetcht2	(%rax)
	movq	-8(%rbp), %rax
	prefetcht1	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	popq	%rbp
	ret
good_expr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetchnta	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	popq	%rbp
	ret
good_vararg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	movq	-8(%rbp), %rax
	prefetcht0	(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$arr, %edi
	call	good_const
	movl	$arr, %edi
	call	good_enum
	movl	$arr, %edi
	call	good_expr
	movl	$arr, %edi
	call	good_vararg
	movl	$0, %edi
	call	exit
