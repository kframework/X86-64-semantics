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
LC0:
	.string	"int"
LC1:
	.string	"char"
LC2:
	.string	"short"
LC3:
	.string	"long"
LC4:
	.string	"unsigned char"
LC5:
	.string	"signed char"
LC6:
	.string	"unsigned short"
LC7:
	.string	"unsigned int"
LC8:
	.string	"unsigned"
LC9:
	.string	"unsigned long"
LC10:
	.string	"void"
LC11:
	.string	"float"
LC12:
	.string	"double"
LC13:
	.string	"long double"
LC14:
	.string	"integer"
LC15:
	.string	"boolean"
LC16:
	.string	"short real"
LC17:
	.string	"real"
LC18:
	.string	"stringptr"
LC19:
	.string	"character"
LC20:
	.string	"logical*1"
LC21:
	.string	"logical*2"
LC22:
	.string	"logical*4"
LC23:
	.string	"logical"
LC24:
	.string	"complex"
LC25:
	.string	"double complex"
LC26:
	.string	"integer*1"
LC27:
	.string	"integer*2"
LC28:
	.string	"integer*4"
LC29:
	.string	"wchar"
LC30:
	.string	"long long"
LC31:
	.string	"unsigned long long"
LC32:
	.string	"logical*8"
LC33:
	.string	"integer*8"
stab_xcoff_builtin_type:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	L10
	cmpl	$-34, -20(%rbp)
	jge	L11
L10:
	movl	$0, %eax
	jmp	L12
L11:
	movl	-20(%rbp), %eax
	negl	%eax
	cmpl	$34, %eax
	ja	L13
	movl	%eax, %eax
	movq	L15(,%rax,8), %rax
	jmp	*%rax
L15:
	.quad	L13
	.quad	L14
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
	.quad	L46
	.quad	L47
	.quad	L48
L14:
	movq	$LC0, -8(%rbp)
	jmp	L13
L16:
	movq	$LC1, -8(%rbp)
L17:
	movq	$LC2, -8(%rbp)
	jmp	L13
L18:
	movq	$LC3, -8(%rbp)
L19:
	movq	$LC4, -8(%rbp)
L20:
	movq	$LC5, -8(%rbp)
L21:
	movq	$LC6, -8(%rbp)
L22:
	movq	$LC7, -8(%rbp)
L23:
	movq	$LC8, -8(%rbp)
L24:
	movq	$LC9, -8(%rbp)
L25:
	movq	$LC10, -8(%rbp)
L26:
	movq	$LC11, -8(%rbp)
L27:
	movq	$LC12, -8(%rbp)
L28:
	movq	$LC13, -8(%rbp)
L29:
	movq	$LC14, -8(%rbp)
L30:
	movq	$LC15, -8(%rbp)
L31:
	movq	$LC16, -8(%rbp)
L32:
	movq	$LC17, -8(%rbp)
L33:
	movq	$LC18, -8(%rbp)
L34:
	movq	$LC19, -8(%rbp)
L35:
	movq	$LC20, -8(%rbp)
L36:
	movq	$LC21, -8(%rbp)
L37:
	movq	$LC22, -8(%rbp)
L38:
	movq	$LC23, -8(%rbp)
L39:
	movq	$LC24, -8(%rbp)
L40:
	movq	$LC25, -8(%rbp)
L41:
	movq	$LC26, -8(%rbp)
L42:
	movq	$LC27, -8(%rbp)
L43:
	movq	$LC28, -8(%rbp)
L44:
	movq	$LC29, -8(%rbp)
L45:
	movq	$LC30, -8(%rbp)
L46:
	movq	$LC31, -8(%rbp)
L47:
	movq	$LC32, -8(%rbp)
L48:
	movq	$LC33, -8(%rbp)
L13:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
L12:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %edi
	call	stab_xcoff_builtin_type
	testl	%eax, %eax
	je	L50
	call	abort
L50:
	movl	$-1, %edi
	call	stab_xcoff_builtin_type
	cmpl	$105, %eax
	je	L51
	call	abort
L51:
	movl	$-2, %edi
	call	stab_xcoff_builtin_type
	cmpl	$115, %eax
	je	L52
	call	abort
L52:
	movl	$-3, %edi
	call	stab_xcoff_builtin_type
	cmpl	$115, %eax
	je	L53
	call	abort
L53:
	movl	$-4, -4(%rbp)
	jmp	L54
L56:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stab_xcoff_builtin_type
	cmpl	$105, %eax
	je	L55
	call	abort
L55:
	subl	$1, -4(%rbp)
L54:
	cmpl	$-34, -4(%rbp)
	jge	L56
	movl	$-35, %edi
	call	stab_xcoff_builtin_type
	testl	%eax, %eax
	je	L57
	call	abort
L57:
	movl	$0, %eax
	leave
	ret
