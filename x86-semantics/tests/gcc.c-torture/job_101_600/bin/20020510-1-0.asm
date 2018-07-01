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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
testc:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	je	L21
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	js	L21
	cmpl	$0, -8(%rbp)
	jne	L22
	call	abort
L22:
	jmp	L20
L21:
	cmpl	$0, -8(%rbp)
	je	L20
	call	abort
L20:
	leave
	ret
tests:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movw	%ax, -4(%rbp)
	cmpw	$0, -4(%rbp)
	je	L25
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	js	L25
	cmpl	$0, -8(%rbp)
	jne	L26
	call	abort
L26:
	jmp	L24
L25:
	cmpl	$0, -8(%rbp)
	je	L24
	call	abort
L24:
	leave
	ret
testi:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	je	L29
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	js	L29
	cmpl	$0, -8(%rbp)
	jne	L30
	call	abort
L30:
	jmp	L28
L29:
	cmpl	$0, -8(%rbp)
	je	L28
	call	abort
L28:
	leave
	ret
mytestl:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	L33
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L33
	cmpl	$0, -12(%rbp)
	jne	L34
	call	abort
L34:
	jmp	L32
L33:
	cmpl	$0, -12(%rbp)
	je	L32
	call	abort
L32:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$0, %edi
	call	testc
	movl	$1, %esi
	movl	$1, %edi
	call	testc
	movl	$1, %esi
	movl	$127, %edi
	call	testc
	movl	$0, %esi
	movl	$128, %edi
	call	testc
	movl	$0, %esi
	movl	$255, %edi
	call	testc
	movl	$0, %esi
	movl	$0, %edi
	call	tests
	movl	$1, %esi
	movl	$1, %edi
	call	tests
	movl	$1, %esi
	movl	$32767, %edi
	call	tests
	movl	$0, %esi
	movl	$32768, %edi
	call	tests
	movl	$0, %esi
	movl	$65535, %edi
	call	tests
	movl	$0, %esi
	movl	$0, %edi
	call	testi
	movl	$1, %esi
	movl	$1, %edi
	call	testi
	movl	$1, %esi
	movl	$2147483647, %edi
	call	testi
	movl	$0, %esi
	movl	$-2147483648, %edi
	call	testi
	movl	$0, %esi
	movl	$-1, %edi
	call	testi
	movl	$0, %esi
	movl	$0, %edi
	call	mytestl
	movl	$1, %esi
	movl	$1, %edi
	call	mytestl
	movl	$1, %esi
	movabsq	$9223372036854775807, %rdi
	call	mytestl
	movl	$0, %esi
	movabsq	$-9223372036854775808, %rdi
	call	mytestl
	movl	$0, %esi
	movq	$-1, %rdi
	call	mytestl
	movl	$0, %eax
	popq	%rbp
	ret
