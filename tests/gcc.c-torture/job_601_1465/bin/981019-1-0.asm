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
ff:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	cmpl	$0, -12(%rbp)
	je	L12
	call	f1
	jmp	L13
L10:
	movl	$2, -4(%rbp)
L12:
	jmp	L13
L16:
	cmpl	$0, -12(%rbp)
	je	L13
	call	f2
	testl	%eax, %eax
	je	L13
	call	f1
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	call	f3
	testl	%eax, %eax
	je	L14
	call	f1
L14:
	call	f1
	jmp	L15
L13:
	call	f3
	testl	%eax, %eax
	jne	L16
L15:
	cmpl	$0, -12(%rbp)
	je	L17
	call	f1
L17:
	nop
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	ff
	movl	$0, %eax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	x.2273(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, x.2273(%rip)
	movl	x.2273(%rip), %eax
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.local	x.2273
	.comm	x.2273,4,4
