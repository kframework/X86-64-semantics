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
ll_to_ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	fildq	-8(%rbp)
	popq	%rbp
	ret
ld_to_ll:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$10, %edi
	call	ll_to_ld
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	jp	L19
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L18
	jmp	L17
L19:
	fstp	%st(0)
L17:
	call	abort
L18:
	movabsq	$-6917529027641081856, %rax
	movl	$16386, %edx
	pushq	%rdx
	pushq	%rax
	call	ld_to_ll
	addq	$16, %rsp
	cmpq	$10, %rax
	je	L16
	call	abort
L16:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	2684354560
	.long	16386
	.long	0
