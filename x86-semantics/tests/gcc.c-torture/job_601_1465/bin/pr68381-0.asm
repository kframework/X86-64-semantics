strchr:
	movzbl	(%rdi), %edx
	cmpb	%sil, %dl
	je	L2
	movl	$0, %eax
	addq	$1, %rdi
	testb	%dl, %dl
	cmovne	%rdi, %rax
	ret
L2:
	ret
strlen:
	cmpb	$0, (%rdi)
	je	L10
	movl	$0, %eax
L9:
	addq	$1, %rax
	cmpb	$0, (%rdi,%rax)
	jne	L9
	ret
L10:
	movl	$0, %eax
	ret
strcpy:
	movq	%rdi, %rax
	movq	%rdi, %rdx
L14:
	addq	$1, %rdx
	addq	$1, %rsi
	movzbl	-1(%rsi), %ecx
	movb	%cl, -1(%rdx)
	testb	%cl, %cl
	jne	L14
	ret
memcmp:
	leaq	-1(%rdx), %r8
	testq	%rdx, %rdx
	je	L21
	movzbl	(%rdi), %edx
	movzbl	(%rsi), %ecx
	cmpb	%cl, %dl
	jne	L18
	movl	$0, %eax
	jmp	L19
L20:
	movzbl	1(%rdi,%rax), %edx
	addq	$1, %rax
	movzbl	(%rsi,%rax), %ecx
	cmpb	%cl, %dl
	je	L19
L18:
	movzbl	%dl, %eax
	movzbl	%cl, %ecx
	subl	%ecx, %eax
	ret
L19:
	cmpq	%r8, %rax
	jne	L20
	movl	$0, %eax
	ret
L21:
	movl	$0, %eax
	ret
exit:
	movq $-1, %rax
	jmp %rax
	
	ret
abort:
	movq $-1, %rax
	jmp %rax
	
	ret
memset:
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	L30
	addq	%rdi, %rdx
	movq	%rdi, %rcx
L28:
	addq	$1, %rcx
	movb	%sil, -1(%rcx)
	cmpq	%rdx, %rcx
	jne	L28
L30:
	ret
foo:
	subq	$24, %rsp
	movzwl	%si, %esi
	movzwl	%di, %edi
	leaq	12(%rsp), %rdx
	movl	$0, %eax
	call	__builtin_mul_overflow
	testl	%eax, %eax
	je	L33
	call	abort
L33:
	movl	12(%rsp), %eax
	addq	$24, %rsp
	ret
_start:
	subq	$8, %rsp
	movl	$2, %esi
	movl	$1, %edi
	call	foo
	cmpl	$2, %eax
	je	L37
	call	abort
L37:
	movl	$0, %eax
	addq	$8, %rsp
	ret
