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
expectedwidth:
	.long	50
global_vramPtr:
	.quad	40960
global_bounds:
	.value	100
	.value	150
	.value	100
	.value	150
global_saveRect:
	.value	75
	.value	175
	.value	75
	.value	175
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	global_saveRect(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	global_bounds(%rip), %rax
	movq	%rax, -48(%rbp)
	movzwl	-32(%rbp), %edx
	movzwl	-48(%rbp), %eax
	cmpw	%ax, %dx
	jge	L10
	movzwl	-48(%rbp), %eax
	movw	%ax, -32(%rbp)
L10:
	movzwl	-30(%rbp), %edx
	movzwl	-46(%rbp), %eax
	cmpw	%ax, %dx
	jle	L11
	movzwl	-46(%rbp), %eax
	movw	%ax, -30(%rbp)
L11:
	movq	global_vramPtr(%rip), %rax
	movzwl	-28(%rbp), %edx
	movswl	%dx, %ecx
	movzwl	-44(%rbp), %edx
	movswl	%dx, %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movzwl	-30(%rbp), %eax
	movswl	%ax, %edx
	movzwl	-32(%rbp), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	expectedwidth(%rip), %eax
	cmpl	%eax, -12(%rbp)
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
