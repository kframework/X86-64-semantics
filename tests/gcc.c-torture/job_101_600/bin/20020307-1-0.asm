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
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$7, %eax
	cmpq	$5, %rax
	jbe	L20
	call	abort
L20:
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$15, %eax
	cmpq	$9, %rax
	jbe	L22
	call	abort
L22:
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$31, %eax
	cmpq	$17, %rax
	jbe	L24
	call	abort
L24:
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$63, %eax
	cmpq	$33, %rax
	jbe	L26
	call	abort
L26:
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$127, %eax
	cmpq	$65, %rax
	jbe	L28
	call	abort
L28:
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	%al, %eax
	cmpq	$129, %rax
	jbe	L30
	call	abort
L30:
	leave
	ret
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$511, %eax
	cmpq	$257, %rax
	jbe	L32
	call	abort
L32:
	leave
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1023, %eax
	cmpq	$513, %rax
	jbe	L34
	call	abort
L34:
	leave
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2047, %eax
	cmpq	$1025, %rax
	jbe	L36
	call	abort
L36:
	leave
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$4095, %eax
	cmpq	$2049, %rax
	jbe	L38
	call	abort
L38:
	leave
	ret
f13:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$8191, %eax
	cmpq	$4097, %rax
	jbe	L40
	call	abort
L40:
	leave
	ret
f14:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$16383, %eax
	cmpq	$8193, %rax
	jbe	L42
	call	abort
L42:
	leave
	ret
f15:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$32767, %eax
	cmpq	$16385, %rax
	jbe	L44
	call	abort
L44:
	leave
	ret
f16:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	%ax, %eax
	cmpq	$32769, %rax
	jbe	L46
	call	abort
L46:
	leave
	ret
f17:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$131071, %eax
	cmpq	$65537, %rax
	jbe	L48
	call	abort
L48:
	leave
	ret
f18:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$262143, %eax
	cmpq	$131073, %rax
	jbe	L50
	call	abort
L50:
	leave
	ret
f19:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$524287, %eax
	cmpq	$262145, %rax
	jbe	L52
	call	abort
L52:
	leave
	ret
f20:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1048575, %eax
	cmpq	$524289, %rax
	jbe	L54
	call	abort
L54:
	leave
	ret
f21:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2097151, %eax
	cmpq	$1048577, %rax
	jbe	L56
	call	abort
L56:
	leave
	ret
f22:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$4194303, %eax
	cmpq	$2097153, %rax
	jbe	L58
	call	abort
L58:
	leave
	ret
f23:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
	cmpq	$4194305, %rax
	jbe	L60
	call	abort
L60:
	leave
	ret
f24:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$16777215, %eax
	cmpq	$8388609, %rax
	jbe	L62
	call	abort
L62:
	leave
	ret
f25:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$33554431, %eax
	cmpq	$16777217, %rax
	jbe	L64
	call	abort
L64:
	leave
	ret
f26:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$67108863, %eax
	cmpq	$33554433, %rax
	jbe	L66
	call	abort
L66:
	leave
	ret
f27:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$134217727, %eax
	cmpq	$67108865, %rax
	jbe	L68
	call	abort
L68:
	leave
	ret
f28:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$268435455, %eax
	cmpq	$134217729, %rax
	jbe	L70
	call	abort
L70:
	leave
	ret
f29:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$536870911, %eax
	cmpq	$268435457, %rax
	jbe	L72
	call	abort
L72:
	leave
	ret
f30:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1073741823, %eax
	cmpq	$536870913, %rax
	jbe	L74
	call	abort
L74:
	leave
	ret
f31:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	cmpq	$1073741825, %rax
	jbe	L76
	call	abort
L76:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	f3
	movl	$0, %edi
	call	f4
	movl	$0, %edi
	call	f5
	movl	$0, %edi
	call	f6
	movl	$0, %edi
	call	f7
	movl	$0, %edi
	call	f8
	movl	$0, %edi
	call	f9
	movl	$0, %edi
	call	f10
	movl	$0, %edi
	call	f11
	movl	$0, %edi
	call	f12
	movl	$0, %edi
	call	f13
	movl	$0, %edi
	call	f14
	movl	$0, %edi
	call	f15
	movl	$0, %edi
	call	f16
	movl	$0, %edi
	call	f17
	movl	$0, %edi
	call	f18
	movl	$0, %edi
	call	f19
	movl	$0, %edi
	call	f20
	movl	$0, %edi
	call	f21
	movl	$0, %edi
	call	f22
	movl	$0, %edi
	call	f23
	movl	$0, %edi
	call	f24
	movl	$0, %edi
	call	f25
	movl	$0, %edi
	call	f26
	movl	$0, %edi
	call	f27
	movl	$0, %edi
	call	f28
	movl	$0, %edi
	call	f29
	movl	$0, %edi
	call	f30
	movl	$0, %edi
	call	f31
	movl	$0, %edi
	call	exit
