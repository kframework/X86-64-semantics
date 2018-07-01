LCOLDB0:
LHOTB0:
	.p2align 4,,15
strchr:
	movzbl	(%rdi), %edx
	cmpb	%sil, %dl
	je	L2
	addq	$1, %rdi
	xorl	%eax, %eax
	testb	%dl, %dl
	cmovne	%rdi, %rax
	ret
	.p2align 4,,10
	.p2align 3
L2:
	ret
LCOLDE0:
LHOTE0:
LCOLDB1:
LHOTB1:
	.p2align 4,,15
strlen:
	xorl	%eax, %eax
	cmpb	$0, (%rdi)
	je	L11
	.p2align 4,,10
	.p2align 3
L10:
	addq	$1, %rax
	cmpb	$0, (%rdi,%rax)
	jne	L10
	ret
L11:
	ret
LCOLDE1:
LHOTE1:
LCOLDB2:
LHOTB2:
	.p2align 4,,15
strcpy:
	movq	%rdi, %rax
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
L15:
	addq	$1, %rsi
	movzbl	-1(%rsi), %ecx
	addq	$1, %rdx
	movb	%cl, -1(%rdx)
	testb	%cl, %cl
	jne	L15
	ret
LCOLDE2:
LHOTE2:
LCOLDB3:
LHOTB3:
	.p2align 4,,15
memcmp:
	leaq	-1(%rdx), %r8
	testq	%rdx, %rdx
	je	L22
	movzbl	(%rdi), %edx
	movzbl	(%rsi), %ecx
	cmpb	%cl, %dl
	jne	L19
	xorl	%eax, %eax
	jmp	L20
	.p2align 4,,10
	.p2align 3
L21:
	movzbl	1(%rdi,%rax), %edx
	addq	$1, %rax
	movzbl	(%rsi,%rax), %ecx
	cmpb	%cl, %dl
	jne	L19
L20:
	cmpq	%r8, %rax
	jne	L21
L22:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L19:
	movzbl	%dl, %eax
	subl	%ecx, %eax
	ret
LCOLDE3:
LHOTE3:
LCOLDB4:
LHOTB4:
	.p2align 4,,15
exit:
	movq $-1, %rax
	jmp %rax
	
	ret
LCOLDE4:
LHOTE4:
LCOLDB5:
LHOTB5:
	.p2align 4,,15
abort:
	movq $-1, %rax
	jmp %rax
	
	ret
LCOLDE5:
LHOTE5:
LCOLDB6:
LHOTB6:
	.p2align 4,,15
memset:
	testq	%rdx, %rdx
	je	L33
	subq	$8, %rsp
	movzbl	%sil, %esi
	call	memset
	addq	$8, %rsp
	ret
	.p2align 4,,10
	.p2align 3
L33:
	movq	%rdi, %rax
	ret
LCOLDE6:
LHOTE6:
LCOLDB8:
LHOTB8:
	.p2align 4,,15
f:
	fldt	8(%rsp)
	fchs
	fld	%st(0)
	cmpl	$1, %edi
	jne	L35
	fadd	%st(1), %st
L35:
	fld	%st(0)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fld	%st(1)
	fmul	%st(1), %st
	fsubrp	%st, %st(1)
	fld	%st(1)
	fmul	%st(1), %st
	fsubrp	%st, %st(1)
	fld	%st(1)
	fmul	%st(1), %st
	fsubrp	%st, %st(1)
	fmul	%st, %st(1)
	fsubp	%st, %st(1)
	ret
LCOLDE8:
LHOTE8:
LCOLDB9:
LHOTB9:
	.p2align 4,,15
_start:
	xorl	%edi, %edi
	call	exit
LCOLDE9:
LHOTE9:
