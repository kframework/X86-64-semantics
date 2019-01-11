rl_character_len:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$97, -4(%rbp)
	jne	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	$2, %eax
L3:
	popq	%rbp
	ret
	.globl	_start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$rl_character_len, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movl	$98, %edi
	call	%rax
	leave
	ret

