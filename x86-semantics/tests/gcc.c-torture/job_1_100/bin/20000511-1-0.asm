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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$7, -4(%rbp)
	movl	$6, -8(%rbp)
	movl	$4, -12(%rbp)
	movl	$7, -16(%rbp)
	movl	$2, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L12
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	L13
L12:
	movl	$1, %eax
	jmp	L14
L13:
	movl	$0, %eax
L14:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -4(%rbp)
	je	L15
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	movl	-4(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	jne	L17
	cmpl	$0, -12(%rbp)
	je	L18
	cmpl	$0, -20(%rbp)
	je	L18
L17:
	movl	$1, %eax
	jmp	L19
L18:
	movl	$0, %eax
L19:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	je	L20
	cmpl	$0, -12(%rbp)
	je	L20
	cmpl	$0, -20(%rbp)
	je	L20
	movl	$1, %eax
	jmp	L21
L20:
	movl	$0, %eax
L21:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L22
	cmpl	$0, -20(%rbp)
	je	L22
	movl	$1, %eax
	jmp	L23
L22:
	movl	$0, %eax
L23:
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L24
	cmpl	$0, -20(%rbp)
	je	L24
	movl	$1, %eax
	jmp	L25
L24:
	movl	$0, %eax
L25:
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L26
	cmpl	$0, -20(%rbp)
	je	L26
	movl	$1, %ecx
	jmp	L27
L26:
	movl	$0, %ecx
L27:
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L28
	cmpl	$0, -20(%rbp)
	je	L28
	movl	$1, %eax
	jmp	L29
L28:
	movl	$0, %eax
L29:
	addl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L30
	cmpl	$0, -20(%rbp)
	je	L30
	movl	$1, %eax
	jmp	L31
L30:
	movl	$0, %eax
L31:
	subl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	jne	L32
	cmpl	$0, -12(%rbp)
	jne	L32
	cmpl	$0, -20(%rbp)
	je	L33
L32:
	movl	$1, %eax
	jmp	L34
L33:
	movl	$0, %eax
L34:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	je	L35
	cmpl	$0, -12(%rbp)
	jne	L36
	cmpl	$0, -20(%rbp)
	je	L35
L36:
	movl	$1, %eax
	jmp	L37
L35:
	movl	$0, %eax
L37:
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L38
	cmpl	$0, -20(%rbp)
	je	L39
L38:
	movl	$1, %eax
	jmp	L40
L39:
	movl	$0, %eax
L40:
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L41
	cmpl	$0, -20(%rbp)
	je	L42
L41:
	movl	$1, %eax
	jmp	L43
L42:
	movl	$0, %eax
L43:
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L44
	cmpl	$0, -20(%rbp)
	je	L45
L44:
	movl	$1, %ecx
	jmp	L46
L45:
	movl	$0, %ecx
L46:
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L47
	cmpl	$0, -20(%rbp)
	je	L48
L47:
	movl	$1, %eax
	jmp	L49
L48:
	movl	$0, %eax
L49:
	addl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L50
	cmpl	$0, -20(%rbp)
	je	L51
L50:
	movl	$1, %eax
	jmp	L52
L51:
	movl	$0, %eax
L52:
	subl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	movl	$0, %edi
	call	exit
