strchr:
LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
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
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
LFE0:
exit:
LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
LFE1:
abort:
LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
LFE2:
sigfpe:
LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, %edi
	call	exit
	.cfi_endproc
LFE3:
	.local	i
	.comm	i,4,4
	.local	j
	.comm	j,4,4
	.comm	k,4,4
.globl _start
_start:
LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$sigfpe, %esi
	movl	$8, %edi
	call	signal
	movl	i(%rip), %eax
	movl	j(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%eax, k(%rip)
	call	abort
	.cfi_endproc
LFE4:
