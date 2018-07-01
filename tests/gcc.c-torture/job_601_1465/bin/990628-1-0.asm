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
	.comm	sqlca,8,8
	.comm	data_ptr,8,8
	.comm	data_tmp,404,64
num_records:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
fetch:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$404, %edx
	movl	$85, %esi
	movl	$data_tmp, %edi
	call	memset
	movl	fetch_count.2828(%rip), %eax
	addl	$1, %eax
	movl	%eax, fetch_count.2828(%rip)
	movl	fetch_count.2828(%rip), %eax
	cmpl	$1, %eax
	jle	L12
	movl	$100, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movq	%rax, sqlca(%rip)
	popq	%rbp
	ret
load_data:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	call	num_records
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	imulq	$404, %rax, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, data_ptr(%rip)
	movl	-12(%rbp), %eax
	cltq
	imulq	$404, %rax, %rdx
	movq	data_ptr(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, %eax
	call	fetch
	movq	data_ptr(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	L15
L16:
	movq	-8(%rbp), %rax
	leaq	404(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	$data_tmp, %ecx
	movl	$404, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, %eax
	call	fetch
L15:
	movq	sqlca(%rip), %rax
	testq	%rax, %rax
	je	L16
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	load_data
	movq	data_ptr(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1431655765, %eax
	je	L18
	call	abort
L18:
	movl	$0, %edi
	call	exit
	.local	fetch_count.2828
	.comm	fetch_count.2828,4,4
