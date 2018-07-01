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
	.comm	errflag,4,4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, errflag(%rip)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	js	L10
	cmpq	$0, -32(%rbp)
	js	L11
	cmpq	$0, -8(%rbp)
	js	L12
L11:
	movq	-8(%rbp), %rax
	jmp	L13
L10:
	cmpq	$0, -32(%rbp)
	jg	L14
	cmpq	$0, -8(%rbp)
	jns	L12
L14:
	movq	-8(%rbp), %rax
	jmp	L13
L12:
	movl	$1, errflag(%rip)
	movl	$0, %eax
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$0, %edi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	je	L16
	call	abort
L16:
	movq	$-1, %rsi
	movl	$1, %edi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movl	$1, %esi
	movq	$-1, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	je	L18
	call	abort
L18:
	movabsq	$-9223372036854775808, %rsi
	movabsq	$-9223372036854775808, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	jne	L19
	call	abort
L19:
	movq	$-1, %rsi
	movabsq	$-9223372036854775808, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	jne	L20
	call	abort
L20:
	movabsq	$9223372036854775807, %rsi
	movabsq	$9223372036854775807, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	jne	L21
	call	abort
L21:
	movl	$1, %esi
	movabsq	$9223372036854775807, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	jne	L22
	call	abort
L22:
	movabsq	$-9223372036854775808, %rsi
	movabsq	$9223372036854775807, %rdi
	call	f
	movl	errflag(%rip), %eax
	testl	%eax, %eax
	je	L23
	call	abort
L23:
	movl	$0, %edi
	call	exit
