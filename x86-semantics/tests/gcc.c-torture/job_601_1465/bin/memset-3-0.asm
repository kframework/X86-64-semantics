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
	.local	u
	.comm	u,32,32
A:
	.byte	65
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	L11
	popq	%rbp
	ret
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$u, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L13
L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L14
	call	abort
L14:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L13:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L15
	movl	$0, -12(%rbp)
	jmp	L16
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	L17
	call	abort
L17:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L16:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L18
	movl	$0, -12(%rbp)
	jmp	L19
L21:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L20
	call	abort
L20:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L19:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L21
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L23
L27:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L24
	call	abort
L24:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L25
	call	abort
L25:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L26
	call	abort
L26:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	addl	$1, -4(%rbp)
L23:
	cmpl	$14, -4(%rbp)
	jle	L27
	movl	$0, -4(%rbp)
	jmp	L28
L32:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L29
	call	abort
L29:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L30
	call	abort
L30:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L31
	call	abort
L31:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	addl	$1, -4(%rbp)
L28:
	cmpl	$14, -4(%rbp)
	jle	L32
	movl	$0, -4(%rbp)
	jmp	L33
L37:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L34
	call	abort
L34:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L35
	call	abort
L35:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L36
	call	abort
L36:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	addl	$1, -4(%rbp)
L33:
	cmpl	$14, -4(%rbp)
	jle	L37
	movl	$0, -4(%rbp)
	jmp	L38
L42:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L39
	call	abort
L39:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L40
	call	abort
L40:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L41
	call	abort
L41:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	addl	$1, -4(%rbp)
L38:
	cmpl	$14, -4(%rbp)
	jle	L42
	movl	$0, -4(%rbp)
	jmp	L43
L47:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L44
	call	abort
L44:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L45
	call	abort
L45:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L46
	call	abort
L46:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	addl	$1, -4(%rbp)
L43:
	cmpl	$14, -4(%rbp)
	jle	L47
	movl	$0, -4(%rbp)
	jmp	L48
L52:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L49
	call	abort
L49:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L50
	call	abort
L50:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L51
	call	abort
L51:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	addl	$1, -4(%rbp)
L48:
	cmpl	$14, -4(%rbp)
	jle	L52
	movl	$0, -4(%rbp)
	jmp	L53
L57:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L54
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L55
	call	abort
L55:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L56
	call	abort
L56:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	addl	$1, -4(%rbp)
L53:
	cmpl	$14, -4(%rbp)
	jle	L57
	movl	$0, -4(%rbp)
	jmp	L58
L62:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L59
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L60
	call	abort
L60:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L61
	call	abort
L61:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	addl	$1, -4(%rbp)
L58:
	cmpl	$14, -4(%rbp)
	jle	L62
	movl	$0, %edi
	call	exit
