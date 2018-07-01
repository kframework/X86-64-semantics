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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, -4(%rbp)
	movsbl	-20(%rbp), %eax
	addl	$62, %eax
	cmpl	$160, %eax
	ja	L10
	movl	%eax, %eax
	movq	L12(,%rax,8), %rax
	jmp	*%rax
L12:
	.quad	L11
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L13
	.quad	L14
	.quad	L15
	.quad	L16
	.quad	L17
	.quad	L18
	.quad	L19
	.quad	L20
	.quad	L21
	.quad	L22
	.quad	L23
	.quad	L24
	.quad	L25
	.quad	L26
	.quad	L27
	.quad	L28
	.quad	L29
	.quad	L30
	.quad	L31
	.quad	L32
	.quad	L33
	.quad	L34
	.quad	L35
	.quad	L36
	.quad	L37
	.quad	L38
	.quad	L39
	.quad	L40
	.quad	L41
	.quad	L42
	.quad	L43
	.quad	L44
	.quad	L45
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L10
	.quad	L46
L13:
	movl	$1, -4(%rbp)
	jmp	L10
L14:
	movl	$7, -4(%rbp)
	jmp	L10
L15:
	movl	$2, -4(%rbp)
	jmp	L10
L16:
	movl	$19, -4(%rbp)
	jmp	L10
L17:
	movl	$5, -4(%rbp)
	jmp	L10
L18:
	movl	$17, -4(%rbp)
	jmp	L10
L19:
	movl	$31, -4(%rbp)
	jmp	L10
L20:
	movl	$8, -4(%rbp)
	jmp	L10
L21:
	movl	$28, -4(%rbp)
	jmp	L10
L22:
	movl	$16, -4(%rbp)
	jmp	L10
L23:
	movl	$31, -4(%rbp)
	jmp	L10
L24:
	movl	$12, -4(%rbp)
	jmp	L10
L25:
	movl	$15, -4(%rbp)
	jmp	L10
L26:
	movl	$111, -4(%rbp)
	jmp	L10
L27:
	movl	$17, -4(%rbp)
	jmp	L10
L28:
	movl	$10, -4(%rbp)
	jmp	L10
L29:
	movl	$31, -4(%rbp)
	jmp	L10
L30:
	movl	$7, -4(%rbp)
	jmp	L10
L31:
	movl	$2, -4(%rbp)
	jmp	L10
L32:
	movl	$19, -4(%rbp)
	jmp	L10
L33:
	movl	$5, -4(%rbp)
	jmp	L10
L34:
	movl	$107, -4(%rbp)
	jmp	L10
L35:
	movl	$31, -4(%rbp)
	jmp	L10
L36:
	movl	$8, -4(%rbp)
	jmp	L10
L37:
	movl	$28, -4(%rbp)
	jmp	L10
L38:
	movl	$106, -4(%rbp)
	jmp	L10
L39:
	movl	$31, -4(%rbp)
	jmp	L10
L40:
	movl	$102, -4(%rbp)
	jmp	L10
L41:
	movl	$105, -4(%rbp)
	jmp	L10
L42:
	movl	$111, -4(%rbp)
	jmp	L10
L43:
	movl	$17, -4(%rbp)
	jmp	L10
L44:
	movl	$10, -4(%rbp)
	jmp	L10
L45:
	movl	$31, -4(%rbp)
	jmp	L10
L46:
	movl	$18, -4(%rbp)
	jmp	L10
L11:
	movl	$19, -4(%rbp)
	nop
L10:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$98, %edi
	call	foo
	cmpl	$18, %eax
	jne	L49
	movl	$97, %edi
	call	foo
	testl	%eax, %eax
	jne	L49
	movl	$99, %edi
	call	foo
	testl	%eax, %eax
	je	L50
L49:
	call	abort
L50:
	movl	$-62, %edi
	call	foo
	cmpl	$19, %eax
	jne	L51
	movl	$-63, %edi
	call	foo
	testl	%eax, %eax
	jne	L51
	movl	$-61, %edi
	call	foo
	testl	%eax, %eax
	je	L52
L51:
	call	abort
L52:
	movl	$28, %edi
	call	foo
	cmpl	$105, %eax
	jne	L53
	movl	$27, %edi
	call	foo
	cmpl	$102, %eax
	jne	L53
	movl	$29, %edi
	call	foo
	cmpl	$111, %eax
	je	L54
L53:
	call	abort
L54:
	movl	$0, %eax
	popq	%rbp
	ret
