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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	yylex
	movl	%eax, -4(%rbp)
	movl	$0, %edi
	call	exit
yylex:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
L14:
	call	input
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ISALNUM
	testl	%eax, %eax
	je	L11
	movl	-4(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	obstack_1grow
	jmp	L12
L11:
	cmpl	$95, -4(%rbp)
	je	L12
	jmp	L16
L12:
	jmp	L14
L16:
	movl	-4(%rbp), %eax
	leave
	ret
input:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
ISALNUM:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$64, -4(%rbp)
	jle	L20
	cmpl	$90, -4(%rbp)
	jle	L21
L20:
	cmpl	$96, -4(%rbp)
	jle	L22
	cmpl	$122, -4(%rbp)
	jle	L21
L22:
	cmpl	$47, -4(%rbp)
	jle	L23
	cmpl	$48, -4(%rbp)
	jg	L23
L21:
	movl	$1, %eax
	jmp	L24
L23:
	movl	$0, %eax
L24:
	popq	%rbp
	ret
obstack_1grow:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	ret
