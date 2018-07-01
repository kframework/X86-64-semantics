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
vec_assert_fail:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
VEC_deferred_access_base_last:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L11
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L12
L11:
	call	vec_assert_fail
L12:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	leave
	ret
VEC_deferred_access_base_pop:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L15
	call	vec_assert_fail
L15:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leave
	ret
perform_access_checks:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	abort
	.local	deferred_access_stack
	.comm	deferred_access_stack,8,8
	.local	deferred_access_no_check
	.comm	deferred_access_no_check,4,4
gt_pch_rs_gt_cp_semantics_h:
	.quad	deferred_access_no_check
pop_to_parent_deferring_access_checks:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	deferred_access_no_check(%rip), %eax
	testl	%eax, %eax
	je	L18
	movl	deferred_access_no_check(%rip), %eax
	subl	$1, %eax
	movl	%eax, deferred_access_no_check(%rip)
	jmp	L17
L18:
	movq	deferred_access_stack(%rip), %rax
	testq	%rax, %rax
	je	L20
	movq	deferred_access_stack(%rip), %rax
	jmp	L21
L20:
	movl	$0, %eax
L21:
	movq	%rax, %rdi
	call	VEC_deferred_access_base_last
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	deferred_access_stack(%rip), %rax
	testq	%rax, %rax
	je	L22
	movq	deferred_access_stack(%rip), %rax
	jmp	L23
L22:
	movl	$0, %eax
L23:
	movq	%rax, %rdi
	call	VEC_deferred_access_base_pop
	movq	deferred_access_stack(%rip), %rax
	testq	%rax, %rax
	je	L24
	movq	deferred_access_stack(%rip), %rax
	jmp	L25
L24:
	movl	$0, %eax
L25:
	movq	%rax, %rdi
	call	VEC_deferred_access_base_last
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	perform_access_checks
L17:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$152, %edi
	call	malloc
	movq	%rax, deferred_access_stack(%rip)
	movq	deferred_access_stack(%rip), %rax
	movl	$2, (%rax)
	movq	deferred_access_stack(%rip), %rax
	movl	$1, 16(%rax)
	call	pop_to_parent_deferring_access_checks
	movl	$0, %eax
	popq	%rbp
	ret
