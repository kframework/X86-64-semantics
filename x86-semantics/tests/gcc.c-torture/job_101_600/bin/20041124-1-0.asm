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
gs:
	.value	100
	.value	200
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	gs(%rip), %edx
	movzwl	gs+2(%rip), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movzwl	%cx, %ecx
	movw	$0, %ax
	orl	%ecx, %eax
	movzwl	%dx, %edx
	sall	$16, %edx
	movzwl	%ax, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movl	%eax, %edx
	shrl	$16, %eax
	movl	%edx, %esi
	movl	%eax, %edx
	movzwl	gs(%rip), %ecx
	movzwl	gs+2(%rip), %eax
	cmpw	%cx, %si
	setne	%cl
	cmpw	%ax, %dx
	setne	%al
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
